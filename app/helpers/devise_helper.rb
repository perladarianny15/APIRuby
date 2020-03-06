
module DeviseBootstrapViewsHelper
    def bootstrap_devise_error_messages!
      return '' if resource.errors.empty?
  
      messages = resource.errors.full_messages.map { |message| content_tag(:li, message) }.join
      sentence = I18n.t(
        'errors.messages.not_saved',
        count: resource.errors.count,
        resource: resource.class.model_name.human.downcase
      )
    end
  end