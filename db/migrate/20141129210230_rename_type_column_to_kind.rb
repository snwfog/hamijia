class RenameTypeColumnToKind < ActiveRecord::Migration
  def change
    change_table :pets do |t|
      t.rename :type, :kind
    end
  end
end
