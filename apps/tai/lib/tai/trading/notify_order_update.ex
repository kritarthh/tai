defmodule Tai.Trading.NotifyOrderUpdate do
  alias Tai.Events
  alias Tai.Trading.Order

  @type order :: Order.t()

  @spec notify!(order | nil, order) :: :ok
  def notify!(previous, %Order{} = updated) do
    :ok = broadcast(updated)
    callback(previous, updated)
    :ok
  end

  defp broadcast(order) do
    %Events.OrderUpdated{
      client_id: order.client_id,
      venue_id: order.venue_id,
      account_id: order.account_id,
      venue_order_id: order.venue_order_id,
      product_symbol: order.product_symbol,
      product_type: order.product_type,
      side: order.side,
      type: order.type,
      time_in_force: order.time_in_force,
      status: order.status,
      price: order.price,
      qty: order.qty,
      leaves_qty: order.leaves_qty,
      cumulative_qty: order.cumulative_qty,
      error_reason: order.error_reason,
      enqueued_at: order.enqueued_at,
      last_received_at: order.last_received_at,
      last_venue_timestamp: order.last_venue_timestamp,
      updated_at: order.updated_at,
      close: order.close
    }
    |> Events.info()
  end

  defp callback(_, %Order{order_updated_callback: nil}), do: :ok

  defp callback(
         previous,
         %Order{order_updated_callback: {callback, data}} = updated
       )
       when is_atom(callback) or is_pid(callback) do
    send(callback, {:order_updated, previous, updated, data})
  end

  defp callback(
         previous,
         %Order{order_updated_callback: callback} = updated
       )
       when is_atom(callback) or is_pid(callback) do
    send(callback, {:order_updated, previous, updated})
  end

  defp callback(
         previous,
         %Order{order_updated_callback: callback} = updated
       )
       when is_function(callback) do
    callback.(previous, updated)
  end
end