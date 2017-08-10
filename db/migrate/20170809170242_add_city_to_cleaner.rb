class AddCityToCleaner < ActiveRecord::Migration
  def change
    add_reference :cleaners, :city, index: true, foreign_key: true
  end
end
