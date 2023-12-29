class AddingDefaultToBooks < ActiveRecord::Migration[7.1]
  def change
    change_table :books do |t|
      t.rename :availablecopies, :available_copies
      t.rename :totalcopies, :total_copies
    end
    change_column_null :books, :available_copies, false 
    change_column_null :books, :total_copies, false 
    change_column_default :books, :available_copies, from: nil, to: 0 
    change_column_default :books, :total_copies, from: nil, to: 0 
  end
end
