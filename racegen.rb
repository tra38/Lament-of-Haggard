def racegen
  species = ['Human','Dwarf','Goblin','Elf','Dinosaur','Elephant','Cat','Dog','Kobold',
  'Insectoid','Reptilian','Orc','Gnome','Troll','Ogre','Halfling','Fairy','Giant','Unicorn',
  'Dragon','Hydra'].sample
  color = ['black','brown','blue','green','gray','orange','purple','red','silver','tan','white','yellow'].sample
  case color
    when 'black'
    color = ['black','charcoal black','coal black','ebon','ebony','jet','onyx','sable'].sample
    when 'brown'
    color = ['almond','brown','amber','auburn','beige','bronze','burnt sienna','chestnut','chocolate','cinnamon','cocoa brown',
    'copper brown', 'ginger brown','hazel','mahogany brown','ochre','puce','russet','sepia','tan','tawny','umber',
    'sandy brown'].sample
    when 'blue'
    color = ['azure','beryl','blue-gray','blue-green','cerulean','cobalt','indigo','navy','royal blue','sapphire','teal',
    'turquoise', 'aquamarine','periwinkle'].sample
    when 'green'
    color = ['green','emerald green','beryl','forest green','chartreuse','jade green','lime green','pea green','moss green',
    'olive green','sage green', 'viridian'].sample
    when 'gray'
    color = ['gray','ashen gray','cloudy gray','dove gray','dusky gray','granite gray','iron gray','leaden gray','pepper-gray',
    'silver-gray', 'slate gray','smoky gray'].sample
    when 'orange'
    color = ['orange','goldenrod','burnt orange','tangerine-orange'].sample
    when 'purple'
    color = ['purple','royal purple','amaranthine','amethyst','violet','blue-violet','pomegranate purple','mulberry purple','mauve',
    'magenta','lavender','lilac purple', 'heliotrope','orchid purple','periwinkle','perse'].sample
    when 'red'
    color = ['red','blood red','cherry red','cardinal red','crimson','garnet red','magenta','maroon','coral red','puce','pink',
    'rose red','rust red', 'salmon pink','scarlet','vermilion','wine red'].sample
    when 'silver'
    color = ['pearly silver','silver','sterling silver'].sample
    when 'tan'
    color = ['peach','tan','cream-colored','beige','taupe'].sample
    when 'white'
    color = ['white','chalky white','milky white','ivory white','snowy white','hoary white','off-white'].sample
    when 'yellow'
    color = ['yellow','blonde','citron','canary yellow','creamy yellow','golden yellow','honey yellow','primrose yellow',
    'straw yellow','sulfur yellow','tawny yellow','puce', 'gold','caramel','flaxen yellow'].sample
  end
  color = color.gsub(/\b(?<!['’`])[a-z]/) { $&.capitalize } #This code is responsible for capitalizing all words
  if species = "Elf"
    return color +" Elves"
  if species = "Hydra"
    return color +" Hydrae"
  if species = "Fairy"
    return color+" Fairies"
  else
    return color +" Elves"
  end
end
