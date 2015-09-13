class Pro < ActiveRecord::Base
	has_attached_file :photo, :styles => { :small => "150x150>" }
	 validates_attachment_content_type :photo, :content_type => %w(image/jpeg image/jpg image/png),
	  storage: :s3,
      s3_credentials: {
      access_key_id: "xxxxxxxxxxxxxxxxxxx",
      secret_access_key: "xxxxxxxxxxxxxxxxxxxxxxxxxxxx" },
      bucket: "xxxxxxxxxxxxxxxxxx"
end
