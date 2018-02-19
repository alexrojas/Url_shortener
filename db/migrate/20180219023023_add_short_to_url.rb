class AddShortToUrl < ActiveRecord::Migration[5.1]
  def change
    add_column :urls, :short, :string
  end
end
