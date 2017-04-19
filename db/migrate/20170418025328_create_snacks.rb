class CreateSnacks < ActiveRecord::Migration[5.0]
  def change
    create_table :snacks do |t|
      # t.string    :name
      t.integer   :id
      # t.integer   :votecount
      # t.string    :lastpurchasedate
      # t.boolean   :optional
      # t.string    :purchaselocations

      t.timestamps
    end
  end
end
