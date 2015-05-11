##
# Author:: FuSheng Yang (mailto:sysuyangkang@gmail.com)
# Copyright:: Copyright (c) 2015 thecampus.cc
# License:: Distributes under the same terms as Ruby
# ActsAsImageable
module ActsAsImageable
  module Imageable
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      def acts_as_imageable
        class_eval do
          has_many :images,
                   class_name: 'ActsAsImageable::Image',
                   as: :imageable,
                   dependent: :delete_all
        end

        include ActsAsImageable::Imageable::LocalInstanceMethods
      end
    end

    module LocalInstanceMethods

    end
  end
end

ActiveRecord::Base.send :include, ActsAsImageable::Imageable
