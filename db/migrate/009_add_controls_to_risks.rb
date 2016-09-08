class AddControlsToRisks < ActiveRecord::Migration
  def change
    add_column :risks, :controls, :text
  end
end
