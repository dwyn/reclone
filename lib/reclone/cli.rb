class Reclone::CLI
  attr_accessor :current_user
  @@counter = 0

  def initialize
    @@counter += 1
  end
  #? Reclone::CLI.new.call
  def call
    up?
    # get_config
    puts "Hello human."; sleep 0.5
    log_in
    puts "oh haayyy"
    recloner
	end

  # Internet connection check
  def up?
    if Net::Ping::External.new("www.google.com").ping? != true
      puts "You need an internet connection to run this program..."
      puts "As if I needed to tell you that."; sleep 1
      puts "Good bye for now, human."
      exit
    end
  end

  def directory_exists?(directory)
    Dir.exists?(directory)
  end

  def log_in
    puts "Please enter your Github user name."
    user_name = gets.strip.to_s
    @current_user = User.new(user_name)
# binding.pry
    if user_name == "exit"
      exit!
    elsif @current_user.user_info
      puts "User account found."
    else
      puts "I'm having a hard time locating that username."
      puts "Please try again."
      log_in
    end
  end

  def recloner
    # puts "Where would you like to reclone your repositories?"
    # puts 'eg: ~/Development/code/rc'

    # user_input = gets.strip

    puts "Shall I do the thing?"
    user_input = gets.strip

    if user_input == "yes"|| user_input == "y" || user_input == 'yis' ||user_input == "yeth"

      current_user.repos.each do |repo|
        if !directory_exists?(repo[:full_name])
          `git clone #{repo[:ssh_url]}`
        end
      end
    else
      puts "Then why are you even here?"
      exit
    end
  end
      
end
