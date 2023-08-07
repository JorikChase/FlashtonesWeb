defmodule Aktuality do
  use Phoenix.Component

  def aktuality(assigns) do
    ~H"""

      <script>

        const accessToken = 'unlisted-twist';

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

      <style>

      .instagram-feed {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
      }

      .instagram-post {
        margin: 10px;
        width: calc(33.33% - 20px);
        box-sizing: border-box;
      }

      .instagram-post img {
        max-width: 100%;
        border-radius: 5px;
      }

      </style>


      <div class="instagram-feed">
        <!-- Posts will be displayed here -->
      </div>

      <script src="script.js"></script>
    """
  end
end
