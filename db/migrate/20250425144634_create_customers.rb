class CreateCustomers < ActiveRecord::Migration[7.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :company
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
