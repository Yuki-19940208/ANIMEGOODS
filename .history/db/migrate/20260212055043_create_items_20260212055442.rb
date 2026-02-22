class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :title　　　#追加
      t.text :body　　　#追加
      t.integer :user_id　　　#追加
      t.timestamps
    end
  end
end
