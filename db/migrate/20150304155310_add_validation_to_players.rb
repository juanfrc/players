class AddValidationToPlayers < ActiveRecord::Migration
  def change
  	change_column_null :players, :email, false
  	change_column_null :players, :name, false
  	change_column_null :players, :username, false
  	change_column_null :players, :points, false
  	change_column_null :players, :active, false
  	change_column_default :players, :active, true
  end
end
