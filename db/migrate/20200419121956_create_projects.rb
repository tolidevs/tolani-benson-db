class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :summary
      t.text :description
      t.string :frontend_repo
      t.string :backend_repo
      t.string :url
      t.string :image
      t.string :video
      t.string :publish_date

      t.timestamps
    end
  end
end
