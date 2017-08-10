# BankCardInfo
[![Build Status](https://travis-ci.org/vredniy/elixir-bank-card-info.svg?branch=master)](https://travis-ci.org/vredniy/elixir-bank-card-info) [![Hex.pm Version](https://img.shields.io/hexpm/v/bank_card_info.svg?maxAge=900001)](https://hex.pm/packages/bank_card_info) [![Documentation](https://img.shields.io/badge/docs-latest-blue.svg)](https://hexdocs.pm/bank_card_info/)

Get brand, card type and country by first digits of a bank card.

## Installation

The package can be installed by adding `bank_card_info` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:bank_card_info, "~> 0.0.2"}]
end
```

## Usage

```elixir
BankCardInfo.get "45717360"

{:ok,
%{bank: %{city: "Hjørring", logo: "", name: "Jyske Bank", phone: "+4589893300",
url: "www.jyskebank.dk"}, brand: "Visa/Dankort",
country: %{alpha2: "DK", latitude: 56, longitude: 10, name: "Denmark",
numeric: "208"}, number: %{length: 16, prefix: "45717360"}, prepaid: false,
scheme: "VISA", type: "DEBIT"}}


BankCardInfo.get! "45717360"

%{bank: %{city: "Hjørring", logo: "", name: "Jyske Bank", phone: "+4589893300",
url: "www.jyskebank.dk"}, brand: "Visa/Dankort",
country: %{alpha2: "DK", latitude: 56, longitude: 10, name: "Denmark",
numeric: "208"}, number: %{length: 16, prefix: "45717360"}, prepaid: false,
scheme: "VISA", type: "DEBIT"}
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). The docs can
be found at [https://hexdocs.pm/bank_card_info](https://hexdocs.pm/bank_card_info).
