class CreateCategoryValues < ActiveRecord::Migration[7.1]
  def change
    create_table :category_values do |t|
      t.references :typeable, polymorphic: true, null: false
      t.references :category, null: false, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
