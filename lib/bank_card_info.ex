defmodule BankCardInfo do
  alias BankCardInfo.Result

  @moduledoc """
  Get all information for a bank card.
  """

  @doc """
  Getting card information. First paramter is first 6 digits of a bank card.

  ## Examples

      iex> BankCardInfo.get "123456"
      {:ok,
       %BankCardInfo.Result{bin: "123456", brand: "VISA",
       card_category: "", card_type: "DEBIT", country_code: "US",
       country_name: "United States", latitude: 38, longitude: -97,
       sub_brand: "Visa Plus"}}


  """
  def get(bin) do
    case HTTPotion.get "https://binlist.net/json/#{bin}" do
      %HTTPotion.Response{body: body} -> {:ok, Poison.decode!(body, as: %Result{})}
      %HTTPotion.ErrorResponse{message: message} -> {:error, message}
    end
  end
end
