defmodule AppWeb.PageJSON do
  # This accesses the json view
  # http://localhost:4000/?_format=json
  # Otherwise it will render the html view
  # in `page_html.ex`
  def home(_assigns) do
    %{message: "This is some JSON"}
  end
end
