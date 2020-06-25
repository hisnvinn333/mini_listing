class AddPrefectureCodeToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :prefecture_code, :integer
  end
end
