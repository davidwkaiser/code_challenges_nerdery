class CreateSnacks < ActiveRecord::Migration[5.0]
  def change
    create_table :snacks do |t|
      t.string    :name
      t.boolean   :optional
      t.string    :purchaselocations
      t.integer   :purchasecount
      t.string    :lastpurchasedate

      t.timestamps
    end
  end
end
