# Patch connections between DataMapper and Rails 2.3.5
module DataMapper
  module Resource

    alias :attributes_orig= :attributes=

    # avoid object references in URLs
    def to_param
      id.nil?? "" :
        id.is_a?(Integer)? id.to_s : id.id.to_s
    end

    # silence deprecation warnings
    def new_record?; new?; end
    # avoid NoMethodError
    def update_attributes(*args); update(*args); end

    # make sure that all properties of the model that have to do with
    # date or time are converted run through the fix_date converter
    def attributes=(attributes)
      return if attributes.nil?
      self.class.properties.each do |t|
        if !(t.name.to_s =~ /.*_at/) && (t.primitive.to_s =~ /Date|Time/ ) &&
            attributes.include?("#{t.name.to_s}(1i)")
          puts 'here fixing attribute'
          MultiparameterAssignments.fix_date(attributes, t.name.to_s, t.primitive)
        end
      end
      self.attributes_orig=(attributes)
    end
  end
end
