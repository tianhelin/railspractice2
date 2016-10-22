class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.string :topic
      t.text :article
      t.timestamps null: false
    end
  end
end
