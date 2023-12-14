# frozen_string_literal: true

class CreateReservations < ActiveRecord::Migration[7.1] # rubocop:disable Style/Documentation
  def change
    create_table :reservations do |t|
      t.date :reservation_date
      t.boolean :notification_sent
      t.boolean :reservation_completed
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
