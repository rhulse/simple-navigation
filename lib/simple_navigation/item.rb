module SimpleNavigation
  
  # Represents an item in your navigation. Gets generated by the item method in the config-file.
  class Item
    attr_reader :key, :name, :url, :sub_navigation, :method
    
    # see ItemContainer#item
    def initialize(key, name, url, options, sub_nav_block)
      @key = key
      @method = options.delete(:method)
      @name = name
      @url = url
      @html_options = options
      if sub_nav_block
        @sub_navigation = ItemContainer.new
        sub_nav_block.call @sub_navigation
      end
    end
    
    # Returns true if this navigation item should be rendered as 'selected' for the specified current_navigation.
    def selected?(current_navigation)
      key == current_navigation
    end
        
    # Returns the html-options hash for the item, i.e. the options specified for this item in the config-file.
    # It also adds the 'selected' class to the list of classes if necessary. 
    def html_options(current_navigation)
      default_options = SimpleNavigation.config.item_keys_to_ids ? {:id => key.to_s} : {}
      options = default_options.merge(@html_options)
      options[:class] = [@html_options[:class], self.selected_class(current_navigation)].flatten.compact.join(' ')
      options.delete(:class) if options[:class].blank? 
      options
    end
        
    def selected_class(current_navigation) #:nodoc:
      selected?(current_navigation) ? SimpleNavigation.config.selected_class : nil
    end
    
        
  end
end