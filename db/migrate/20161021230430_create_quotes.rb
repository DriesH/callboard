class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.string :text
      t.string :audio_path
      t.belongs_to :character, foreign_key: true

      t.timestamps
    end
  end
end
