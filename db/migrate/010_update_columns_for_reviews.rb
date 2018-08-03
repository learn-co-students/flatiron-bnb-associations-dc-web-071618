class UpdateColumnsForReviews < ActiveRecord::Migration
  def change
    rename_column :reviews, :text, :description
    add_column :reviews, :rating, :integer
    add_column :reviews, :reservation_id, :integer
  end
end
