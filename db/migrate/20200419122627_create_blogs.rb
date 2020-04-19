class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :summary
      t.text :content
      t.string :url
      t.string :heasline_image
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.string :image_4
      t.string :image_5
      t.string :publish_date

      t.timestamps
    end
  end
end
