class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :policies, :parties_id, :party_id
  end
end
