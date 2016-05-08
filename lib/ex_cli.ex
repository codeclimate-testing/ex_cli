defmodule ExCLI do
  @moduledoc """
  Module containing functions to interact with an application generated by `ExCLI.DSL`
  """

  @doc """
  Process the arguments using the given module, which should be using `ExCLI.DSL`
  """
  @spec process(atom, [String.t], Keyword.t) :: :ok | {:error, any}
  def process(module, args \\ System.argv, options \\ []) do
    app = module.__app__
    result = ExCLI.Parser.parse(app, args, options)
    IO.inspect(result)
    :ok
  end
end
