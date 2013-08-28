class AddInitialMembers < ActiveRecord::Migration
  def up
    admin = Admin.new(email: "admin@elegan.com", password: "12345678")
    admin.save!

    teacher = Teacher.new(email: "teacher@elegan.com", password: "12345678")
    teacher.save!

    user = User.new(email: "user@elegan.com", password: "12345678")
    user.save!
  end

  def down

  end
end
