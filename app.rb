require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @square = (params[:number].to_i ** 2)
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @phrase = (params[:phrase] * params[:number].to_i)
    "#{@phrase}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @five_guys = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]
   "#{@five_guys}." 
  end

  get '/:operation/:number1/:number2' do
    operator = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i

    if operator == "add"
      @solution = n1 + n2
    elsif operator == "subtract"
      @solution = n1 - n2
    elsif operator == "multiply"
      @solution = n1 * n2      
    else operator == "divide"
      @solution = n1 / n2
    end
    @solution.to_s
  end



end