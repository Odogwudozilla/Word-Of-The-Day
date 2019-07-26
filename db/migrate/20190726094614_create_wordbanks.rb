class CreateWordbanks < ActiveRecord::Migration[5.2]
  def change
    create_table :wordbanks do |t|
      t.text :topic
      t.text :description

      t.timestamps
    end
  end
end
