class RemoveStatusFromReview < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :status, :string
  end
end
