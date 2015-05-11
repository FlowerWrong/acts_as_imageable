# encoding: utf-8

class ActsAsImageable::ImageUploader < CarrierWave::Uploader::Base

  # include CarrierWave::MiniMagick

  storage :file

  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def store_dir
    'uploads/images'
  end

  def filename
    if original_filename
      @name ||= Digest::MD5.hexdigest(File.dirname(current_path))
      "#{@name}.#{file.extension}"
    end
  end
end
