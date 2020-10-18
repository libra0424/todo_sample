# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false, comment: 'タスク名'
      t.boolean :is_done, default: false, null: false, comment: 'タスクの完了'

      t.timestamps
    end
  end
end
