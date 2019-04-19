class CreateComment < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
    	t.references :post
    	t.string :body
    end
  end
end
