class FixAddUserToListings < ActiveRecord::Migration
  def change
  	remove_column :users, :listings
   	add_reference :listings, :user, index: true
  end
end
