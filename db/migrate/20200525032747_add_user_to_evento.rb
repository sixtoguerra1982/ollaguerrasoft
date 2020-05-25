class AddUserToEvento < ActiveRecord::Migration[5.2]
  def change
    add_reference :eventos, :user, foreign_key: true, index: {unique: true}
  end
end
