class Grids::UsersGrid

  include Datagrid

  scope do
    ::User.includes(:profile)
  end

  filter(:id, :integer)
  filter(:email, :string)
  filter(:created_at, :date, :range => true)

  column(:id)
  column(:email, :header => "Name") do
    self.profile.name
  end
  column(:email, :header => "Surname") do
    self.profile.surname
  end
  column(:created_at) do |model|
    model.created_at.to_date
  end
end
