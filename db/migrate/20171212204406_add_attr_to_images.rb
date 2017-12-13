class AddAttrToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :url, :string
    add_column :images, :alt, :text
    add_column :images, :caption, :text
  end
end
