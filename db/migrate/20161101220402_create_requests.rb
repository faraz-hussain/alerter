class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :requester_id
      t.integer :keyword_id
      t.integer :action_id

      t.timestamps

    end
  end
end
