class CreateCourseEnrollements < ActiveRecord::Migration[7.0]
  def change
    create_table :course_enrollements do |t|
      t.references :course, null: false, foreign_key: true
      t.integer :talent_id

      t.timestamps
    end
  end
end
