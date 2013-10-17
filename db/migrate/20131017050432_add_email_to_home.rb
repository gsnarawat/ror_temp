class AddEmailToHome < ActiveRecord::Migration
  def change
    add_column :homes, :email, :string
  end
end
