defmodule FlashtonesWeb.IndexLive do
  use FlashtonesWeb, :live_view

  def render(assigns) do
    ~H"""

      <Plachta.plachta />
      <Menu.menu />
      <FtHero.ftHero />
      <Aktuality.aktuality />
      <Kdo.kdo />
      <Rekli.rekli />
      <Zustanme.zustanme />
      <Socky.socky />
      <Footer.footer />

    """
  end

end
