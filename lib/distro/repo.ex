defmodule Distro.Repo do
  use Ecto.Repo,
    otp_app: :distro,
    adapter: Ecto.Adapters.Postgres
end
