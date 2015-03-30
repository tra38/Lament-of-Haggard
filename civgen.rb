require 'racegen'

def civilization
puts "A new civilization has been created!"
name = racegen
nameplural = plural(name) 
government = ['Tribe', 'Republic', 'Monarchy', 'Empire', 'Theocracy'].sample
case government
    when 'Tribe'
    title = ["the #{name} Tribe", "the #{name} Horde", "the #{name} Clans"].sample
    when 'Republic'
    title = ["the Council of #{nameplural}", "the #{name} Senate", "the #{name} Republic"].sample
    when 'Monarchy'
    title = ["the #{name} Kingdoms", "the #{name} Principalities", "the Grand Duchies of the #{nameplural}"].sample
    when 'Empire'
    title = ["the #{name} Empire", "the Holy #{name} Empire", "the Dominion of #{name}"].sample
    when 'Theocracy'
    title = ["the #{name} Archbishopric", "the #{name} Sultanate", "the #{name} Temple"].sample
##    when 'Communist'
##    title = ["The People\'s Republic of #{name}","The Commune of #{name}","The #{name} Union"].sample
    end
puts ["Once, #{title} ruled over the known world.", "Long ago, the world was controlled by an ancient regime: #{title}.","According to legend, #{title} once ruled the entire world.","Myth stated that #{title} had a domain that knew no bounds." ].sample
puts "And then the #{nameplural} all died from some mysterious disaster. The end."
end

def historyX
    event = "nil"
    year = 1500
    library = false
    invention = false
    war = false
    art = false
    enemy = nil
    loop do
        year += 5
        print "#{year}: "
        case event
        when "stop"
            puts "Thus ends the story of our civilization, leaving behind nothing but these records."
            break
        when "library"
            if library == false
                puts "The Grand Library was built to honor our ancestors. It was a joyous occassion."
                library = true
                event = newevent #necessary to prevent the same event re-triggering again
                puts event
            else
            puts "The Grand Library is researching a new philosophy based on the teaching of our ancestors."
            puts "But some people are suspicious. "
                if rand() > 0.5
                    puts "The dark arts have succeeded! We are doomed!"
                    event = "stop"
                else
                    puts "Luckily, brave souls burned the library down before anyone got hurt."
                    library = false
                    event = newevent
                    puts event
                end
            end
        when "invention"
            if invention == true
                puts "Our super-invention is demanding human sacrifices. "
                if rand() > 0.5
                    puts "We cannot sastify our invention's tastes, and the invention killed us all in response."
                    event = "stop"
                else
                    puts "Luckily, brave souls burned the invention down before anyone got hurt." 
                    invention = false
                    newevent
                    puts event
                end
            elsif library == false
                puts "We wanted to buld an invention, but we need the help of our ancestors. Let's honor them!"
                event = "library"
            else
                puts "The ancestors are pleased at our library and revealed to us an invention."
                invention = true
                event = newevent
                puts event
            end
        when "war"
            if war == false
                enemy ||= plural(racegen)
                puts "We encountered the #{enemy}. They were "+["genocidial madmen","murderous barbarians","uncivilized brutes","incredibly wealthy"].sample+" and so we had to fight against them." 
                war = true
                event = newevent
                puts event
            else
                puts "The #{enemy} sent their armed forces at our very capital."
                    if invention == true
                        puts "Our invention ate the enemy, saving us! But now it has a taste of human flesh..."
                        event = "invention"
                    elsif rand() > 0.5
                        puts "The hated enemy defeated our forces and burned our capital down!"
                        event = "stop"
                    else
                        puts "We sued for peace, paying a heavy tribute. The #{enemy} leaves us alone. The war ends."
                        war = false
                        event = newevent
                        puts event
                    end
            end
        else
            puts "This is a filler event."
            event = newevent
            puts event
            end
        end
    end

def newevent
    superarray = ["library", "invention", "war"]
    superarray.sample
end
