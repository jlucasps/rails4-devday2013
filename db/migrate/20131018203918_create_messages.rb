class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :user, foreign_key: true
      t.string :content, null: false
      t.timestamps
    end
  end
end
