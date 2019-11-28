# # Below, we've written code for a simple chat program (Similar to Slack or
# # IRC). Recently, our users have been asking for more features, and we've
# # started expanding the code. It's getting out of hand!
# #
# # Please refactor this code to make it "better" and support our feature
# # requests. What "better" means is up to you. To get us started, here are some
# # initial features people have wanted:
# #
# # 1.Multiple channels: Users want separate channels (aka separate chat rooms)
# #   to talk on. Right now everyone talks in the same place.
# #
# # 2.More bots: Everyone wants to add their own bot. We need to be able
# #   to write more bots in a scalable way, and ideally turn them on and off
# #   on each channel.
# #
# # Meta note: Feel free to lookup whatever you need and change whatever you
# # feel appropriate to change.




class Chat
  attr_accessor :messages, :channel_name
  attr_reader  :points, :aways

  def initialize(channel)
    @channel_name = channel
    @messages = []
    @aways = []
    @points = {}
  end

#   class Bots

#   end




  def givepoint(sender, message)
    puts "this gets call"
    person = message[11...message.length-1]

    if !@points.include?(person)
      @points[person] = 0
    end

    @points[person] += 1

    if @points[person] > 1
      @messages.push("Bot: #{person} now has #{@points[person]} points.")
    else
      @messages.push("Bot: #{person} now has #{@points[person]} point.")
    end
  end

  def setaway(sender, message)
      @messages.push("Bot: Thanks, your away message has been saved.")
      @aways.push({"sender": sender, "message": message[9...message.length-1]})
  end

  def hangout(sender, message)
    @messages.push("Bot: Starting Hangout...")
  end


  def receive(sender, message)
    @messages.push("#{sender}: #{message}")

    @aways.each do |away|
      @messages.push("#{away[:sender]} (Autoreply): #{away[:message]}")
    end

    match = /\/(\w)+/.match(message)
    if match
      command = match[0]
      command = command[1..command.length-1]
      puts command
      self.method("#{ command }").call(sender, message)
    end
  end
end


class TestRunner
  def run
    test = Chat.new('test channel')
    test.receive("Alicia", "What's the status of project Edgehill?")
    test.receive("Hannah", "Not sure, we should ask Jordan.")
    test.receive("Alicia", "Ahh ok - thanks.")
    test.receive("Alicia", "/givepoint Hannah")
    test.receive("Alicia", "/givepoint Hannah")
    test.receive("Alicia", "/hangout Jordan")
    test.receive("Hannah", "/setaway Be back in a bit")
    test.receive("Alicia", "Lunch?")

    expected_output = [
      "Alicia: What's the status of project Edgehill?",
      "Hannah: Not sure, we should ask Jordan.",
      "Alicia: Ahh ok - thanks.",
      "Alicia: /givepoint Hannah",
      "Bot: Hannah now has 1 point.",
      "Alicia: /givepoint Hannah",
      "Bot: Hannah now has 2 points.",
      "Alicia: /hangout Jordan",
      "Bot: Starting Hangout...",
      "Hannah: /setaway Be back in a bit",
      "Bot: Thanks, your away message has been saved.",
      "Alicia: Lunch?",
      "Hannah (Autoreply): Be back in a bit"
    ]
    pp test.messages
    p '-------------------------------'
    if test.messages == expected_output
      print "Tests Pass"
    else
      print "Tests Failed"
    end
  end
end

TestRunner.new().run()
