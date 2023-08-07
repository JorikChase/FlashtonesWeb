defmodule Footer do
  use Phoenix.Component

  def footer(assigns) do
    ~H"""
    <footer>

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
      <div class="news-item" style="background-image: url('/images/socky1.jpg')">
        <div class="news-item-description">
          <a href="###">News Item 1</a>
        </div>
      </div>
      <div class="news-item" style="background-image: url('/images/socky2.jpg')">
        <div class="news-item-description">
          <a href="###">News Item 2</a>
        </div>
      </div>
      <div class="news-item" style="background-image: url('/images/socky3.jpg')">
        <div class="news-item-description">
          <a href="###">News Item 3</a>
        </div>
      </div>
      <div class="news-item news-item-big" style="background-image: url('/images/socky4.jpg')">
        <div class="news-item-description">
          <a href="###">News Item 4 (Big)</a>
        </div>
      </div>
      <div class="news-item" style="background-image: url('/images/socky5.jpg')">
        <div class="news-item-description">
          <a href="###">News Item 5</a>
        </div>
      </div>
    </div>
    </div>

    </footer>
    """
  end
end
