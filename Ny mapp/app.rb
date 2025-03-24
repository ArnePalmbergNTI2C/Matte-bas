def from_bas_10_to_n(input, bas)

    system("cls")

    if bas > 36
        raise "Basen får inte vara störra än 36"
    end

    if bas < 2
        raise "Basen kan inte vara 1 eller 0"
    end

    result = ""

    string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    if bas <= 10

        while input > 0

            rest = input % bas

            rest = rest.to_s
        
            skibidi = input / bas

            input = skibidi

            result = rest + result
            

        end

    else

        while input > 0

            rest = input % bas

            if rest > 9

                rest = rest - 10
                rest = string[rest]

            end
                
            skibidi = input / bas

            input = skibidi

            rest = rest.to_s
        

            result = rest + result
            
        end

    end

    return result

end

def bas_10()

    system('cls')

    puts "Skriv ett heltal med basen 10." 
    input = gets.chomp

    input_2 = input.to_i
    input_2 = input_2.to_s  
    if input != input_2
        raise "Inte ett heltal eller ett tal med basen 10"
    end

    input = input.to_i
    inputt = input

    puts "Vilken bas vill du skriva om talet till."
    bas = gets.chomp.to_i

    result = from_bas_10_to_n(input,bas)

    result = [result,bas,inputt]

    return result

end

def bas_n()

    system('cls')

    string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    puts "Skriv ett heltal med valfri bas." 
    input = gets.chomp


    puts "Vilken bas har talet." 
    bas = gets.chomp.to_i

    inputt = input[0].to_i

    if input[0] == inputt.to_s
        n = input[0].to_i
    else

        i = 0

        while i < string.length

            if input[0] == string[i]

                n = 10 + i

            end

            i +=1

        end

    end

    i = 1

    while i <= ((input.length) - 1)

        x = 0

        while x < string.length

            if input[i] == string[x]

                input[i] = 10 + x

            end

            x += 1

        end
       n = ((n * bas) + input[i].to_i)

        i += 1

    end

    p n

    puts "Vilken bas vill du skriva om talet #{input} till med basen #{bas}" 
    bas_2 = gets.chomp.to_i

    if bas_2 > 36
        raise "Basen får inte vara störra än 36"
    end

    if bas_2 < 2
        raise "Basen kan inte vara 1 eller 0"
    end

    n = from_bas_10_to_n(n, bas_2)

    result = [n, bas_2, bas, input]

    return result

end

system('cls')

puts "Är basen på talet 10 skriv 1. Om basen på talet är n skriv 2." 
input = gets.chomp

if input == "1"

    result = bas_10()

    puts "Talet #{result[2]} med basen 10 är talet #{result[0]} med basen #{result[1]}."

elsif input == "2"

    result = bas_n()

    puts "Talet #{result[3]} med basen #{result[2]} är talet #{result[0]} med basen #{result[1]}."

else
    raise "Skriv 1 eller 2."
end