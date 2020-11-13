class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  
  def validator(object)
    object.valid?
    model = object.class.name.underscore.to_sym
    field = params[model].first[0]
    @errors = object.errors[field]

    if @errors.empty?
      @errors = true
    else
      name = t("activerecord.attributes.#{model}.#{field}")
      @errors.map! { |e| "#{name} #{e}<br />" }
    end
  end
end
