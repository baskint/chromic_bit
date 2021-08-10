defmodule ChromicBit.Repo do
  use Ecto.Repo,
    otp_app: :chromic_bit,
    adapter: Ecto.Adapters.Postgres
end
