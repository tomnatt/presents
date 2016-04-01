class AddReferencesToPresents < ActiveRecord::Migration
  def change
    add_reference :presents, :user, index: true, foreign_key: true
  end
end
