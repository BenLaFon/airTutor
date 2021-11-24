class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :credential
      t.text :course_info
      t.text :education_background
      t.text :teaching_credentials
      t.string :course_title
      t.string :image_url

      t.timestamps
    end
  end
end
