class TestChannel < ApplicationCable::Channel
  def subscribed
    puts "Subscribed to TestChannel at test_#{params[:id]}"
    # binding.pry
    stream_from "test_#{params[:id]}"
    # stream_from "some_channel"
  end

  def receive(data)
    puts "Received data: #{data}"
    if Pet
      puts Pet.count
    else
      puts "No pets found"
    end
    ActionCable.server.broadcast("test_#{params[:id]}", data)
  end

  def unsubscribed
    puts "Unsubscribed from TestChannel"
    # Any cleanup needed when channel is unsubscribed
  end
end
