require('sinatra')
require('sinatra/contrib/all')

get '/hi' do
  "hiya peeps"
end

get '/name/:first/:last' do
  return "Your name is #{params[:first].capitalize} #{params[:last].capitalize}"
end

# get '/RPS/:object1/:object2' do
#   object1 = params[:object1].to_s()
#   object2 =params[:object2].to_s()
#   return "#{object1} is first and #{object2} is second"  
# end


# get '/RPS/:object1/:object2' do
#   object1 = params[:object1].to_s()
#   object2 =params[:object2].to_s()
#   if object1 == "rock" && object2 == "scissors" then return "rock wins!"
#   end
# end

get '/RPS/:object1/:object2' do
  object1 = params[:object1].to_s()
  object2 =params[:object2].to_s()  
  if object1 == object2 then return "draw!"
  elsif ((object1 == "rock") && (object2 == "scissors")) || ((object1 == "scissors") && (object2 == "paper")) || ((object1 == "paper") && (object2 == "rock")) then return " #{object1} wins!" 
  else "#{object2} wins!"
  end   
end

