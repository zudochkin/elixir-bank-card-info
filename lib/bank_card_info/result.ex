defmodule BankCardInfo.Result do
  @derive [Poison.Encoder]

  @moduledoc """
  Struct for getting bank card information
  """

  @doc """
  Example

  ```
  %{"bin" => "404374", "brand" => "VISA", "card_category" => "",
   "card_type" => "DEBIT", "country_code" => "RU",
   "country_name" => "Russian Federation", "latitude" => 60, "longitude" => 100,
   "sub_brand" => "Visa Business"}}
   ```
  """
  defstruct [
    :bin, :brand, :card_category, :card_type, :country_code,
    :country_name, :latitude, :longitude, :sub_brand
  ]
end
