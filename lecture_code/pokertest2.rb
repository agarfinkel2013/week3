
c = [ ]
while c.length < 5
  v = rand(52) + 1
  c << v unless c.include? v
end

c.each do |c|
        if c > 39
            puts "#{c-38} of clubs"
         elsif c>26
            puts "#{c-25} of diamonds"
        elsif c>13
            puts "#{c-12} of hearts"
        else
            puts "#{c+1} of spades"
        end
end
#try with loop
# card = card + 1



#<img src = "assets/queen_of_hearts.png">
#<img src = <% "assets/#{c}.png" %>>    ??
hgf
