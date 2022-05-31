class AddEnglishAndChineseToWords < ActiveRecord::Migration[6.1]
  def change
    add_column :words, :chinese, :string
    add_column :words, :english, :string
  end
end
