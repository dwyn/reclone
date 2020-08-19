class Reclone::CLI
  attr_accessor :current_user

  def call
    up?
    puts "Hiya friend"; sleep 0.5
    log_in
    recloner
	end

  # Internet connection check
  def up?
    if Net::Ping::External.new("www.google.com").ping? != true
      puts "You need an internet connection to run this program..."
      puts "As if I needed to tell you that."; sleep 1
      puts "Good bye for now."
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

    if user_name == "exit"
      exit!
    elsif @current_user.user_info
      puts "Oh hayyy, I found you!"
    else
      puts "I'm having a hard time locating that username."
      puts "Please try again."
      log_in
    end
  end

  def recloner
    puts "Remember, the next step will clone repositories in"
    puts "in your present working directory."
    puts "Make sure you are in the right place before doing the thing."
    puts " "
    puts "Shall I do the thing?"
  
    user_input = gets.strip

    if user_input == "yes"|| user_input == "y" || user_input == 'yis' ||user_input == "yeth"
      current_user.repos.each do |repo|
        if !directory_exists?(repo[:full_name])
          `git clone #{repo[:ssh_url]}`
        end
      end
    elsif user_input == "no"|| user_input == "n" || user_input == "nah"
      puts "Thanks for stopping by, I guess?"
      exit
    else
      recloner
    end
  end      
end
