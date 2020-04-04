defmodule Tai.IEx.Commands.Venues do
  import Tai.IEx.Commands.Table, only: [render!: 2]

  @header [
    "ID",
    "Credentials",
    "Status",
    "Channels",
    "Quote Depth",
    "Timeout",
    "Start On Boot"
  ]

  @type store_id :: Tai.Venues.VenueStore.store_id()
  @type store_id_opt :: {:store_id, store_id}
  @type where_opt :: {:where, [{atom, term}]}
  @type order_opt :: {:order, [atom]}
  @type options :: [store_id_opt | where_opt | order_opt]

  @spec list(options) :: no_return
  def list(options) do
    options
    |> Tai.Commander.venues()
    |> format_rows()
    |> render!(@header)
  end

  defp format_rows(venues) do
    venues
    |> Enum.map(fn venue ->
      [
        venue.id,
        venue.credentials |> Map.keys(),
        venue |> Tai.Venues.Status.status(),
        venue.channels,
        venue.quote_depth,
        venue.timeout,
        venue.start_on_boot
      ]
      |> Enum.map(&format_col/1)
    end)
  end

  defp format_col(nil), do: "-"
  defp format_col([]), do: "-"
  defp format_col(val) when is_list(val), do: val |> Enum.join(", ")
  defp format_col(val), do: val
end
