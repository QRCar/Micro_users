defmodule Users.OrganisationTest do
  use Users.DataCase

  alias Users.Organisation

  describe "organisations" do
    alias Users.Organisation.Orga

    @valid_attrs %{email: "some email"}
    @update_attrs %{email: "some updated email"}
    @invalid_attrs %{email: nil}

    def orga_fixture(attrs \\ %{}) do
      {:ok, orga} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Organisation.create_orga()

      orga
    end

    test "list_organisations/0 returns all organisations" do
      orga = orga_fixture()
      assert Organisation.list_organisations() == [orga]
    end

    test "get_orga!/1 returns the orga with given id" do
      orga = orga_fixture()
      assert Organisation.get_orga!(orga.id) == orga
    end

    test "create_orga/1 with valid data creates a orga" do
      assert {:ok, %Orga{} = orga} = Organisation.create_orga(@valid_attrs)
      assert orga.email == "some email"
    end

    test "create_orga/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Organisation.create_orga(@invalid_attrs)
    end

    test "update_orga/2 with valid data updates the orga" do
      orga = orga_fixture()
      assert {:ok, %Orga{} = orga} = Organisation.update_orga(orga, @update_attrs)
      assert orga.email == "some updated email"
    end

    test "update_orga/2 with invalid data returns error changeset" do
      orga = orga_fixture()
      assert {:error, %Ecto.Changeset{}} = Organisation.update_orga(orga, @invalid_attrs)
      assert orga == Organisation.get_orga!(orga.id)
    end

    test "delete_orga/1 deletes the orga" do
      orga = orga_fixture()
      assert {:ok, %Orga{}} = Organisation.delete_orga(orga)
      assert_raise Ecto.NoResultsError, fn -> Organisation.get_orga!(orga.id) end
    end

    test "change_orga/1 returns a orga changeset" do
      orga = orga_fixture()
      assert %Ecto.Changeset{} = Organisation.change_orga(orga)
    end
  end
end
