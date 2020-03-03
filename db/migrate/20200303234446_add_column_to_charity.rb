class AddColumnToCharity < ActiveRecord::Migration[5.2]
  def change
    add_column :charities, :phone_number, :string
  end
end
