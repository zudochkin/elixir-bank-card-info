defmodule BankCardInfo do
  @moduledoc """
  Get all information for a bank card.
  """

  @doc """
  Getting card information. First paramter is first digits of a bank card.

  ## Examples
      iex> BankCardInfo.get "45717360"
      {:ok,
      %{bank: %{city: "Hjørring", logo: "", name: "Jyske Bank", phone: "+4589893300",
      url: "www.jyskebank.dk"}, brand: "Visa/Dankort",
      country: %{alpha2: "DK", latitude: 56, longitude: 10, name: "Denmark",
      numeric: "208"}, number: %{length: 16, prefix: "45717360"}, prepaid: false,
      scheme: "VISA", type: "DEBIT"}}
  """
  def get(bin) do
    case HTTPotion.get "https://lookup.binlist.net/#{bin}" do
      %HTTPotion.Response{body: body} -> {:ok, Poison.decode!(body, keys: :atoms)}
      %HTTPotion.ErrorResponse{message: message} -> {:error, message}
    end
  end


  @doc """
  Getting card information. First paramter is first digits of a bank card.

  ## Examples
  iex> BankCardInfo.get! "45717360"
  %{bank: %{city: "Hjørring", logo: "", name: "Jyske Bank", phone: "+4589893300",
  url: "www.jyskebank.dk"}, brand: "Visa/Dankort",
  country: %{alpha2: "DK", latitude: 56, longitude: 10, name: "Denmark",
  numeric: "208"}, number: %{length: 16, prefix: "45717360"}, prepaid: false,
  scheme: "VISA", type: "DEBIT"}
  """
  def get!(bin) do
    case get(bin) do
      {:ok, result} -> result
    end
  end
end
