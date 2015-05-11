##
# Author:: FuSheng Yang (mailto:sysuyangkang@gmail.com)
# Copyright:: Copyright (c) 2015 thecampus.cc
# License:: Distributes under the same terms as Ruby
# ActsAsImageable
module ActsAsImageable
  class NotAllowedImageMimeType < Exception
    def initialize(image_mime_type, allowed_mime_types = [])
      super "#{image_mime_type} is not allowed, just allow #{allowed_mime_types}."
    end
  end
end
