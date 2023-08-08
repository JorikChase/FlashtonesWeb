defmodule FlashtonesWeb.FaqLive do
  use FlashtonesWeb, :live_view

  def render(assigns) do
    ~H"""
    <Plachta.plachta />
    <Menu.menu />
    <HeadSmall.headSmall />
    <style>
      .question-box {
        cursor: pointer;
      }

      .answer {
        max-height: 0;
        overflow: hidden;
        transition: max-height 0.3s ease-in-out;
      }

      .active .answer {
        max-height: 500px; /* Adjust the maximum height as needed */
      }
    </style>
    <div class="container mx-auto px-4 py-8">
      <h1 class="text-3xl font-bold text-center mb-8">Frequently Asked Questions</h1>

      <div class="w-full md:w-1/2 mx-auto">
        <div class="mb-4">
          <h2 class="text-xl font-semibold">Section 1</h2>
        </div>
        <div class="question-box p-4 bg-white rounded shadow mb-2">
          <h3 class="font-semibold">Question 1</h3>
          <p class="answer mt-2">Answer to Question 1.</p>
        </div>
        <div class="question-box p-4 bg-white rounded shadow mb-2">
          <h3 class="font-semibold">Question 2</h3>
          <p class="answer mt-2">Answer to Question 2.</p>
        </div>
        <div class="question-box p-4 bg-white rounded shadow mb-2">
          <h3 class="font-semibold">Question 1</h3>
          <p class="answer mt-2">Answer to Question 1.</p>
        </div>
        <div class="question-box p-4 bg-white rounded shadow mb-2">
          <h3 class="font-semibold">Question 1</h3>
          <p class="answer mt-2">Answer to Question 1.</p>
        </div>
        <!-- Add more question boxes here -->
        <div class="mb-4">
          <h2 class="text-xl font-semibold">Section 2</h2>
        </div>
        <div class="question-box p-4 bg-white rounded shadow mb-2">
          <h3 class="font-semibold">Question 1</h3>
          <p class="answer mt-2">Answer to Question 1.</p>
        </div>
        <!-- Add more question boxes here -->
      </div>
    </div>

    <script>
      document.querySelectorAll('.question-box').forEach(box => {
        box.addEventListener('click', () => {
          // Toggle the active class on the clicked box
          box.classList.toggle('active');

          // Hide the answers of other boxes in the same section
          const otherBoxes = document.querySelectorAll('.question-box:not(.active)');
          otherBoxes.forEach(otherBox => {
            otherBox.classList.remove('active');
          });
        });
      });
    </script>
    <Socky.socky />
    <Footer.footer />
    """
  end
end
