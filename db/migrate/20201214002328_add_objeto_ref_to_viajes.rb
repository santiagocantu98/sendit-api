class AddObjetoRefToViajes < ActiveRecord::Migration[6.0]
  def change
    add_reference :viajes, :objeto, null: false, foreign_key: true
  end
end
