defmodule AppWeb.HelloHTML do
  use AppWeb, :html

  #def index(assigns) do
  #  ~H"""
  #  Hello!
  #  """
  #end

  embed_templates "hello_html/*"

  # Instead of required, you can specify a default
  # `default: nil`
  attr :messenger, :string, required: true

  def greet(assigns) do
    ~H"""
    <h1>Hello, <%= @messenger %>!</h1>
    """
  end

end
