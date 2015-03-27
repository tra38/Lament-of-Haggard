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
    event = nil
    library = false
    loop do
        if event == "stop"
            puts "Okay, let's stop now."
            break
            end
        if library == true
            puts "A minor work of art is created at our fine location."
            end
        if library == false
            puts "The Grand Library was built to honor the ancestors."
            library = true
            end
    event = ["stop","go", "omega","alpha"].sample
    puts event
    end
end
