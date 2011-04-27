module UserMessage
  module MessageHelper
  
    def render_user_messages(div_id = "user_message")
      if flash[:messages].present?
        render :partial => "shared/user_message",
          :locals => {
            :color           => flash[:messages].type.color,
            :type_name       => flash[:messages].type.name,
            :type_translated => flash[:messages].type.to_s,
            :headline        => flash[:messages].headline,
            :body            => flash[:messages].body,
            :div_id          => div_id
          }
      else
        content_tag :div, "", :id => div_id, :style => "display:none"
      end
    end
    
  end
end
