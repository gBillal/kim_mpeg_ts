defmodule MPEG.TS.Unmarshaler do
  @type t :: module()
  @type result_t :: struct() | map()

  @callback unmarshal(bitstring(), boolean()) :: {:ok, result_t()} | {:error, any()}
  @callback is_unmarshable?(bitstring(), boolean()) :: boolean()
end
