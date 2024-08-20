class CreateMessagegs < ActiveRecord::Migration[7.1]
  def change
    create_table :messagegs do |t|
      t.text :body

      t.timestamps
    end
  end
end
