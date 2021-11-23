class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.integer :age
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
