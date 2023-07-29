defmodule FtHero do
  use Phoenix.Component

  def ftHero(assigns) do
    ~H"""
      <div class="hero">
        <div class="relative">
          <div class="carousel">
            <img src="https://placehold.co/1920x1081" alt="Image 1" class="carousel-item">
            <img src="https://placehold.co/1920x1082" alt="Image 2" class="carousel-item">
            <img src="https://placehold.co/1920x1083" alt="Image 3" class="carousel-item">
            <img src="https://placehold.co/1920x1084" alt="Image 4" class="carousel-item">
            <!-- Add more images as needed -->
          </div>
          <div class="carousel-nav flex justify-center mt-4">
            <button class="carousel-control noBreak" onclick="goToSlide(0)">
              <img src="https://placehold.co/1920x1081" alt="Image 1" class="carousel-item">
              <a>
                veta nahore
              </a>
            </button>
            <button class="carousel-control noBreak" onclick="goToSlide(1)">
              <img src="https://placehold.co/1920x1082" alt="Image 2" class="carousel-item">
              <a>
                veta nahore
              </a>
            </button>
            <button class="carousel-control noBreak" onclick="goToSlide(2)">
              <img src="https://placehold.co/1920x1083" alt="Image 3" class="carousel-item">
              <a>
                veta nahore
              </a>
            </button>
            <button class="carousel-control noBreak" onclick="goToSlide(3)">
              <img src="https://placehold.co/1920x1084" alt="Image 4" class="carousel-item">
              <a>
                veta nahore
              </a>
            </button>
          </div>
        </div>
      </div>

      <style>
        .carousel {
          width: 100%;
          height: 90vh; /* Set desired carousel height */
          overflow: hidden;
          position: relative;
        }

        .carousel-item {
          width: 100%;
          height: 100%;
          object-fit: cover;
          position: absolute;
          top: 0;
          left: 0;
          right: 0;
          opacity: 0;
          transition: opacity 0.3s ease-in-out;
        }

        .carousel-item:first-child {
          opacity: 1;
        }

        .carousel-control {
          z-index:2;
          background-color: rgba(0, 0, 0, 0.6);
          color: #fff;
          font-size: 20px;
          padding: 5px 10px;
          margin: -50px 5px 0 5px;
          border: none;
          cursor: pointer;
          transition: all 0.3s ease-in-out;
          display: flex;
          flex-direction:row;
          justify-content: center;
          align-content: center;
          border-radius: 5px;
        }

        .carousel-control:hover {
          background-color: rgba(0, 0, 0, 0.8);
        }
        .carousel-control > img {
          position: relative;
          border-radius: 50%;
          width:60px;
          height:60px;
        }
      </style>

      <script>
        const carouselItems = document.querySelectorAll('.carousel-item');
        const carouselControls = document.querySelectorAll('.carousel-control');

        let currentSlide = 0;

        function showSlide() {
          carouselItems.forEach((item, index) => {
            item.style.opacity = index === currentSlide ? 1 : 0;
          });
        }

        function goToSlide(slideIndex) {
          currentSlide = slideIndex;
          showSlide();
        }

        function nextSlide() {
          currentSlide = (currentSlide + 1) % carouselItems.length;
          showSlide();
        }

        function prevSlide() {
          currentSlide = (currentSlide - 1 + carouselItems.length) % carouselItems.length;
          showSlide();
        }

        showSlide(); // Show initial slide

      </script>
    """
  end
end
