class CreatePosts < ActiveRecord::Migration
    def change
        create_table :posts do |t|

            t.string :title, null: false, default: ""
            t.text :content, null: false, default: ""

            t.date :published_date, null: false

            t.integer :user_id
            t.string :picture

            t.timestamps null: false
        end
    end
end
