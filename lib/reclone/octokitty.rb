class Octokitty
#! Do I need this class?
  attr_reader :client, :repo_call

  def initialize
    @client = Octokit::Client.new(access_token: ENV["GIT_PAT"], auto_traversal: true, per_page: 100)
  end

  def user_config(user_name)
    begin  
      user = @client.user(user_name)
    rescue  
      user = nil 
    end 
    user
  end

  def repo_config(user)
    @client.repos(user, {sort: "created", direction: "desc"})
  end
end

#! Handling 404's from octokit: http://rubylearning.com/satishtalim/ruby_exceptions.html 
#! https://github.com/octokit/octokit.rb#pagination
#! https://developer.github.com/v3/repos/
#! https://www.rubydoc.info/github/octokit/octokit.rb/Octokit/Client/Search#search_code-instance_method
#! http://docs2.lfe.io/guides/traversing-with-pagination/