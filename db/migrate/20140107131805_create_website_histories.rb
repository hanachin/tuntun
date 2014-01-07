class CreateWebsiteHistories < ActiveRecord::Migration
  def change
    create_table :website_histories do |t|
      t.references :website, index: true
      t.boolean :success
      t.text :body

      t.timestamps
    end
  end
end
