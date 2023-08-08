defmodule HeadSmall do
  use Phoenix.Component

  def headSmall(assigns) do
    ~H"""
    <style>

    .headSmall{
      height: 25vh;
      background: rgba(0, 0, 0, 0.5);
    }

    </style>
    <div class="headSmall">

    </div>
    """
  end
end
