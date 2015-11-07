class AddAttrToEvents < ActiveRecord::Migration
  def change
    add_column :events, :url, :string
    add_column :events, :notes, :text
  end
end
