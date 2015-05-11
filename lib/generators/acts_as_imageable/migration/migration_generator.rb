require 'rails/generators/migration'

module ActsAsImageable
  class MigrationGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    desc 'Generates migration and uploader for imageable'

    def self.orm
      Rails::Generators.options[:rails][:orm]
    end

    def self.source_root
      File.join(File.dirname(__FILE__), 'templates')
    end

    def self.orm_has_migration?
      [:active_record].include? orm
    end

    def self.next_migration_number(path)
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    end

    def create_migration_file
      if self.class.orm_has_migration?
        migration_template "#{self.class.orm.to_s unless self.class.orm.class.eql?(String)}/migration.rb", 'db/migrate/acts_as_imageable_migration.rb'
      end

      template 'image_uploader.rb', 'app/uploaders/acts_as_imageable/image_uploader.rb'
      template 'image.rb', 'app/models/acts_as_imageable/image.rb'
    end
  end
end
