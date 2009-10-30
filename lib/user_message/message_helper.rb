module UserMessage
  module MessageHelper
  
    def render_user_messages(div_id="user_message")
      unless flash[:messages].blank?
        render :partial => "shared/user_message",
          :locals => {
            :color => flash[:messages].type.color,
            :type_name => flash[:messages].type.name,
            :headline  => flash[:messages].headline,
            :body      => flash[:messages].body,
            :div_id    => div_id
          }
      else
        empty_box_html = <<-EOF
<div id="#{div_id}" style="display:none"></div>
        EOF
      end
    end
    
    def update_user_messages(options = {:id => "user_message"})
      options = {:id => "user_message"}.merge(options)
      page = options[:page]
      div_id = options[:id]
      page.replace div_id, render_user_messages(div_id)
    end
    
  end
end