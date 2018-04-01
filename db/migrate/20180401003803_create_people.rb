# frozen_string_literal: true

class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.date :dob

      t.timestamps
    end
  end
end
