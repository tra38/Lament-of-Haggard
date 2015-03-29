def civilization
puts "A new civilization has been created!"
name = "Bob"
government = ['Tribe', 'Republic', 'Monarchy', 'Empire', 'Theocracy'].sample
case government
    when 'Tribe'
    title = ["the #{name} Tribe", "the #{name} Horde", "the #{name} Clans"].sample
    when 'Republic'
    title = ["the Council of #{name}", "the #{name} Senate", "the #{name} Republic"].sample
    when 'Monarchy'
    title = ["the #{name} Kingdom", "the #{name} Principality", "the Grand Duchy of #{name}"].sample
    when 'Empire'
    title = ["the #{name} Empire", "the Holy #{name} Empire", "the Dominion of #{name}"].sample
    when 'Theocracy'
    title = ["the Archbishopric of #{name}", "the #{name} Sultanate", "the #{name} Temple"].sample
##    when 'Communist'
##    title = ["The People\'s Republic of #{name}","The Commune of #{name}","The #{name} Union"].sample
    end
puts ["Once, #{title} ruled over the known world.", "Long ago, the world was controlled by an ancient regime: #{title}.","According to legend, #{title} once ruled the entire world.","Myth stated that #{title} had a domain that knew no bounds." ].sample
puts "And then they died. The end."
end

def historyX
    superarray = ["library", "invention", "war"]
    event = "nil"
    library = false
    invention = false
    war = false
    art = false
    loop do
        case event
        when "stop"
            puts "Okay, let's stop now."
            break
        when "library"
            if library == false
                puts "The Grand Library was built to honor the ancestors."
                library = true
                event = superarray.sample #necessary to prevent the same event re-triggering again
                puts event
            else
            puts "The library is practicing dark arts to honor the ancestors. Those dark arts might doom our society."
                if rand() > 0.5
                    puts "The dark arts have succeeded! We are doomed!"
                    event = "stop"
                else
                    puts "Luckily, brave souls burned the library down before anyone got hurt."
                    library = false
                    event = superarray.sample
                    puts event
                end
            end
        when "invention"
            if invention == true
                puts "Our super-invention is demanding human sacrifices."
                if rand() > 0.5
                    puts "We cannot sastify our invention's tastes, and the invention killed us all in response."
                    event = "stop"
                else
                    puts "Luckily, brave souls burned the invention down before anyone got hurt." 
                    invention = false
                    event = superarray.sample
                    puts event
                end
            elsif library == false
                puts "We want to buld an invention, but we need the help of our ancestors. Let's honor them!"
                event = "library"
            else
                puts "The ancestors are pleased at our library and gave us an invention."
                invention = true
                event = superarray.sample
                puts event
            end
        when "war"
            if war == false
                puts "A rival nation insulted our ancestors. TO WAR!"
                war = true
                event = superarray.sample
                puts event
            else
                puts "The enemy is at our gates and want to burn our city down!"
                    if rand() > 0.5
                        puts "The enemy defats our forces and burned the city down!"
                        event = "stop"
                    else
                        puts "We sued for peace, paying a heavy tribute. The enemy leaves us alone. The war ends."
                        war = false
                        event = superarray.sample
                        puts event
                    end
            end
        else
            puts "This is a filler event."
            event = superarray.sample
            puts event
            end
        end
    end
