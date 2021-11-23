class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :credential

      t.timestamps
    end
  end
end
