defmodule Menu do
  use Phoenix.Component

  def menu(assigns) do
    ~H"""
    <script>
      window.onscroll = function() {
        var menu = document.getElementById('menu');
        var menuAbove = document.getElementById('menuAbove');
        if ( window.pageYOffset > 100 ) {
            menu.style.margin = "0px";
            menuAbove.style.margin = "-60px 0";
        } else {
            menu.style.margin = "60px";
            menuAbove.style.margin = "0";
        }
      }
    </script>
    <div class="menuWrap" id="menu">
      <div class="menu noBreak">
        <span class="menuLogoContainer">
          <svg width="18" height="28" viewBox="0 0 18 28" fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <rect x="0.316406" width="17.3671" height="28" fill="url(#pattern0)"/>
            <defs>
              <pattern id="pattern0" patternContentUnits="objectBoundingBox" width="1" height="1">
              <use xlink:href="#image0_1468_2859" transform="scale(0.00340136 0.0021097)"/>
              </pattern>
              <image id="image0_1468_2859" width="294" height="474" xlink:href="data:image/png;base64,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"/>
            </defs>
          </svg>
        </span>
        <span class="w-3/5 pl-4">
          <h4 class="text-left">
            FLASHTONES
          </h4>
        </span>
        <span class="menuLinks">
          <a href="###" id="menuDetiId">
          pro děti
          </a>
          <a href="###" id="menuObleceniId">
          oblečení
          </a>
          <a href="###">
          eventy
          </a>
          <a href="###">
          studio
          </a>
          <a href="###" class="noBreak">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M19.0833 7.16667H17V7C17 5.67392 16.4732 4.40215 15.5355 3.46447C14.5979 2.52678 13.3261 2 12 2C10.6739 2 9.40215 2.52678 8.46447 3.46447C7.52678 4.40215 7 5.67392 7 7V7.16667H4.91667C4.14601 7.17596 3.40953 7.48624 2.86455 8.03122C2.31957 8.5762 2.0093 9.31267 2 10.0833V17.4167C2.01066 18.6289 2.49697 19.7885 3.35421 20.6458C4.21145 21.503 5.37106 21.9893 6.58333 22H17.4167C18.6289 21.9893 19.7885 21.503 20.6458 20.6458C21.503 19.7885 21.9893 18.6289 22 17.4167V10.0833C21.9907 9.31267 21.6804 8.5762 21.1354 8.03122C20.5905 7.48624 19.854 7.17596 19.0833 7.16667ZM9.5 7C9.5 6.33696 9.76339 5.70107 10.2322 5.23223C10.7011 4.76339 11.337 4.5 12 4.5C12.663 4.5 13.2989 4.76339 13.7678 5.23223C14.2366 5.70107 14.5 6.33696 14.5 7V7.16667H9.5V7ZM19.5 17.4167C19.5027 17.691 19.4506 17.9631 19.3469 18.2171C19.2431 18.471 19.0898 18.7018 18.8958 18.8958C18.7018 19.0898 18.471 19.2431 18.2171 19.3469C17.9631 19.4506 17.691 19.5027 17.4167 19.5H6.58333C6.309 19.5027 6.03689 19.4506 5.78293 19.3469C5.52896 19.2431 5.29823 19.0898 5.10424 18.8958C4.91025 18.7018 4.75689 18.471 4.65314 18.2171C4.54939 17.9631 4.49733 17.691 4.5 17.4167V10.0833C4.49659 10.0277 4.50503 9.97203 4.52477 9.91994C4.5445 9.86784 4.57507 9.82053 4.61447 9.78113C4.65386 9.74174 4.70117 9.71117 4.75327 9.69143C4.80537 9.6717 4.86106 9.66326 4.91667 9.66667H7V10.75C7 11.0815 7.1317 11.3995 7.36612 11.6339C7.60054 11.8683 7.91848 12 8.25 12C8.58152 12 8.89946 11.8683 9.13388 11.6339C9.3683 11.3995 9.5 11.0815 9.5 10.75V9.66667H14.5V10.75C14.5 11.0815 14.6317 11.3995 14.8661 11.6339C15.1005 11.8683 15.4185 12 15.75 12C16.0815 12 16.3995 11.8683 16.6339 11.6339C16.8683 11.3995 17 11.0815 17 10.75V9.66667H19.0833C19.1389 9.66326 19.1946 9.6717 19.2467 9.69143C19.2988 9.71117 19.3461 9.74174 19.3855 9.78113C19.4249 9.82053 19.4555 9.86784 19.4752 9.91994C19.495 9.97203 19.5034 10.0277 19.5 10.0833V17.4167Z" fill="black"/>
            </svg>
            eshop
          </a>
        </span>
      </div>
          <div class="menuDeti">
            <a href="###">
              <b>Hlavní stránka</b>
              Hlavní stránka ZŠ Pro Děti
            </a>
            <a href="###">
              <b>ZŠ Plavání</b>
              Plavecké kurzy
            </a>
            <a href="###">
              <b>ZŠ Enviro</b>
              Školy v přírodě a příměstské tábory
            </a>
            <a href="###">
              <b>ZŠ Lyžování</b>
              Lyžařské kurzy
            </a>
            <a href="###">
              <b>ZŠ Doma</b>
              Učitel do domu
            </a>
            <a href="###">
              <b>ZŠ Výlety</b>
              Jednodenní a vícedenní výlety
            </a>
            <a href="###">
              <b>ZŠ Academy</b>
              Jednodenní a vícedenní výlety
            </a>
          </div>
          <div class="menuObleceni">
            <a href="###">
              <b>Ponožky: </b>
              Lorem ipsum dolor
            </a>
            <a href="###">
              <b>Dashiky: </b>
              Barevný oděv
            </a>
            <a href="###">
              <b>Šátky: </b>
              Lorem ipsum dolor
            </a>
            <a href="###">
              <b>Šperky: </b>
              Lorem ipsum dolor
            </a>
            <a href="###">
              <b>Kniha: </b>
              Lorem ipsum dolor
            </a>
          </div>
    </div>
    <div class="menuAbove" id="menuAbove">
      <a href="###">
      home
      </a>
      <a href="###">
      aktuality
      </a>
      <a href="###">
      blog
      </a>
      <a href="###">
      home
      </a>
      <a href="###">
      home
      </a>
      <a href="###">
      home
      </a>
      <a href="###">
      home
      </a>
      <a href="###">
      home
      </a>
    </div>
    """
  end
end
