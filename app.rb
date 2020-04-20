require_relative 'config/environment'

class App < Sinatra::Base
  
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    (number ** 2).to_s
  end

  get '/say/:number/:phrase' do
    string = ""
    params[:number].to_i.times do
      string += params[:phrase] + "\n"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2'do
    result = ""

    if params[:operation] == 'add'
      result = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == 'subtract'
      result = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == 'multiply'
      result = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == 'divide'
      result = params[:number1].to_f / params[:number2].to_f
    end
    result.to_s
  end
end