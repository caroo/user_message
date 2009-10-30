require 'forwardable'

module UserMessage
  class Message
    
    class Body
      extend Forwardable
      include Enumerable
      
      def_delegators :merged_content, :first, :[], :size, :each
      
      def initialize(string_or_ar_errors = nil)
        @content = []
        self << string_or_ar_errors if string_or_ar_errors
      end
      
      def <<(string_or_ar_errors)
        @content << string_or_ar_errors
      end
      
      private
        
        def merged_content
          @content.inject([]) do |mem, content|
            mem + (content.respond_to?(:full_messages) ? content.collect {|attr, msg| msg} : [content])
          end
        end
        
    end
    
    attr_accessor :headline, :body, :type
    
    def initialize(options = {})
      @headline = options[:headline]
      @body     = Body.new(options[:body])
      @type     = options[:type] || UserMessageTypes::Info
    end
    
  end
end