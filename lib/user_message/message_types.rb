enum :UserMessageTypes do
  
  attr_reader :color
  
  Error({:color => :red})
  Info({:color => :green})
  System({:color => :orange})
  Sold({:color => :red})
  NoResult({:color => nil})
  
  def init(attributes_hash)
    @color = attributes_hash[:color]
  end
  
  def name
    I18n.t(@name.downcase, :scope => [:frontend, :user_message_types])
  end
  
end