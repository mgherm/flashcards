class CreateDecks < ActiveRecord::Migration
  def change
    # rails v4 automatically figures out the reverse of commands in the "change" method, so no need for def up and def down
    create_table :decks do |t|
      t.string :name
      t.timestamps # adds a created_at and updated_at column
    end
  end
end
