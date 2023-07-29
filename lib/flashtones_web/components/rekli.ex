defmodule Rekli do
  use Phoenix.Component

  def rekli(assigns) do
    ~H"""
    <div class="rekli">
      <h3>
      Řekli o nás
      </h3>
      <span>
        <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path fill-rule="evenodd" clip-rule="evenodd" d="M0.334728 34.0425C5.91353 34.0425 10.1255 32.465 12.9707 29.3098C15.8159 26.1546 17.2385 21.4773 17.2385 15.2776C17.2385 10.4065 16.6248 5.31396 15.3975 0H0V14.2813H8.3682V18.1007C8.3682 21.2005 7.75453 23.4977 6.5272 24.9922C5.29986 26.4868 3.2357 27.234 0.334728 27.234V34.0425ZM22.9289 34.0425C28.5077 34.0425 32.7476 32.465 35.6485 29.3098C38.5495 26.1546 40 21.4773 40 15.2776C40 10.8493 39.3305 5.75679 37.9916 0H22.5941V14.2813H30.9623V18.1007C30.9623 21.2005 30.3487 23.4977 29.1213 24.9922C27.894 26.4868 25.8298 27.234 22.9289 27.234V34.0425Z" fill="#D9B770"/>
        </svg>
      </span>
      <div>
        <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut blandit arcu nulla, vitae egestas mi laoreet sit amet. Pellentesque mi ipsum, ultrices sit amet sem quis, bibendum mattis massa. Pellentesque ut eros ut velit ullamcorper pharetra nec id sem. Maecenas sit amet massa mi. Morbi sit amet urna iaculis, pulvinar neque et, laoreet tortor. Quisque id mattis massa.
        </p>
        <div>
          <div>
            <h4>
            Milan Králíček
            </h4>
            <p>
            Uspokojený rodič
            </p>
          </div>
            <a href="###">
            VŠECHNA HODNOCENÍ
            </a>
        </div>
      </div>
    </div>
    """
  end
end
