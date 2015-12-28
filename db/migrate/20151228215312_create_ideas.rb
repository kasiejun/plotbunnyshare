class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|

      t.string :title
      t.string :plot
      t.string :character
      t.string :setting
      t.string :notes

      t.timestamps
    end
  end
end
