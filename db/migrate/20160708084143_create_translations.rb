class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.text :punjabi
      t.text :urdu

      t.timestamps
    end
  end
end
