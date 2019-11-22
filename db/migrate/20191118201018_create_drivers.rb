class CreateDrivers < ActiveRecord::Migration[6.0]
  def change  
          create_table :drivers do |t|
            t.string   :name, limit: 255, null: false
            t.string   :surname, limit: 255, null: false
            t.date     :date_of_birth
            t.timestamps
            t.integer  :tc, limit:11
            t.integer  :tel
            t.string   :adress, limit: 255, null: false
            t.string   :comment
        
          end
        end
      end