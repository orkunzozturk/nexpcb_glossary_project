class AddPinyinToWords < ActiveRecord::Migration[6.1]
  def change
    add_column :words, :pinyin, :string
  end
end
