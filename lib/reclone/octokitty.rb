class Octokitty
  def self.get_config(user_name, user_password)
    Octokit.configure do |c|
      c.login = user_name
      c.password = user_password
    end
    user = Octokit.user ? user : nil
  end
end