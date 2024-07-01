# elixir-phoenix-ledger-board

## Project statement

This project aims to recreate the application [ledger-board](https://github.com/San7o/ledger-board) in `Elixir`
with the `Phoenix` framework. The application visualizes personal finance data saved in `ledger` format.
The application follows all the best practices for scaling and heavy use of distributed systems architecture.

## Requirements
You need `erlang` and `elixir` installed. If you are on `NixOS`, you can run the following command to access
the developement environment:
```bash
nix develop
```

You need to install the required dependencies with:
```bash
mix deps.get
```

# Running the app
Run PostgreSQL:
```bash
cd postgres-docker
sudo docker compose up --build
```

Create `ecto` DB:
```bash
mix ecto.create
```

Run the application:
```bash
mix phx.server
```

You can acces the web app by connecting to:
```
http://localhost:4000
```

# TODO

https://hexdocs.pm/phoenix/plug.html
