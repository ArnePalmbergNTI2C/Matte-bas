input = 234

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


    if bas > 36
        raise "Basen får inte vara störra än 36"
    end

    if bas < 2
        raise "Basen kan inte vara 1 eller 0"
    end
    system('cls')

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

    result = [result,bas,inputt]

    return result


end

def bas_n()

    system('cls')

    return "Funkar inte nu."

end

system('cls')

puts "Är basen på inputen 10 skriv 1. Om basen på inputen är n skriv 2." 
input = gets.chomp

if input == "1"

    result = bas_10()

    puts "Talet #{result[2]} med basen 10 är talet #{result[0]} med basen #{result[1]}."

elsif input == "2"

    puts bas_n()

else
    raise "Skriv 1 eller 2."
end