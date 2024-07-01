defmodule AppWeb.HelloController do
  use AppWeb, :controller

  # All controller actions take two arguments
  # - conn: contains the request information
  # - params: contains the parsed request parameters
  def index(conn, _params) do
    render(conn, :index)
  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, :show, messenger: messenger)
  end
end
