class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comment do |t|
      t.timestamp
      # Manque la relation au User avec user_id
      t.text :content
    end
  end
end
