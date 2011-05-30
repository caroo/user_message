module UserMessage
  enum :MessageTypes do
  
    field :color
  
    Error({:color => :red})
    Info({:color => :green})
    System({:color => :orange})
    Sold({:color => :red})
    NoResult({:color => nil})
  
    def to_s
      defaults = [
        :"frontend.user_message_types.#{name.downcase}",
        :"user_messages.type.#{name.downcase}",
        name
      ]
      I18n.t(defaults.shift, :default => defaults)
    end
  end
end
