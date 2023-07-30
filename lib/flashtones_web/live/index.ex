defmodule FlashtonesWeb.IndexLive do
  use FlashtonesWeb, :live_view

  def render(assigns) do
    ~H"""

      <Menu.menu />
      <FtHero.ftHero />
      <Kdo.kdo />
      <Rekli.rekli />
      <Zustanme.zustanme />
      <Socky.socky />
      <Footer.footer />

    """
  end

end
