defmodule Tai.VenueAdapters.Poloniex.SymbolMapping do
  @moduledoc """
  Mappings between tai symbol format and Poloniex currency pair format
  """

  def to_poloniex(:amp_btc), do: "BTC_AMP"
  def to_poloniex(:ardr_btc), do: "BTC_ARDR"
  def to_poloniex(:bch_btc), do: "BTC_BCH"
  def to_poloniex(:bcn_btc), do: "BTC_BCN"
  def to_poloniex(:bcy_btc), do: "BTC_BCY"
  def to_poloniex(:bela_btc), do: "BTC_BELA"
  def to_poloniex(:blk_btc), do: "BTC_BLK"
  def to_poloniex(:btcd_btc), do: "BTC_BTCD"
  def to_poloniex(:btm_btc), do: "BTC_BTM"
  def to_poloniex(:bts_btc), do: "BTC_BTS"
  def to_poloniex(:burst_btc), do: "BTC_BURST"
  def to_poloniex(:clam_btc), do: "BTC_CLAM"
  def to_poloniex(:cvc_btc), do: "BTC_CVC"
  def to_poloniex(:dash_btc), do: "BTC_DASH"
  def to_poloniex(:dcr_btc), do: "BTC_DCR"
  def to_poloniex(:dgb_btc), do: "BTC_DGB"
  def to_poloniex(:doge_btc), do: "BTC_DOGE"
  def to_poloniex(:emc2_btc), do: "BTC_EMC2"
  def to_poloniex(:etc_btc), do: "BTC_ETC"
  def to_poloniex(:eth_btc), do: "BTC_ETH"
  def to_poloniex(:exp_btc), do: "BTC_EXP"
  def to_poloniex(:fct_btc), do: "BTC_FCT"
  def to_poloniex(:fldc_btc), do: "BTC_FLDC"
  def to_poloniex(:flo_btc), do: "BTC_FLO"
  def to_poloniex(:game_btc), do: "BTC_GAME"
  def to_poloniex(:gas_btc), do: "BTC_GAS"
  def to_poloniex(:gno_btc), do: "BTC_GNO"
  def to_poloniex(:gnt_btc), do: "BTC_GNT"
  def to_poloniex(:grc_btc), do: "BTC_GRC"
  def to_poloniex(:huc_btc), do: "BTC_HUC"
  def to_poloniex(:lbc_btc), do: "BTC_LBC"
  def to_poloniex(:lsk_btc), do: "BTC_LSK"
  def to_poloniex(:ltc_btc), do: "BTC_LTC"
  def to_poloniex(:maid_btc), do: "BTC_MAID"
  def to_poloniex(:nav_btc), do: "BTC_NAV"
  def to_poloniex(:neos_btc), do: "BTC_NEOS"
  def to_poloniex(:nmc_btc), do: "BTC_NMC"
  def to_poloniex(:nxc_btc), do: "BTC_NXC"
  def to_poloniex(:nxt_btc), do: "BTC_NXT"
  def to_poloniex(:omg_btc), do: "BTC_OMG"
  def to_poloniex(:omni_btc), do: "BTC_OMNI"
  def to_poloniex(:pasc_btc), do: "BTC_PASC"
  def to_poloniex(:pink_btc), do: "BTC_PINK"
  def to_poloniex(:pot_btc), do: "BTC_POT"
  def to_poloniex(:ppc_btc), do: "BTC_PPC"
  def to_poloniex(:rads_btc), do: "BTC_RADS"
  def to_poloniex(:rep_btc), do: "BTC_REP"
  def to_poloniex(:ric_btc), do: "BTC_RIC"
  def to_poloniex(:sbd_btc), do: "BTC_SBD"
  def to_poloniex(:sc_btc), do: "BTC_SC"
  def to_poloniex(:steem_btc), do: "BTC_STEEM"
  def to_poloniex(:storj_btc), do: "BTC_STORJ"
  def to_poloniex(:str_btc), do: "BTC_STR"
  def to_poloniex(:strat_btc), do: "BTC_STRAT"
  def to_poloniex(:sys_btc), do: "BTC_SYS"
  def to_poloniex(:via_btc), do: "BTC_VIA"
  def to_poloniex(:vrc_btc), do: "BTC_VRC"
  def to_poloniex(:vtc_btc), do: "BTC_VTC"
  def to_poloniex(:xbc_btc), do: "BTC_XBC"
  def to_poloniex(:xcp_btc), do: "BTC_XCP"
  def to_poloniex(:xem_btc), do: "BTC_XEM"
  def to_poloniex(:xmr_btc), do: "BTC_XMR"
  def to_poloniex(:xpm_btc), do: "BTC_XPM"
  def to_poloniex(:xrp_btc), do: "BTC_XRP"
  def to_poloniex(:xvc_btc), do: "BTC_XVC"
  def to_poloniex(:zec_btc), do: "BTC_ZEC"
  def to_poloniex(:zrx_btc), do: "BTC_ZRX"

  def to_poloniex(:bch_eth), do: "ETH_BCH"
  def to_poloniex(:cvc_eth), do: "ETH_CVC"
  def to_poloniex(:etc_eth), do: "ETH_ETC"
  def to_poloniex(:gas_eth), do: "ETH_GAS"
  def to_poloniex(:gno_eth), do: "ETH_GNO"
  def to_poloniex(:gnt_eth), do: "ETH_GNT"
  def to_poloniex(:lsk_eth), do: "ETH_LSK"
  def to_poloniex(:omg_eth), do: "ETH_OMG"
  def to_poloniex(:rep_eth), do: "ETH_REP"
  def to_poloniex(:steem_eth), do: "ETH_STEEM"
  def to_poloniex(:zec_eth), do: "ETH_ZEC"
  def to_poloniex(:zrx_eth), do: "ETH_ZRX"

  def to_poloniex(:bcn_xmr), do: "XMR_BCN"
  def to_poloniex(:blk_xmr), do: "XMR_BLK"
  def to_poloniex(:btcd_xmr), do: "XMR_BTCD"
  def to_poloniex(:dash_xmr), do: "XMR_DASH"
  def to_poloniex(:ltc_xmr), do: "XMR_LTC"
  def to_poloniex(:maid_xmr), do: "XMR_MAID"
  def to_poloniex(:nxt_xmr), do: "XMR_NXT"
  def to_poloniex(:zec_xmr), do: "XMR_ZEC"

  def to_poloniex(:bch_usdt), do: "USDT_BCH"
  def to_poloniex(:btc_usdt), do: "USDT_BTC"
  def to_poloniex(:dash_usdt), do: "USDT_DASH"
  def to_poloniex(:etc_usdt), do: "USDT_ETC"
  def to_poloniex(:eth_usdt), do: "USDT_ETH"
  def to_poloniex(:ltc_usdt), do: "USDT_LTC"
  def to_poloniex(:nxt_usdt), do: "USDT_NXT"
  def to_poloniex(:rep_usdt), do: "USDT_REP"
  def to_poloniex(:str_usdt), do: "USDT_STR"
  def to_poloniex(:xmr_usdt), do: "USDT_XMR"
  def to_poloniex(:xrp_usdt), do: "USDT_XRP"
  def to_poloniex(:zec_usdt), do: "USDT_ZEC"

  def to_poloniex(symbol) when is_atom(symbol), do: symbol |> Atom.to_string() |> String.upcase()
  def to_poloniex(symbol), do: symbol |> String.upcase()

  def to_tai(currency_pair) do
    currency_pair
    |> String.split("_")
    |> Enum.reverse()
    |> Enum.join("_")
    |> String.downcase()
    |> String.to_atom()
  end
end