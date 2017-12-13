class RemoveAttrToImages < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :title, :string
    remove_column :images, :text, :text
  end
end
