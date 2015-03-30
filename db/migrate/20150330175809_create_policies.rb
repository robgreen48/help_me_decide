class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.integer :parties_id
      t.string :issue_area

      t.timestamps null: false
    end
  end
end
