class CreateRecipiesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :namew
      t.references :user, foreign_key: true
    end
  end
end
