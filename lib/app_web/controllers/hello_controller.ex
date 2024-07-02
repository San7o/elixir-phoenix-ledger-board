defmodule AppWeb.HelloController do
  use AppWeb, :controller

  # All controller actions take two arguments
  # - conn: contains the request information
  # - params: contains the parsed request parameters
  def index(conn, _params) do
    # Use different layouts, located in
    # `lib/app_web/components/layouts/`
    conn
      |> put_layout(html: :admin)
      |> render(:index)
  end

  def show(conn, %{"messenger" => messenger}) do
    ## Examples
    # text(conn, "From messenger #{messenger}")
    # json(conn, %{id: messenger})
    # Plug.Conn.put_resp_content_type("test/plain")
    # Plug.Conn.put_status(202)
    # Plug.Conn.send_resp(conn, 201, "")
    
    # messenger is assigned to conn
    # This calls the view in `hello_html.ex`
    render(conn, :show, messenger: messenger)
    # this is equivalent to
    # conn
    #   |> Plug.Conn.assign(:messenger, messenger)
    #   |> render(:show)
    #
    # you can assign multiple values to conn
  end
end
