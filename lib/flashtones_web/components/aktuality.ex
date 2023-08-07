defmodule Aktuality do
  use Phoenix.Component

  instagram_token = Application.compile_env(:flashtones, Flashtones.Instagram)[:access_token]

  def aktuality(assigns) do
    ~H"""

      <style>
        .instagram-feed {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            justify-content: center;
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
          }

          .instagram-post {
            position: relative;
            overflow: hidden;
            border-radius: 10px;
            box-shadow: 0px 3px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
          }

          .instagram-post:hover {
            transform: translateY(-5px);
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
          }

          .instagram-post img {
            width: 100%;
            display: block;
          }

      </style>

        <div class="instagram-feed">
          <!-- Posts will be displayed here -->
        </div>

        <script>

        const accessToken = "#{instagram_token}";
        console.log(accessToken);

          async function fetchInstagramPosts() {
            try {
              const response = await fetch(`https://graph.instagram.com/me/media?fields=id,caption,media_type,media_url,permalink&access_token=${accessToken}`);
              const data = await response.json();
              return data.data;
            } catch (error) {
              console.error('Error fetching Instagram posts:', error);
              return [];
            }
          }

          function displayInstagramPosts(posts) {
            const feed = document.querySelector('.instagram-feed');

            posts.slice(0, 5).forEach(post => {
              const postElement = document.createElement('div');
              postElement.className = 'instagram-post';

              if (post.media_type === 'IMAGE') {
                const img = document.createElement('img');
                img.src = post.media_url;
                img.alt = post.caption || 'Instagram Post';
                postElement.appendChild(img);
              }

              if (post.permalink) {
                const link = document.createElement('a');
                link.href = post.permalink;
                link.target = '_blank';
                link.rel = 'noopener noreferrer';
                link.appendChild(postElement);
                feed.appendChild(link);
              } else {
                feed.appendChild(postElement);
              }
            });
          }

          async function init() {
            const posts = await fetchInstagramPosts();
            displayInstagramPosts(posts);
          }

          init();

        </script>
    """
  end
end
