defmodule FlashtonesWeb.ZsIndexLive do
  use FlashtonesWeb, :live_view

  def render(assigns) do
    ~H"""

      <Plachta.plachta />
      <Menu.menu />
      <KdoJsmeComponent.kdoJsmeComponent />
      <Socky.socky />
      <Footer.footer />

    """
  end

end
