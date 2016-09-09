class AddResolutionDescriptionToRisks < ActiveRecord::Migration
  def change
    add_column :risks, :resolution_description, :text
    add_column :risks, :resolution_issue_id, :integer
  end
end
