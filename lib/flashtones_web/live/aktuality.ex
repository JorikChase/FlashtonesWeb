defmodule FlashtonesWeb.AktualityLive do
  use FlashtonesWeb, :live_view

  def render(assigns) do
    ~H"""
    <Plachta.plachta />
    <Menu.menu />
    <HeadSmall.headSmall />

    <style>
      /* Custom styles for the navigation bar */
      .nav-item {
        cursor: pointer;
        transition: background-color 0.2s ease;
      }

      .nav-item.active {
        background-color: #D9B770;
      }

      /* Custom styles for the profile grid */
      .profile-item {
        cursor: pointer;
        transition: transform 0.2s ease;
        background-color: #F3F4F6;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        text-align: center;
        border-radius: 8px;
      }

      .profile-item:hover {
        transform: translateY(-5px);
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      }

      /* Custom styles for the tooltip */
      .tooltip {
        position: fixed;
        max-width: 300px;
        padding: 8px;
        background-color: red;
        color: black;
        border-radius: 4px;
        z-index: 9999;
        pointer-events: none;
        opacity: 1;
        transition: opacity 0.2s ease;
      }

      .profile-item:hover .tooltip {
        opacity: 1;
      }
    </style>

    <div class="container mx-auto py-8">
      <!-- Navigation Bar -->
      <div class="flex justify-center mb-8">
        <div class="nav-item p-4 mr-4 rounded" onclick="showSection(1)">Section 1</div>
        <div class="nav-item p-4 rounded" onclick="showSection(2)">Section 2</div>
      </div>
      <!-- Sections -->
      <div id="section1" class="hidden">
        <div class="grid grid-cols-3 gap-4 mt-4">
          <!-- Profile Item 1 -->
          <div
            class="profile-item p-4 rounded shadow-lg"
            onmouseover="showTooltip(event, 'This is a longer description for John Doe.')"
            onmouseout="hideTooltip()"
          >
            <!-- Background Image -->
            <div
              class="w-full h-32 bg-cover bg-center bg-gray-300"
              style="background-image: url('image1.jpg');"
            >
            </div>
            <!-- Description -->
            <h4 class="mt-2 font-bold">John Doe</h4>
            <p class="italic text-xs">Date and Category</p>
          </div>
          <!-- Profile Item 2 -->
          <div
            class="profile-item p-4 rounded shadow-lg"
            onmouseover="showTooltip(event, 'This is a longer description for Jane Doe.')"
            onmouseout="hideTooltip()"
          >
            <!-- Background Image -->
            <div
              class="w-full h-32 bg-cover bg-center bg-gray-300"
              style="background-image: url('image2.jpg');"
            >
            </div>
            <!-- Description -->
            <h4 class="mt-2 font-bold">Jane Doe</h4>
            <p class="italic text-xs">Date and Category</p>
          </div>
          <!-- Profile Item 3 -->
          <div
            class="profile-item p-4 rounded shadow-lg"
            onmouseover="showTooltip(event, 'This is a longer description for Mark Smith.')"
            onmouseout="hideTooltip()"
          >
            <!-- Background Image -->
            <div
              class="w-full h-32 bg-cover bg-center bg-gray-300"
              style="background-image: url('image3.jpg');"
            >
            </div>
            <!-- Description -->
            <h4 class="mt-2 font-bold">Mark Smith</h4>
            <p class="italic text-xs">Date and Category</p>
          </div>
          <!-- Rest of the profile items... -->
        </div>
      </div>

      <div id="section2" class="hidden">
        <div class="grid grid-cols-3 gap-4 mt-4">
          <!-- Profile Item 1 -->
          <div
            class="profile-item p-4 rounded shadow-lg"
            onmouseover="showTooltip(event, 'This is a longer description for John Doe.')"
            onmouseout="hideTooltip()"
          >
            <!-- Background Image -->
            <div
              class="w-full h-32 bg-cover bg-center bg-gray-300"
              style="background-image: url('image1.jpg');"
            >
            </div>
            <!-- Description -->
            <h4 class="mt-2 font-bold">John Doe</h4>
            <p class="italic text-xs">Date and Category</p>
          </div>
          <!-- Profile Item 2 -->
          <div
            class="profile-item p-4 rounded shadow-lg"
            onmouseover="showTooltip(event, 'This is a longer description for Jane Doe.')"
            onmouseout="hideTooltip()"
          >
            <!-- Background Image -->
            <div
              class="w-full h-32 bg-cover bg-center bg-gray-300"
              style="background-image: url('image2.jpg');"
            >
            </div>
            <!-- Description -->
            <h4 class="mt-2 font-bold">Jane Doe</h4>
            <p class="italic text-xs">Date and Category</p>
          </div>
          <!-- Profile Item 3 -->
          <div
            class="profile-item p-4 rounded shadow-lg"
            onmouseover="showTooltip(event, 'This is a longer description for Mark Smith.')"
            onmouseout="hideTooltip()"
          >
            <!-- Background Image -->
            <div
              class="w-full h-32 bg-cover bg-center bg-gray-300"
              style="background-image: url('image3.jpg');"
            >
            </div>
            <!-- Description -->
            <h4 class="mt-2 font-bold">Mark Smith</h4>
            <p class="italic text-xs">Date and Category</p>
          </div>
          <!-- Rest of the profile items... -->
        </div>
      </div>
    </div>

    <script>
      // Function to show/hide sections
      function showSection(sectionNumber) {
        const sections = document.querySelectorAll('[id^="section"]');
        sections.forEach((section) => {
          section.classList.toggle('hidden', !section.id.includes(sectionNumber));
        });

        // Highlight the selected navigation item
        const navItems = document.querySelectorAll('.nav-item');
        navItems.forEach((item, index) => {
          item.classList.toggle('active', index === sectionNumber - 1);
        });
      }

      // Function to show tooltip on hover
      function showTooltip(event, description) {
        const tooltip = document.createElement('div');
        tooltip.classList.add('tooltip');
        tooltip.textContent = description;
        document.body.appendChild(tooltip);

        positionTooltip(event, tooltip);
      }

      // Function to position tooltip next to the cursor
      function positionTooltip(event, tooltip) {
        const x = event.clientX + 10;
        const y = event.clientY + 10;
        tooltip.style.left = `${x}px`;
        tooltip.style.top = `${y}px`;
      }

      // Function to remove tooltip on mouseout
      function hideTooltip() {
        const tooltip = document.querySelector('.tooltip');
        if (tooltip) {
          tooltip.remove();
        }
      }
    </script>

    <Socky.socky />
    <Footer.footer />
    """
  end
end
