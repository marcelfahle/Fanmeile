class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :title
      t.string :page_type
      t.text :content

      t.timestamps
    end
  end
end