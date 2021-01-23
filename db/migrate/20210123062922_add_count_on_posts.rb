# frozen_string_literal: true

class AddCountOnPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :count, :integer
    add_index :posts, :count
  end
end
