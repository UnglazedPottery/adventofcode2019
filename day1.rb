@massArray = [90903,
    135889,
    120859,   
    137397,
    56532,  
    92489,
    87979,
    149620,
    137436,
    62999,
    71672,
    61022,
    139765,
    69690,
    109513,
    67615,
    77803,
    146519,
    96432,
    129440,
    67912,
    143886,
    126992,
    129921,
    122339,
    61684,
    149706,
    52779,
    106421,
    145896,
    145977,
    76585,
    136021,
    63976,
    97063,
    114899,
    118570,
    102196,
    129126,
    98521,
    136186,
    68054,
    72452,
    92433,
    145851,
    98487,
    149980,
    114477,
    125479,
    62351,
    131559,
    115553,
    129371,
    147164,
    83125,
    146200,
    68621,
    55982,
    79131,
    64907,
    95570,
    132347,
    76889,
    96461,
    123627,
    128180,
    113508,
    70342,
    139386,
    131234,
    140377,
    119825,
    80791,
    52090,
    62615,
    101366,
    138512,
    113752,
    77912,
    64447,
    146047,
    94578,
    82228,
    116731,
    123488,
    103839,
    120854,
    54663,
    129242,
    51587,
    149536,
    71096,
    110104,
    145155,
    139278,
    78799,
    62410,
    64645,
    112849,
    60402]

def get_modsum(mass)
    current_fuel = mass/3 - 2
    return 0 if current_fuel <= 0
    modsum = current_fuel + get_modsum(current_fuel)
    modsum
end

def get_totalfuel
    fuelArray = @massArray.map do |mass|
        get_modsum(mass) 
    end
    puts fuelArray.reduce(:+)
end

get_totalfuel
#5194864