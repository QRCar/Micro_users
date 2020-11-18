# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Users.Repo.insert!(%Users.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

IO.puts("Adding a couple of users...")

Users.Repo.Migrations.DatabaseSeeder.seed(5)
# Users.Repo.insert! %{email: "#{Faker.Name}@#{Faker.Name}.com", first_name: Faker.Name, last_name: Faker.Name}
