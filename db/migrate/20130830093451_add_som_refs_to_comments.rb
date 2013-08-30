class AddSomRefsToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :user, index: true
    add_reference :comments, :teacher, index: true
  end
end
