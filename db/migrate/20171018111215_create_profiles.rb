class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :location_city
      t.string :location_state
      t.string :location_country_code
      t.string :hometown_city
      t.string :hometown_state
      t.string :hometown_country_code
      t.string :job
      t.string :company
      t.string :partner_first_name
      t.string :partner_last_name
      t.date :birthdate
      t.string :contact_no
      t.string :profile_image_data
      t.string :cover_image_data

      t.timestamps
    end
  end
end
