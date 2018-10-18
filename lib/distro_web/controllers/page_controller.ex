defmodule DistroWeb.PageController do
  use DistroWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html", title: Application.get_env(:distro, :title))
  end
end
