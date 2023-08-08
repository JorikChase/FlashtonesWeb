defmodule Socky do
  use Phoenix.Component

  def socky(assigns) do
    ~H"""
    <div class="socky-container">
      <div class="socky-header">
        <h3>Jsme tak trochu socky</h3>
        <span class="socky-icons">
          <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
            <!-- SVG Paths -->
          </svg>
          <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
            <!-- SVG Paths -->
          </svg>
          <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
            <!-- SVG Paths -->
          </svg>
        </span>
      </div>
      <p>
        Sledujte nás na Instagramu, YouTube nebo Facebooku a buďte tak <i>ellentesque mi ipsum</i>, ultrices sit amet sem quis, bibendum mattis massa. Pellentesque ut eros ut velit ullamcorper pharetra nec id sem.
      </p>
      <div class="socky-grid">
        <a href="###" class="socky-item">
          <img src="/images/sockyBig1.png" alt="Socky Image">
        </a>
        <a href="###" class="socky-item">
          <img src="/images/socky1.png" alt="Socky Image">
        </a>
        <a href="###" class="socky-item">
          <img src="/images/socky2.png" alt="Socky Image">
        </a>
        <a href="###" class="socky-item">
          <img src="/images/socky3.png" alt="Socky Image">
        </a>
        <a href="###" class="socky-item">
          <img src="/images/socky4.png" alt="Socky Image">
        </a>
        <a href="###" class="socky-item">
          <img src="/images/sockyBig2.png" alt="Socky Image">
        </a>
        <a href="###" class="socky-item">
          <img src="/images/socky5.png" alt="Socky Image">
        </a>
        <a href="###" class="socky-item">
          <img src="/images/socky6.png" alt="Socky Image">
        </a>
      </div>
    </div>
    <style>
      .socky-container {
        padding: 2rem;
        background-color: #f4f4f4;
        border-radius: 8px;
        text-align: center;
      }

      .socky-header {
        margin-bottom: 1.5rem;
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 1rem;
      }

      .socky-icons {
        display: flex;
        gap: 0.5rem;
        color: #cfa44a;
      }

      .socky-icons svg {
        width: 40px;
        height: 40px;
        fill: currentColor;
      }

      .socky-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
        gap: 1rem;
        justify-items: center;
        align-items: center;
      }

      .socky-item {
        display: block;
        width: 100%;
        border-radius: 8px;
        overflow: hidden;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        transition: transform 0.2s ease, box-shadow 0.2s ease;
      }

      .socky-item:hover {
        transform: translateY(-5px);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      }

      @media (max-width: 768px) {
        .socky-grid {
          grid-template-columns: 1fr;
        }
      }
    </style>
    """
  end
end
