module ApplicationCable
  class Connection < ActionCable::Connection::Base

    def connect
      puts "Connection established"
      # self.current_user = find_verified_user
    end
  end
end
