class CreateOauthProfiles < ActiveRecord::Migration
  def self.up
    create_table :oauth_profiles do |t|
      t.integer :user_id
      t.string :provider
      t.string :token
      t.string :secret
      t.string :username
      t.string :email
      t.string :name
      t.string :img_url

      t.timestamps
    end
  end

  def self.down
    drop_table :oauth_profiles
  end
end
