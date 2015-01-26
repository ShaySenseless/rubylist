class AddUserIndexToListings < ActiveRecord::Migration
  def change
  	add_reference :listings, :users, index: true
  end
end
