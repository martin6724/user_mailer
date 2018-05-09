class CreateUserMailers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_mailers do |t|

      t.timestamps
    end
  end
end
