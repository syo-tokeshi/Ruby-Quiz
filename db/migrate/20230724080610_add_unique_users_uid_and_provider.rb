# frozen_string_literal: true

class AddUniqueUsersUidAndProvider < ActiveRecord::Migration[7.0]
  def change
    add_index :users, %i[uid provider], unique: true
  end
end
