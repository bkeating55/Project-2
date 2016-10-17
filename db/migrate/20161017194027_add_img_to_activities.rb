class AddImgToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :img_url, :string
  end
end
