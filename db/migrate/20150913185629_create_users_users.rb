class CreateUsersUsers < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.belongs_to :user, index: true
      t.integer :friend_id
    end
  end
end
