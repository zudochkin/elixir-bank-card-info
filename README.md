# BankCardInfo
[![Build Status](https://travis-ci.org/vredniy/elixir-bank-card-info.svg?branch=master)](https://travis-ci.org/vredniy/elixir-bank-card-info) [![Hex.pm Version](https://img.shields.io/hexpm/v/bank_card_info.svg?maxAge=900000)](https://hex.pm/packages/bank_card_info) [![Documentation](https://img.shields.io/badge/docs-latest-blue.svg)](https://hexdocs.pm/bank_card_info/)

Get brand, card type and country by first 6 digits of a bank card.

## Installation

The package can be installed by adding `bank_card_info` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:bank_card_info, "~> 0.0.1"}]
end
```

## Usage

```elixir
BankCardInfo.get "123456"

{:ok,
%BankCardInfo.Result{bin: "123456", brand: "VISA",
card_category: "", card_type: "DEBIT", country_code: "US",
country_name: "United States", latitude: 38, longitude: -97,
sub_brand: "Visa Plus"}}
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). The docs can
be found at [https://hexdocs.pm/bank_card_info](https://hexdocs.pm/bank_card_info).

