class CreateStudents < ActiveRecord::Migration[7.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :grade

      t.timestamps
    end
    add_index :students, :email, unique: true
  end
end
