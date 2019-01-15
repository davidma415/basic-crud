class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :name
      t.string :type
      t.datetime :time

    end
  end
end
