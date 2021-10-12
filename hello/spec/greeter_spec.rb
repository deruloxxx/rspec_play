class RSpecGreeter
  def greet
    "Hello RSpec!"
  end
end

# サンプルグループを宣言
describe "RSpec Greeter" do
  # サンプルを宣言
  it "should say 'Hello RSpec!' when it receives the greet() message" do
    # RSpecGreeterオブジェクトを初期化。出発点。(Given)
    greeter = RSpecGreeter.new
    # Greetメソッドから返された値を代入。アクションの部分。(When)
    greeting = greeter.greet
    # Greetメソッドから返された値が期待値になっているか確認。(Them)
    expect(greeting).to eq "Hello RSpec!"
  end
end