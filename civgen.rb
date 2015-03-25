def civilization
puts "A new civilization has been created!"
name = "Bob"
government = ['Tribe', 'Republic', 'Monarchy', 'Empire'].sample
case government
    when 'Tribe'
    title = ["The #{name} Tribe", "The #{name} Horde", "The #{name} Clans"].sample
    when 'Republic'
    title = ["The Council of #{name}", "The #{name} Senate", "The #{name} Republic"].sample
    when 'Monarchy'
    title = ["The #{name} Kingdom", "The #{name} Principality", "The Grand Duchy of #{name}"].sample
    when 'Empire'
    title = ["The #{name} Empire", "The Holy #{name} Empire", "The Dominion of #{name}"].sample
    end
end
