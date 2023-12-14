class CreateBorrowings < ActiveRecord::Migration[7.1]
  def change
    create_table :borrowings do |t|
      t.date :borrow_date
      t.date :due_date
      t.boolean :returned
      t.boolean :renewal_request
      t.references :user, null: false, foreign_key: true
      t.references :copy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
