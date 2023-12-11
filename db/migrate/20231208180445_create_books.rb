# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[7.1] # rubocop:disable Style/Documentation
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.string :isbn
      t.integer :availablecopies
      t.integer :totalcopies

      t.timestamps
    end
  end
end
