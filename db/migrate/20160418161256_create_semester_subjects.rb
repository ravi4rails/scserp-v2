class CreateSemesterSubjects < ActiveRecord::Migration
  def change
    create_table :semester_subjects do |t|
      t.references :semester, index: true, foreign_key: true
      t.references :subject, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
