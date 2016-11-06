class AddLinkToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :link, :string
  end
end
