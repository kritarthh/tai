defmodule Tai.AdvisorGroups.ConfigTest do
  use ExUnit.Case, async: true

  @btc_usdt struct(Tai.Venues.Product, symbol: :btc_usdt, venue_id: :venue_a)
  @ltc_usdt struct(Tai.Venues.Product, symbol: :ltc_usdt, venue_id: :venue_b)
  @eth_usdt struct(Tai.Venues.Product, symbol: :eth_usdt, venue_id: :venue_c)
  @products [@btc_usdt, @ltc_usdt, @eth_usdt]

  test "returns a list of parsed advisor groups" do
    config =
      Tai.Config.parse(
        advisor_groups: %{
          group_a: [
            start_on_boot: true,
            advisor: AdvisorA,
            factory: TestFactoryA,
            products: "*",
            config: %{min_profit: 0.1},
            trades: [:a, :b]
          ]
        }
      )

    assert {:ok, [group | []]} = Tai.AdvisorGroups.Config.parse_groups(config, @products)
    assert %Tai.AdvisorGroup{} = group
    assert group.id == :group_a
    assert group.advisor == AdvisorA
    assert group.factory == TestFactoryA
    assert group.start_on_boot == true
    assert group.products != nil
    assert group.config == %{min_profit: 0.1}
    assert group.trades == [:a, :b]
  end

  test "filters products with a query" do
    config =
      Tai.Config.parse(
        advisor_groups: %{
          group_a: [
            advisor: AdvisorA,
            factory: TestFactoryA,
            products: "venue_a.btc_usdt"
          ]
        }
      )

    assert {:ok, [group | _]} = Tai.AdvisorGroups.Config.parse_groups(config, @products)
    assert [product | []] = group.products
    assert product.venue_id == :venue_a
    assert product.symbol == :btc_usdt
  end

  test "start_on_boot is false when not present" do
    config =
      Tai.Config.parse(
        advisor_groups: %{
          group_a: [
            advisor: AdvisorA,
            factory: TestFactoryA,
            products: "*"
          ]
        }
      )

    assert {:ok, [group | _]} = Tai.AdvisorGroups.Config.parse_groups(config, @products)
    assert group.start_on_boot == false
  end

  test "config is an empty map when not present" do
    config =
      Tai.Config.parse(
        advisor_groups: %{
          group_a: [
            advisor: AdvisorA,
            factory: TestFactoryA,
            products: "*"
          ]
        }
      )

    assert {:ok, [group | _]} = Tai.AdvisorGroups.Config.parse_groups(config, @products)
    assert group.config == %{}
  end

  test "trades is an empty list when not present" do
    config =
      Tai.Config.parse(
        advisor_groups: %{
          group_a: [
            advisor: AdvisorA,
            factory: TestFactoryA,
            products: "*"
          ]
        }
      )

    assert {:ok, [group | _]} = Tai.AdvisorGroups.Config.parse_groups(config, @products)
    assert group.trades == []
  end

  test "returns an error tuple when advisor is not present" do
    config =
      Tai.Config.parse(
        advisor_groups: %{
          group_a: [
            factory: TestFactoryA,
            products: "*"
          ]
        }
      )

    assert {:error, errors} = Tai.AdvisorGroups.Config.parse_groups(config, @products)
    assert errors.group_a == [{:advisor, "must be present"}]
  end

  test "returns an error tuple when factory is not present" do
    config =
      Tai.Config.parse(
        advisor_groups: %{
          group_a: [
            advisor: TestAdvisorA,
            products: "*"
          ]
        }
      )

    assert {:error, errors} = Tai.AdvisorGroups.Config.parse_groups(config, @products)
    assert errors.group_a == [{:factory, "must be present"}]
  end
end
