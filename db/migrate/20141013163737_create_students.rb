class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :country
      t.string :city
      t.string :education

      t.timestamps
    end
  end
end
