class Item < ApplicationRecord
    def change
    create_table :books do |t|
      t.string :title　　　#追加
      t.text :body　　　#追加
      t.integer :user_id　　　#追加
      
      t.timestamps
    end
  end
end
