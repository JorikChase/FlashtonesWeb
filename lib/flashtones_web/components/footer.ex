defmodule Footer do
  use Phoenix.Component

  def footer(assigns) do
    ~H"""
    <footer>
      <div class="footerRow">
        <div class="footerColumn">
          <a href="###">
            <span>text</span>
          </a>
          <a href="###">
            <span>test</span>
          </a>
          <a href="###">
            <span>text</span>
          </a>
          <a href="###">
            <span>test</span>
          </a>
        </div>
        <div class="footerColumn">
          <a href="###">
            <span>text</span>
          </a>
          <a href="###">
            <span>test</span>
          </a>
          <a href="###">
            <span>text</span>
          </a>
          <a href="###">
            <span>test</span>
          </a>
        </div>
        <div class="footerColumn">
          <a href="###">
            <span>text</span>
          </a>
          <a href="###">
            <span>test</span>
          </a>
          <a href="###">
            <span>text</span>
          </a>
          <a href="###">
            <span>test</span>
          </a>
        </div>
      </div>
      <div class="footerBottom"></div>
    </footer>
    """
  end
end
