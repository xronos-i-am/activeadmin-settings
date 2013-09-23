class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string  :name
      t.text    :string
      t.string  :file

      t.timestamps
    end
  end
end
