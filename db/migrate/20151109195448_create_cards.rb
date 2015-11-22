class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :text_ru
      t.string :text_en
      t.date :review_date

      t.timestamps
    end
  end
end
