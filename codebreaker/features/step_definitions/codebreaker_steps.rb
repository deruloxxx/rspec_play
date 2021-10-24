module Fixture
  class Output
    def messages
      @messages ||= []
    end

    def puts(message)
      messages << message
    end
  end

  def output
    @output ||= Output.new
  end

  module_function :output
end

Given /^the secret code is "([^"]*)"$/ do |secret|
  game = Codebreaker::Game.new(Fixture.output)
  game.start(secret)
end

When('I start a new game') do
  game = Codebreaker:Game.new(Fixture.output)
  game.start
end

Then /^'I should see "([^"]*)"$/ do |message|
  output.messages.should include(message)
end