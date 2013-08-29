class CreateProfile < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.boolean :gender
      t.date :date_of_birth
      t.string :stackoverflow
      t.string :github
      t.string :twitter
      t.string :blog
      t.string :website
      t.string :bitbucket
      t.text :bio
    end
  end
end
