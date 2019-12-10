require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    user_name = params[:name]
    user_name.reverse
  end

  get "/square/:number" do
    num = params[:number].to_i
    ans = num * num
    ans.to_s
  end

  get '/say/:number/:phrase' do
    phr = params[:phrase]
    num = params[:number]

    "#{phr}" * num.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    wrd1 = params[:word1]
    wrd2 = params[:word2]
    wrd3 = params[:word3]
    wrd4 = params[:word4]
    wrd5 = params[:word5]

    "#{wrd1} #{wrd2} #{wrd3} #{wrd4} #{wrd5}."
  end

  get '/:operation/:number1/:number2' do
    opp = params[:operation]
    num_1 = params[:number1].to_i
    num_2 = params[:number2].to_i

    case opp
    when "add"
      "#{num_1 + num_2}"
    when "subtract"
      "#{num_1 - num_2}"
    when "multiply"
      "#{num_1 * num_2}"
    when "divide"
      "#{num_1 / num_2}"
    end
    
  end

end