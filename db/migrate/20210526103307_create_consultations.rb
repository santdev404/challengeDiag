class CreateConsultations < ActiveRecord::Migration[6.1]
  def change
    create_table :consultations do |t|
      t.string :disease
      t.float :height
      t.float :weight
      t.float :body_mass
      t.float :temperature
      t.integer :respiratory_rate
      t.integer :systolic
      t.integer :diastolic
      t.integer :heart_rate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
