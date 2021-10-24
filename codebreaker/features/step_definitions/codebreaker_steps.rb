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
  @game = Codebreaker::Game.new(Fixture.output)
  @game.start(secret)
end

When /^I guess "([^"]*)"$/ do |guess|
  @game.guess(guess)
end

Then /^the mark should be "([^"]*)"$/ do |mark|
  Fixture.output.messages.should include()
end