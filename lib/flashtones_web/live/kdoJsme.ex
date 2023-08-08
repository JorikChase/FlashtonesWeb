defmodule FlashtonesWeb.KdoJsmeLive do
  use FlashtonesWeb, :live_view

  def render(assigns) do
    ~H"""

      <Plachta.plachta />
      <Menu.menu />
      <HeadSmall.headSmall />
      <KdoJsmeComponent.kdoJsmeComponent />
      <Socky.socky />
      <Footer.footer />

    """
  end

end
