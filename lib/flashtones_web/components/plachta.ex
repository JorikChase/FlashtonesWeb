defmodule Plachta do
  use Phoenix.Component

  def plachta(assigns) do
    ~H"""
      <style>
      /* Custom style for the links */
      .column-link {
        color: #000;
        transition: color 1s ease;
        text-align: left;
      }

      .column-link:hover {
        color: #D9B770;
      }
      </style>
    <span class="x noBreak">
    zavřít
      <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M9.81557 11.6238L6.58306 14.8596C6.37319 15.0981 6.26203 15.4076 6.27217 15.7252C6.2823 16.0427 6.41299 16.3445 6.63765 16.5692C6.86231 16.7938 7.16409 16.9245 7.48164 16.9347C7.7992 16.9448 8.1087 16.8336 8.34723 16.6238L11.5831 13.3913L14.8247 16.6338C14.9408 16.7499 15.0787 16.842 15.2304 16.9048C15.3821 16.9677 15.5447 17 15.7089 17C15.8731 17 16.0357 16.9677 16.1874 16.9048C16.3391 16.842 16.477 16.7499 16.5931 16.6338C16.7092 16.5177 16.8013 16.3798 16.8641 16.2281C16.927 16.0764 16.9593 15.9138 16.9593 15.7496C16.9593 15.5854 16.927 15.4228 16.8641 15.2711C16.8013 15.1194 16.7092 14.9815 16.5931 14.8654L13.3506 11.6238L16.5831 8.38877C16.7098 8.27544 16.8122 8.13744 16.8838 7.98322C16.9554 7.82899 16.9948 7.66177 16.9995 7.4918C17.0043 7.32183 16.9743 7.15267 16.9114 6.99468C16.8486 6.83669 16.7541 6.69318 16.6339 6.57295C16.5136 6.45271 16.3701 6.35827 16.2122 6.2954C16.0542 6.23253 15.885 6.20256 15.715 6.20732C15.5451 6.21208 15.3778 6.25146 15.2236 6.32307C15.0694 6.39467 14.9314 6.49699 14.8181 6.62376L11.5831 9.85626L8.3514 6.62376C8.1169 6.38927 7.79886 6.25753 7.46723 6.25753C7.13561 6.25753 6.81756 6.38927 6.58306 6.62376C6.34857 6.85826 6.21683 7.1763 6.21683 7.50793C6.21683 7.83956 6.34857 8.1576 6.58306 8.3921L9.81557 11.6238Z" fill="white"/>
      </svg>
    </span>
    <nav>
      <button class="nav">

      <div class="container mx-auto py-8">
        <div class="flex justify-between">
          <!-- Column 1 -->
          <div class="w-1/3 p-4">
            <h3 class="text-xl font-bold mb-2">
              <a href="#" class="column-link">Column 1</a>
            </h3>
            <p class="text-gray-600">
              Description for Column 1 goes here.
            </p>
            <div class="mt-4">
              <ul class="list-disc list-inside">
                <li><a href="#" class="column-link">Link 1</a></li>
                <li><a href="#" class="column-link">Link 2</a></li>
                <li><a href="#" class="column-link">Link 3</a></li>
                <li><a href="#" class="column-link">Link 4</a></li>
                <li><a href="#" class="column-link">Link 5</a></li>
              </ul>
            </div>
          </div>

          <!-- Column 2 -->
          <div class="w-1/3 p-4">
            <h3 class="text-xl font-bold mb-2">
              <a href="#" class="column-link">Column 2</a>
            </h3>
            <p class="text-gray-600">
              Description for Column 2 goes here.
            </p>
            <div class="mt-4">
              <ul class="list-disc list-inside">
                <li><a href="#" class="column-link">Link 1</a></li>
                <li><a href="#" class="column-link">Link 2</a></li>
                <li><a href="#" class="column-link">Link 3</a></li>
                <li><a href="#" class="column-link">Link 4</a></li>
                <li><a href="#" class="column-link">Link 5</a></li>
              </ul>
            </div>
          </div>

          <!-- Column 3 -->
          <div class="w-1/3 p-4">
            <h3 class="text-xl font-bold mb-2">
              <a href="#" class="column-link">Column 3</a>
            </h3>
            <p class="text-gray-600">
              Description for Column 3 goes here.
            </p>
            <div class="mt-4">
              <ul class="list-disc list-inside">
                <li><a href="#" class="column-link">Link 1</a></li>
                <li><a href="#" class="column-link">Link 2</a></li>
                <li><a href="#" class="column-link">Link 3</a></li>
                <li><a href="#" class="column-link">Link 4</a></li>
                <li><a href="#" class="column-link">Link 5</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="container mx-auto py-8">
    <div class="news-grid">
      <div class="news-item" style="background-image: url('/images/socky1.png')">
        <div class="news-item-description">
          <a href="###">News Item 1</a>
        </div>
      </div>
      <div class="news-item" style="background-image: url('/images/socky2.png')">
        <div class="news-item-description">
          <a href="###">News Item 2</a>
        </div>
      </div>
      <div class="news-item" style="background-image: url('/images/socky3.png')">
        <div class="news-item-description">
          <a href="###">News Item 3</a>
        </div>
      </div>
      <div class="news-item news-item-big" style="background-image: url('/images/socky4.png')">
        <div class="news-item-description">
          <a href="###">News Item 4 (Big)</a>
        </div>
      </div>
      <div class="news-item" style="background-image: url('/images/socky5.png')">
        <div class="news-item-description">
          <a href="###">News Item 5</a>
        </div>
      </div>
    </div>
    </div>

      </button>

    </nav>
    """
  end
end
