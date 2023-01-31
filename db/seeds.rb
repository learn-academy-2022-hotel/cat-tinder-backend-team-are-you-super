heros = [
    {
        name: 'Wonder Woman',
        super_power: 'Super-strength, Agility, and Flight',
        enjoys: 'Bringing peace and harmony to the entire universe.',
        image: 'https://static.wikia.nocookie.net/dccu/images/6/6f/JL_Wonder_Woman.jpg/revision/latest?cb=20160914003449'
    },
    {
        name: 'Wolverine',
        super_power: 'Super human strength, Enhanced senses, and Regeneration',
        enjoys: 'Boxing, Traveling, Drinking beer, Fighting enemies and Spending time with Jean Grey.',
        image: 'https://media.gq.com/photos/58b9fda8803bdb766dd69ef7/16:9/w_1280,c_limit/wolverine.jpg'
    },
    {
        name: 'Dr. Strange',
        super_power: 'Mastery of Magic, Genius level intellect and Skilled martial artist',
        enjoys: 'Former Surgeon turned Sorcerer Supreme and DJ',
        image: 'https://images.trutv.com/tru/$dyna_params/https%3A%2F%2Fi.cdn.trutv.com%2Fassets%2Ftru%2Fprod%2Fimages%2F2021%2F01%2FDoctor-Strange-1024x1536.jpg'
    }
]

heros.each do |each_hero|
    Hero.create each_hero
    puts "creating hero #{each_hero}"
end