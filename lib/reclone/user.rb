class User
  attr_accessor :username, :password

  # def initialize(name=nil, password=nil)
  #   @name = name
  #   @password = password
  # end

  def authenticate(user_name, user_password)
    Octokitty.get_config(user_name, user_password)
  end
end