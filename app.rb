require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @username = params[:name]
    @username.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @numsquare = @number * @number
    @numsquare.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @string = []
    @number.times do
      @string << @phrase
    end
    "'#{@string.join("', '")}'"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = params.map do |key, value|
      value
    end
    "#{@string.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_f
    @num2 = params[:number2].to_f
    if @operation == "add"
      @num3 = (@num1 + @num2).to_s
    elsif @operation == "subtract"
      @num4 = (@num1 - @num2).to_s
    elsif @operation == "divide"
      @num5 = (@num1 / @num2).to_s
    elsif @operation == "multiply"
      @num6 = (@num1 * @num2).to_s
    elsif @operation == "modulus"
      @num7 = (@num1 % @num2).to_s
    else
      "Error"
    end
  end
end