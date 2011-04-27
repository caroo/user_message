module UserMessage
  enum :MessageTypes do
  
    field :color
  
    Error({:color => :red})
    Info({:color => :green})
    System({:color => :orange})
    Sold({:color => :red})
    NoResult({:color => nil})
  
    def to_s
      I18n.t(@name.downcase, :scope => [:frontend, :user_message_types])
    end
  end
end
