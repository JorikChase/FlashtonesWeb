defmodule FlashtonesWeb.HodnoceniLive do
  use FlashtonesWeb, :live_view

  def render(assigns) do
    ~H"""
      <Plachta.plachta />
      <Menu.menu />
      <HeadSmall.headSmall />

      <!-- Ratings Page -->
      <div class="container mx-auto py-8">
        <h2 class="text-2xl font-bold mb-4">Ratings</h2>

        <!-- Five Star Scale -->
        <div class="flex items-center space-x-1 mb-4">
          <div class="text-gray-500">Rate:</div>
          <div class="flex items-center">
            <!-- Star Icons (replace with your star icons) -->
            <span class="text-yellow-500">*</span>
            <span class="text-yellow-500">*</span>
            <span class="text-yellow-500">*</span>
            <span class="text-yellow-500">*</span>
            <span class="text-yellow-500">*</span>
          </div>
        </div>

        <!-- Total Ratings and Average Score -->
        <div class="text-gray-500">
          Total Ratings: <span class="font-bold"><%= @total_ratings %></span>
          &nbsp;&nbsp;|&nbsp;&nbsp;
          Average Score: <span class="font-bold"><%= @average_score %></span>
        </div>
      </div>

      <!-- Seamless Grid for Critiques and Opinions -->
      <div class="container mx-auto py-8">
        <h2 class="text-2xl font-bold mb-4">User Critiques</h2>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
          <%= for {rating, critique, name, profession} <- @critiques do %>
            <div class="bg-gray-100 p-4 rounded shadow-md">
              <div class="flex items-center space-x-2 mb-2">
                <div class="text-yellow-500">*</div> <!-- User Rating (replace with actual rating) -->
                <div class="text-sm text-gray-500">(<%= rating %>)</div> <!-- User Rating in Numeric -->
              </div>
              <p class="text-gray-700 mb-2"><%= critique %></p>
              <div class="text-gray-500"><%= name %>, <%= profession %></div>
            </div>
          <% end %>
        </div>
      </div>

      <Socky.socky />
      <Footer.footer />
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, total_ratings: 0, average_score: 0, critiques: [])}
  end

  def handle_event("rate", %{"score" => score}, socket) do
    critique = "User Opinion Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    critiques = [
      {String.to_integer(score), critique, "Name", "Profession"} | socket.assigns.critiques
    ]
    total_ratings = length(critiques)
    average_score = Enum.sum(critiques, fn {rating, _, _, _} -> rating end) / total_ratings

    {:noreply, assign(socket, total_ratings: total_ratings, average_score: average_score, critiques: critiques)}
  end
end
