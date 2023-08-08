defmodule FlashtonesWeb.FaqLive do
  use FlashtonesWeb, :live_view

  def render(assigns) do
    ~H"""

      <Plachta.plachta />
      <Menu.menu />
      <HeadSmall.headSmall />
      <Socky.socky />
      <Footer.footer />

    """
  end

end
