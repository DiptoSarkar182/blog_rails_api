class Blog < ApplicationRecord
  belongs_to :user
  has_one_attached :blog_image

  validate :blog_image_size_under_limit

  before_destroy :purge_blog_image
  before_update :purge_blog_image, if: :blog_image_changed?

  private
  def blog_image_size_under_limit
    if blog_image.attached? && blog_image.blob.byte_size > 5.megabytes
      blog_image.purge
      errors.add(:blog_image, 'is too large (max is 5MB)')
    end
  end

  def purge_blog_image
    if Rails.env.production?
      public_id = "ruby_on_rails/blog_rails_api/#{blog_image.key}"
      Cloudinary::Api.delete_resources([public_id], type: :upload, resource_type: :image)
    end
  end

  def blog_image_changed?
    blog_image.attached? && blog_image.attachment.blob_id_changed?
  end
end
