
    secret = []
    result = ''
    play = 0
    for i in 1..4
        secret.push(rand(0..9))
    end

    begin
        guess = gets.chomp.split('').map{|x| x.to_i}
        picos = 0
        bagels = 0
        puts guess
        for i in 0..3
            if secret[i] == guess[i]
                picos += 1 
            end
        end
        guess.uniq.each{|num| bagels+=1 if secret.include?(num)}
        if bagels<picos 
            result = "#{picos} picos, 0 bagel"
        else
            result = "#{picos} picos, #{bagels-picos} bagel"
        end
        puts result
        if picos == 4
            puts "You won!!"
            break
        elsif play == 12
            puts "You did't get it. It's #{secret}"
        end
        play += 1
    end while play <= 12
