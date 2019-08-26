require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
  @user_name = params[:name]
  @user_name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    multiply = @number.to_i * @number.to_i
    multiply.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number_phrase = []
    @number.times do 
    @number_phrase << @phrase
    end
    @number_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4]  + " " + params[:word5] + "."
end

get '/:operation/:number1/:number2' do
  case params[:operation]
  when "add"
   a = params[:number1].to_i + params[:number2].to_i
   a.to_s
  when "subtract"
    s = params[:number1].to_i - params[:number2].to_i
    s.to_s
  when "multiply"
    m = params[:number1].to_i * params[:number2].to_i
    m.to_s
  when "divide"
    d = params[:number1].to_i / params[:number2].to_i
    d.to_s
  end
end

end