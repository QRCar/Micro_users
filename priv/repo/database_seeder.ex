defmodule Users.Repo.Migrations.DatabaseSeeder do
  @moduledoc false
  alias Faker.{Lorem, Superhero}

  def seed(number) do
    Enum.each(1..number, fn _ ->
      player_params = %{
        email: "#{Faker.Name}@#{Faker.Name}.com",
        last_name: Faker.Name,
        first_name: Faker.Name
      }
    end)
  end
end
