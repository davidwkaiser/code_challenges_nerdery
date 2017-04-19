class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.belongs_to   :snack, index: true

      t.timestamps
    end
  end
end
