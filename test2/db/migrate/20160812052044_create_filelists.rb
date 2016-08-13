class CreateFilelists < ActiveRecord::Migration[5.0]
  def change
    create_table :filelists do |t|
      t.string :file_name
      t.string :file_data

      t.timestamps
    end
  end
end
