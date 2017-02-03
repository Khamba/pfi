class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :doctor_comment

      t.timestamps null: false
    end
  end
end
