class ChangeTeamIdToNullTrue < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :team_id, :integer, :null => true
  end
end
