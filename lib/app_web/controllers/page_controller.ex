defmodule AppWeb.PageController do
  use AppWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    redirect(conn, to: ~p"/redirect_test")
    # External redirect:
    # redirect(conn, external: "https://elixir-lang.org/")
  end

  def redirect_test(conn, _params) do
    # Flash messages are visualized with
    # <.flash_group flash={@flash} />
    conn
      |> put_flash(:error, "Let's pretend we have an error.")
      |> render(:home, layout: false)
  end
end
