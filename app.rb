require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @result = params[:number].to_i * params[:number].to_i
    "#{@result}"
  end

  get "/say/:number/:phrase" do
    str = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times { str += "#{@phrase}\n" }
    str
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @one = params[:number1]
    @two = params[:number2]
    @operation = params[:operation]

    if @operation == "add"
      "#{@one.to_i + @two.to_i}"
    elsif @operation == "subtract"
      "#{@one.to_i - @two.to_i}"
    elsif @operation == "multiply"
      "#{@one.to_i * @two.to_i}"
    elsif @operation == "divide"
      "#{@one.to_i / @two.to_i}"
    end
  end
end