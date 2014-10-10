class AddPrimaryLanguageToOwner < ActiveRecord::Migration
  def change
    add_column :owners, :primary_language, :string
  end
end
