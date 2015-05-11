module ActsAsImageable
  class Image < ::ActiveRecord::Base
    belongs_to :imageable, polymorphic: true

    validates :image_name, :imageable_id, :imageable_type, :image_uid, presence: true
    validates :image_name, :image_uid, uniqueness: true

    default_scope -> { order('created_at ASC') }

    # mount_uploader :image_name, ActsAsImageable::ImageUploader

    def self.uuid
      SecureRandom.urlsafe_base64(nil, false)
    end
  end
end
