# frozen_string_literal: true

class CreateCredits < ActiveRecord::Migration[5.1]
  def change
    create_table :credits do |t|
      t.belongs_to :person, foreign_key: true, null: false
      t.belongs_to :movie, foreign_key: true, null: false

      t.timestamps
    end

    add_index :credits, %i[person_id movie_id], unique: true
  end
end
