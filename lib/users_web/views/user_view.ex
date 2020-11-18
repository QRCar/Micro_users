defmodule UsersWeb.UserView do
  use UsersWeb, :view
  alias UsersWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      email: user.email,
      last_name: user.last_name,
      first_name: user.first_name
    }
  end
end
