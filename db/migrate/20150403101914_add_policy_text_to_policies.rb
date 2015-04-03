class AddPolicyTextToPolicies < ActiveRecord::Migration
  def change
    add_column :policies, :policy_text, :string
  end
end
