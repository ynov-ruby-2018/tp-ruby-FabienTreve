class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comment do |t|
      t.timestamp
      t.text :content
    end
  end
end
