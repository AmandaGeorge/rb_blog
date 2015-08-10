class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column :users, :username, :email
  end
end
