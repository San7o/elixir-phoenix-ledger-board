defmodule AppWeb.Plugs.Locale do
  import Plug.Conn

  @moduledoc """
  Use `?locale=fr` to set the locale on a page.
  """

  @locales ["en", "fr", "de"]

  def init(default), do: default

  def call(%Plug.Conn{params: %{"locale" => loc}} = conn, _default) when loc in @locales do
    assign(conn, :locale, loc)
  end

  def call(conn, default) do
    assign(conn, :locale, default)
  end
end
