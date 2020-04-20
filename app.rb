require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
     @name = params[:name]
     "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    square = @num.to_i * @num.to_i
    "#{square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    ary = []
    @num.to_i.times { |num| ary << @phrase }
    "#{ary.join}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    first = params[:number1]
    second = params[:number2]
    @num1 = first.to_i
    @num2 = second.to_i
    if @operation == "add"
      @total = @num1 += @num2
    elsif @operation == "subtract"
      @total = @num1 - @num2
    elsif @operation == "multiply"
      @total = @num1 * @num2
    elsif @operation == "divide"
      @total = @num1 / @num2
    end
    "#{@total}" 
  end
end
