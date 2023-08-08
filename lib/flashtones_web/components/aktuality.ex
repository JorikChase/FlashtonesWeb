defmodule Aktuality do
  use Phoenix.Component

  def aktuality(assigns) do
    # instagram_token = assigns.instagram_token

    ~H"""
    <style>
      .article-item {
        transition: transform 0.2s, box-shadow 0.2s;
      }
      .article-item:hover {
        transform: translateY(-5px);
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      }
    </style>
    <div class="container mx-auto py-8">
      <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
        <!-- Example article structure: { image, heading, date, category, link } -->
      <!-- Replace with your actual article data -->
        <a href="#" class="article-item block rounded shadow-lg col-span-2 md:col-span-1">
          <div
            class="w-full h-32 bg-cover bg-center bg-gray-300"
            style="background-image: url('/images/socky1.png');"
          >
          </div>
          <h4 class="mt-2 font-bold text-sm">Article Heading 1</h4>
          <p class="italic text-xs text-gray-500">Date 1</p>
          <p class="italic text-xs text-gray-500">Category 1</p>
        </a>
        <a href="#" class="article-item block rounded shadow-lg">
          <div
            class="w-full h-32 bg-cover bg-center bg-gray-300"
            style="background-image: url('/images/socky1.png');"
          >
          </div>
          <h4 class="mt-2 font-bold text-sm">Article Heading 2</h4>
          <p class="italic text-xs text-gray-500">Date 2</p>
          <p class="italic text-xs text-gray-500">Category 2</p>
        </a>
        <a href="#" class="article-item block rounded shadow-lg">
          <div
            class="w-full h-32 bg-cover bg-center bg-gray-300"
            style="background-image: url('/images/socky1.png');"
          >
          </div>
          <h4 class="mt-2 font-bold text-sm">Article Heading 3</h4>
          <p class="italic text-xs text-gray-500">Date 3</p>
          <p class="italic text-xs text-gray-500">Category 3</p>
        </a>
        <a href="#" class="article-item block rounded shadow-lg col-span-2 md:col-span-2">
          <div
            class="w-full h-32 bg-cover bg-center bg-gray-300"
            style="background-image: url('/images/socky1.png');"
          >
          </div>
          <h4 class="mt-2 font-bold text-sm">Article Heading 4</h4>
          <p class="italic text-xs text-gray-500">Date 4</p>
          <p class="italic text-xs text-gray-500">Category 4</p>
        </a>
        <a href="#" class="article-item block rounded shadow-lg">
          <div
            class="w-full h-32 bg-cover bg-center bg-gray-300"
            style="background-image: url('/images/socky1.png');"
          >
          </div>
          <h4 class="mt-2 font-bold text-sm">Article Heading 5</h4>
          <p class="italic text-xs text-gray-500">Date 5</p>
          <p class="italic text-xs text-gray-500">Category 5</p>
        </a>
      </div>
    </div>
    """
  end
end
