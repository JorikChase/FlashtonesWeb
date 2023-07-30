defmodule Socky do
  use Phoenix.Component

  def socky(assigns) do
    ~H"""
     <div class="socky">
      <div class="noBreak">
        <h3>
        Jsme tak trochu socky
        </h3>
        <span>
          <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M18.538 22.188C18.9707 22.4772 19.4795 22.6315 20 22.6315C20.6979 22.6315 21.3673 22.3543 21.8608 21.8607C22.3543 21.3672 22.6316 20.6979 22.6316 19.9999C22.6316 19.4795 22.4772 18.9707 22.1881 18.5379C21.8989 18.1051 21.4879 17.7679 21.0071 17.5687C20.5262 17.3695 19.9971 17.3174 19.4866 17.4189C18.9761 17.5205 18.5072 17.7711 18.1392 18.1391C17.7712 18.5072 17.5205 18.9761 17.419 19.4865C17.3174 19.997 17.3696 20.5261 17.5687 21.007C17.7679 21.4879 18.1052 21.8989 18.538 22.188Z" fill="#CFA44A"/>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M25.6944 25.6943C26.3113 25.0775 26.6579 24.2408 26.6579 23.3683V16.6315C26.6579 15.7591 26.3113 14.9224 25.6944 14.3055C25.0775 13.6886 24.2409 13.342 23.3684 13.342H16.6316C15.7592 13.342 14.9225 13.6886 14.3056 14.3055C13.6887 14.9224 13.3421 15.7591 13.3421 16.6315V23.3683C13.3421 24.2408 13.6887 25.0775 14.3056 25.6943C14.9225 26.3112 15.7592 26.6578 16.6316 26.6578H23.3684C24.2409 26.6578 25.0775 26.3112 25.6944 25.6943ZM17.6039 16.4164C18.3132 15.9428 19.1471 15.6903 20 15.6907C21.1425 15.6919 22.2379 16.1463 23.0458 16.9541C23.8537 17.762 24.3081 18.8574 24.3092 19.9999C24.3096 20.8528 24.0571 21.6867 23.5835 22.396C23.1099 23.1054 22.4366 23.6583 21.6487 23.9849C20.8608 24.3115 19.9938 24.3971 19.1572 24.2308C18.3207 24.0645 17.5523 23.6538 16.9492 23.0508C16.3461 22.4477 15.9354 21.6792 15.7691 20.8427C15.6029 20.0062 15.6884 19.1391 16.015 18.3512C16.3416 17.5633 16.8945 16.89 17.6039 16.4164ZM24.3355 16.7565C24.9242 16.7565 25.4013 16.2793 25.4013 15.6907C25.4013 15.1021 24.9242 14.6249 24.3355 14.6249C23.7469 14.6249 23.2697 15.1021 23.2697 15.6907C23.2697 16.2793 23.7469 16.7565 24.3355 16.7565Z" fill="#CFA44A"/>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M36.6667 19.9999C36.6667 29.2047 29.2048 36.6666 20 36.6666C10.7953 36.6666 3.33334 29.2047 3.33334 19.9999C3.33334 10.7952 10.7953 3.33325 20 3.33325C29.2048 3.33325 36.6667 10.7952 36.6667 19.9999ZM13.1228 13.1227C14.0535 12.192 15.3153 11.6683 16.6316 11.6666H23.3684C24.6847 11.6683 25.9465 12.192 26.8772 13.1227C27.808 14.0534 28.3316 15.3153 28.3333 16.6315V23.3683C28.3322 24.6848 27.8087 25.9469 26.8779 26.8778C25.947 27.8086 24.6849 28.3321 23.3684 28.3333H16.6316C15.3153 28.3315 14.0535 27.8079 13.1228 26.8771C12.1921 25.9464 11.6684 24.6846 11.6667 23.3683V16.6315C11.6684 15.3153 12.1921 14.0534 13.1228 13.1227Z" fill="#CFA44A"/>
          </svg>
          <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" clip-rule="evenodd" d="M36.6667 19.9999C36.6667 29.2047 29.2048 36.6666 20 36.6666C10.7953 36.6666 3.33334 29.2047 3.33334 19.9999C3.33334 10.7952 10.7953 3.33325 20 3.33325C29.2048 3.33325 36.6667 10.7952 36.6667 19.9999ZM25.4825 14.2017C26.5066 14.3442 27.6097 14.9561 27.943 15.9911C28.4656 18.6386 28.4686 21.3623 27.9518 24.0109C27.6184 25.035 26.5154 25.6578 25.5 25.8004C21.8494 26.1863 18.1682 26.1863 14.5176 25.8004C13.4934 25.6578 12.3904 25.0438 12.0483 24.0109C11.5285 21.3629 11.5285 18.6391 12.0483 15.9911C12.3816 14.9648 13.4847 14.3442 14.5 14.2017C18.1505 13.8135 21.8319 13.8135 25.4825 14.2017ZM23.2061 19.9999L18.0066 16.8069V23.1929C19.3033 22.3996 20.5758 21.6171 21.8627 20.8258C22.3083 20.5518 22.7555 20.2768 23.2061 19.9999Z" fill="#CFA44A"/>
          </svg>
          <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" clip-rule="evenodd" d="M36.6667 19.9999C36.6667 29.2047 29.2048 36.6666 20 36.6666C10.7953 36.6666 3.33334 29.2047 3.33334 19.9999C3.33334 10.7952 10.7953 3.33325 20 3.33325C29.2048 3.33325 36.6667 10.7952 36.6667 19.9999ZM23.9474 20.7433L24.2237 18.4232C24.2314 18.362 24.2261 18.3 24.2083 18.241C24.1904 18.1821 24.1603 18.1276 24.12 18.081C24.0796 18.0345 24.0299 17.9969 23.9741 17.9709C23.9183 17.9448 23.8576 17.9308 23.7961 17.9297H21.0965V15.989C21.0965 15.1074 21.329 14.5175 22.5614 14.4977H23.6996C23.8159 14.4977 23.9274 14.4515 24.0097 14.3693C24.092 14.287 24.1382 14.1755 24.1382 14.0591V12.1052C24.1382 11.9889 24.092 11.8773 24.0097 11.795C23.9274 11.7128 23.8159 11.6666 23.6996 11.6666H21.8421C19.5746 11.6666 18.0263 13.0833 18.0263 15.6863V17.9363H16.2105C16.0942 17.9363 15.9826 17.9825 15.9004 18.0648C15.8181 18.147 15.7719 18.2586 15.7719 18.3749V20.6951C15.7719 20.8114 15.8181 20.923 15.9004 21.0052C15.9826 21.0875 16.0942 21.1337 16.2105 21.1337H18.0373L18.0241 28.0175C18.0235 28.0584 18.031 28.099 18.0461 28.137C18.0613 28.175 18.0837 28.2096 18.1122 28.239C18.1407 28.2683 18.1747 28.2917 18.2123 28.3079C18.2499 28.3241 18.2902 28.3327 18.3311 28.3333H20.7895C20.8717 28.3321 20.9501 28.2985 21.0076 28.2397C21.0651 28.181 21.0971 28.1019 21.0965 28.0197V21.1337H23.5088C23.6172 21.1343 23.722 21.0948 23.803 21.0227C23.884 20.9506 23.9354 20.8511 23.9474 20.7433Z" fill="#CFA44A"/>
          </svg>
        </span>
      </div>
      <p>
      Sledujte nás na Instragramu, YouTubu, nebo Facebooku  a buďte tak ellentesque mi ipsum, ultrices sit amet sem quis, bibendum mattis massa. Pellentesque ut eros ut velit ullamcorper pharetra nec id sem.
      </p>
      <grid-container class="sockyGrid">
        <grid-item>
          <a href="###" class="sockyItem">
            <img src="###">
          </a>
        </grid-item>
        <grid-item>
          <a href="###" class="sockyItem">
            <img src="###">
          </a>
        </grid-item>
        <grid-item>
          <a href="###" class="sockyItem">
            <img src="###">
          </a>
        </grid-item>
        <grid-item>
          <a href="###" class="sockyItem">
            <img src="###">
          </a>
        </grid-item>
        <grid-item>
          <a href="###" class="sockyItem">
            <img src="###">
          </a>
        </grid-item>
        <grid-item>
          <a href="###" class="sockyItem">
            <img src="###">
          </a>
        </grid-item>
        <grid-item>
          <a href="###" class="sockyItem">
            <img src="###">
          </a>
        </grid-item>
        <grid-item>
          <a href="###" class="sockyItem">
            <img src="###">
          </a>
        </grid-item>
      </grid-container>
    </div>
    """
  end
end
