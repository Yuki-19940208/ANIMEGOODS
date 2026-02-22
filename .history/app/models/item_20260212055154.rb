class Item < ApplicationRecord
    def change
    create_table :books do |t|
      t.string :title
      t.text :body
      t.integer :user_　　　#追加
      
      t.timestamps
    end
  end
end
