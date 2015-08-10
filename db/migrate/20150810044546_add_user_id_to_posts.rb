class AddUserIdToPosts < ActiveRecord::Migration
  def change
  	change_table :posts do |t|
  		t.references :owner
  	end
  end
end
