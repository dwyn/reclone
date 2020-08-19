class User
  attr_accessor :username, :user_info, :client, :repos

  def initialize(name=nil)
    @client = Octokitty.new
    @user_info = @client.user_config(name)
    @repos = @client.repo_config(@user_info.login) if @user_info
  end

end