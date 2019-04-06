# frozen_string_literal: true

class DeviseEditUsers < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    add_index :users, :username,              unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
