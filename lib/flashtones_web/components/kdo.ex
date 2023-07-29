defmodule Kdo do
  use Phoenix.Component

  def kdo(assigns) do
    ~H"""
    <div class="kdo">
      <div class="kdoText">
        <h3>KDO JSME</h3>
        <p>moris piktus no hombres allos novadum, ilyyy sooo much!!</p>
        <div>
          <a href="###">
            O nás
          </a>
          <a href="###">
            Historie flashtones
          </a>
          <a href="###">
            Naši lidé
          </a>
        </div>
      </div>
      <div class="kdoPersons">
        <a href="###">
        <img src="https://placehold.co/270x240" />
          <h4>
            Marcel Valouch
          </h4>
          <p>
            Hlavní manager ZŠ PRO DĚTI
          </p>
        </a>
        <a href="###">
        <img src="https://placehold.co/270x240" />
          <h4>
            Omar el Karib
          </h4>
          <p>
            Hlavní manager ZŠ PRO DĚTI
          </p>
        </a>
      </div>
    </div>
    """
  end
end
