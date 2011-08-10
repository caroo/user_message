require 'forwardable'

module UserMessage
  class Message
    
    # translates key with I18n
    # lookup on following i18n keys for "registration_successful"
    # * user_messages.registration_successfull.headline
    # * user_messages.headline.registration_successful
    # * user_messages.registration_successful
    # * Registration Successful (humanized key version as fallback)
    def self.translate(translation_key, type = "headline", translation_values = {})
      defaults = [
        :"#{translation_key}.#{type}",
        :"#{type}.#{translation_key}",
        translation_key,
        ActiveSupport::Inflector.humanize(translation_key)
      ]
      I18n.translate(defaults.shift, {:default => defaults, :scope => [:user_messages]}.merge(translation_values))
    end
    
    def initialize(options = {})
      self.translation_values = options[:translation_values] || {}
      self.headline           = options[:headline]
      self.body               = Body.new(options[:body], options[:translation_values])
      self.type               = options[:type] || UserMessage::MessageTypes::Info
    end
    
    attr_accessor :body, :type, :translation_values
    attr_reader :headline
    
    def headline=(content)
      @headline = (content.is_a?(Symbol) ? UserMessage::Message.translate(content, "headline", translation_values) : content)
    end
    
    if defined?(::JSON)
      def to_json(*a)
        {
          ::JSON.create_id => self.class.name,
          :headline      => @headline,
          :body          => @body,
          :type          => @type,
        }.to_json(*a)
      end
    end
    
    class Body
      extend Forwardable
      include Enumerable
      
      def_delegators :merged_content, :first, :[], :size, :each
      
      def initialize(string_or_ar_errors = nil, translation_values = nil)
        @translation_values = translation_values || {}
        @content = []
        self << string_or_ar_errors if string_or_ar_errors
      end
      
      def <<(content)
        @content << (content.is_a?(Symbol) ? UserMessage::Message.translate(content, "body", @translation_values) : content)
      end

      private
      
      def merged_content
        @content.inject([]) do |mem, content|
          mem + (content.respond_to?(:full_messages) ? content.collect {|attr, msg| msg} : [content])
        end
      end
    end
    
  end
end
