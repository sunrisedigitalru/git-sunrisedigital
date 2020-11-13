class Request
  extend ActiveModel::Naming
  include ActiveModel::Model

  attr_accessor :name, :phone, :email, :message

  validates_presence_of :name
  validates_presence_of :phone
  validates_format_of :phone, with: /((8|\+7)-?)?\(?\d{3}\)?-?\d{1}-?\d{1}-?\d{1}-?\d{1}-?\d{1}-?\d{1}-?\d{1}/ 
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/

  def initialize(args={})
    @name = args[:name]
    @phone = args[:phone]
    @email = args[:email]
    @message = String.new
    #compose_message(args)
  end

  def persisted?
    false
  end

  class << self
    def i18n_scope
      :activerecord
    end
  end

  def compose_message(args={})
    args.each do |k, val|
      key = I18n.t("activerecord.attributes.#{model_name}.#{k}")
      @message += "#{key}:&nbsp;#{val}&nbsp;<br/>"
    end
  end
  
  # def model_name
  #   self.class.name.underscore.to_sym
  # end
end