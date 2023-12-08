% Questions for the knowledge base
% no certain sequence, totally 20 questions.
question(budget) :-
    write('What is your budget range for purchasing a car?'), nl.
question(purpose) :-
    write('What is the primary purpose for purchasing a car?'), nl.
question(main_concern) :-
    write('What are your main concerns when choosing a car?'), nl.
question(impression) :-
    write('What impression do you want your car to convey about you?'), nl.
question(debt_comfort) :-
    write('Are you comfortable with a high car loan or lease payment?'), nl.
question(sunroof_preference) :-
    write('Do you prefer cars with a sunroof or convertible top?'), nl.
question(brand_importance) :-
    write('How important are car brands to you?'), nl.
question(car_feature_interest) :-
    write('What type of car features or characteristics are you interested in?'), nl.
question(open_to_korean_brands) :-
    write('Would you consider buying a Korean car brand?'), nl.
question(cost_concern) :-
    write('How concerned are you about car maintenance and running costs?'), nl.
question(fuel_preference) :-
    write('What type of fuel or energy do you prefer for your car?'), nl.
question(family_features_need) :-
    write('Do you need family-friendly features in your car?'), nl.
question(driving_experience) :-
    write('What kind of driving experience do you enjoy?'), nl.
question(engine_cylinders) :-
    write('Do you have a preference for the number of cylinders in the car’s engine?'), nl.
question(engine_position) :-
    write('Where do you prefer the engine to be located in the car?'), nl.
question(passenger_capacity) :-
    write('How many passengers do you typically carry in your car?'), nl.
question(luxury_preference) :-
    write('Do you prefer a luxury car with high-end features?'), nl.
question(car_design) :-
    write('Do you prefer a more understated or a more flamboyant car design?'), nl.
question(car_origin_preference) :-
    write('Do you have a preference for cars from specific countries or regions?'), nl.
question(financial_situation) :-
    write('What is your financial situation regarding car purchase?'), nl.
question(style_preference) :-
    write('Do you have any specific style or aesthetic preferences for your car?'), nl.
question(offroad_use) :-
    write('Do you often drive on unpaved roads or off-road?'), nl.
question(noise_preference) :-
    write('How do you feel about engine and exhaust noise?'), nl.
question(performance_interest) :-
    write('What kind of performance characteristics excite you in a car?'), nl.

% Answers for the knowledge base, descriptions for each choices.  
answer(low_budget) :-
    write('Budget: $20,000 - $30,000').
answer(medium_budget) :-
    write('Budget: $30,000 - $40,000').
answer(high_budget) :-
    write('Budget: Above $40,000').
answer(any) :-
    write('SKIP').
answer(transport_purpose) :-
    write('Primary Purpose: Transportation').
answer(fun_purpose) :-
    write('Primary Purpose: Fun and enjoyment').
answer(active_lifestyle_concern) :-
    write('Main Consideration: Active lifestyle and utility').
answer(social_image_concern) :-
    write('Main Consideration: Social image and impression').
answer(budget_concern) :-
    write('Main Consideration: Budget and affordability').
answer(environmental_concern) :-
    write('Main Consideration: Environmental impact').
answer(family_needs_concern) :-
    write('Main Consideration: Family needs and space').
answer(rich_impression) :-
    write('Desired Impression: Wealth and status').
answer(luxury_impression) :-
    write('Desired Impression: Affluence and luxury').
answer(unique_impression) :-
    write('Desired Impression: Unique and curious').
answer(responsible_impression) :-
    write('Desired Impression: Responsible and sensible').
answer(comfortable_with_debt) :-
    write('Comfort with Debt: Comfortable with high payments').
answer(prefers_no_debt) :-
    write('Comfort with Debt: Prefer minimal or no debt').
answer(indifferent_sunroof) :-
    write('Preference for Sunroof: Indifferent').
answer(prefers_sunroof) :-
    write('Preference for Sunroof: Strong preference').
answer(brand_very_important) :-
    write('Importance of Brand: Very important').
answer(brand_not_important) :-
    write('Importance of Brand: Not important').
answer(classic_features) :-
    write('Car Characteristics: Classic and traditional').
answer(modern_features) :-
    write('Car Characteristics: Modern and innovative').
answer(unique_features) :-
    write('Car Characteristics: Unique and uncommon').
answer(asymmetrical_design) :-
    write('Car Characteristics: Asymmetrical design').
answer(open_to_korean) :-
    write('Considering Korean Brands: Open to it').
answer(not_interested_korean) :-
    write('Considering Korean Brands: Not interested').
answer(moderate_cost_concern) :-
    write('Concern About Costs: Moderate concern').
answer(high_cost_concern) :-
    write('Concern About Costs: High concern').
answer(prefers_electric) :-
    write('Preferred Fuel Type: Electric').
answer(prefers_diesel) :-
    write('Preferred Fuel Type: Diesel').
answer(prefers_hydrogen) :-
    write('Preferred Fuel Type: Hydrogen fuel cell').
answer(prefers_battery_electric) :-
    write('Preferred Fuel Type: Battery electric').
answer(no_family_features) :-
    write('Family-Friendly Features: Not necessary').
answer(needs_family_features) :-
    write('Family-Friendly Features: Important').
answer(adventurous_experience) :-
    write('Driving Experience: Adventurous and exciting').
answer(fast_experience) :-
    write('Driving Experience: High-speed and performance-oriented').
answer(precision_handling) :-
    write('Driving Experience: Precision handling and cornering').
answer(any_speed_enjoyable) :-
    write('Driving Experience: Enjoyable at any speed').
answer(six_cylinders) :-
    write('Engine Cylinders: Six').
answer(eight_cylinders) :-
    write('Engine Cylinders: Eight').
answer(twelve_cylinders) :-
    write('Engine Cylinders: Twelve').
answer(rear_engine) :-
    write('Engine Position: Rear').
answer(front_engine) :-
    write('Engine Position: Front').
answer(mid_engine) :-
    write('Engine Position: Mid-engine').
answer(no_passengers) :-
    write('Typical Passengers: None or one').
answer(few_passengers) :-
    write('Typical Passengers: Two to three').
answer(many_passengers) :-
    write('Typical Passengers: Four or more').
answer(prefers_luxury) :-
    write('Preference for Luxury: High-end luxury').
answer(performance_focused) :-
    write('Preference for Luxury: Performance-focused').
answer(flamboyant_design) :-
    write('Car Design: Flamboyant and eye-catching').
answer(elegant_design) :-
    write('Car Design: Understated and elegant').
answer(european_origin) :-
    write('Preferred Car Origin: European').
answer(american_origin) :-
    write('Preferred Car Origin: American').
answer(no_preference_origin) :-
    write('Preferred Car Origin: No specific preference').
answer(budget_conscious) :-
    write('Financial Situation: Budget-conscious').
answer(financially_comfortable) :-
    write('Financial Situation: Comfortable with spending').
answer(no_style_preference) :-
    write('Style Preferences: No strong preferences').
answer(specific_style_preference) :-
    write('Style Preferences: Specific aesthetic preferences').
answer(no_disclose_style) :-
    write('Style Preferences: Prefer not to disclose').

answer(not_frequent_offroad) :-
    write('Driving on Unpaved Roads: Not Frequently').
answer(frequent_offroad) :-
    write('Driving on Unpaved Roads: Frequently').

answer(prefers_loud_noise) :-
    write('Engine and Exhaust Noise: Prefer loud and aggressive sound').
answer(prefers_quiet_noise) :-
    write('Engine and Exhaust Noise: Prefer quiet and subtle sound').
answer(agile_performance) :-
    write('Performance Characteristics: Agile and spirited').
answer(precise_performance) :-
    write('Performance Characteristics: Precise and controlled').
answer(practical_performance) :-
    write('Performance Characteristics: Practical and efficient').
answer(strong_performance) :-
    write('Performance Characteristics: Strong and responsive').



% Descriptions for each car model. These are used to provide detailed information about each car suggested by the system.
% One describe predicate match one car rule.
describe(mercedes_cls):-
    write('MERCEDES CLS'), nl,
    write('The Mercedes CLS, a luxury four-door coupe, combines sleek design with practicality. It offers comfort for four passengers and their luggage, making it a top choice for executive travel.'), nl, nl.

describe(audi_a7):-
    write('AUDI A7'), nl,
    write('The Audi A7 is a luxury fastback featuring a supercharged 3.0-liter V-6 engine with 333 hp. It combines a stylish exterior with a high-tech and luxurious interior, providing a well-rounded driving experience.'), nl, nl.

describe(honda_fit):-
    write('HONDA FIT'), nl,
    write('The Honda Fit is a compact car with a flexible interior and an efficient powertrain. It offers a spacious cargo area and a 130-hp 1.5-liter engine, ideal for city driving and practical everyday use.'), nl, nl.

describe(mazda_hyundai_kia):-
    write('MAZDA6'), nl,
    write('The Mazda6 is a family sedan known for its agile handling and striking design. It features a 184-hp 2.5-liter engine, providing a balance of power and efficiency.'), nl, nl,
    write('HYUNDAI GENESIS'), nl,
    write('The Hyundai Genesis is a full-size luxury sedan offering a comfortable and refined driving experience, suitable for both personal and professional use.'), nl, nl,
    write('KIA OPTIMA'), nl,
    write('The Kia Optima, a midsize sedan, combines bold styling with performance. It features advanced technology and a comfortable interior, making it a popular choice among modern sedans.'), nl, nl.

describe(jaguar_audi):-
    write('JAGUAR XJ'), nl,
    write('The Jaguar XJ, a luxury sedan, offers a blend of British elegance and performance. It features a 3.0-liter supercharged V-6 engine and a sophisticated interior design.'), nl, nl,
    write('AUDI A8'), nl,
    write('The Audi A8 is a flagship luxury sedan known for its advanced features and refined driving dynamics. It represents the pinnacle of Audi’s luxury offerings.'), nl, nl.

describe(lincoln_infiniti):-
    write('LINCOLN MKZ'), nl,
    write('The Lincoln MKZ is a midsize luxury sedan offering a blend of comfort and advanced technology. It stands out in its segment with a distinctive design and refined interior.'), nl, nl,
    write('INFINITI M37'), nl,
    write('The Infiniti M37 is a luxury sedan with a focus on performance, featuring a 330-hp 3.7-liter V-6 engine and a blend of premium features and dynamic driving experience.'), nl, nl.

describe(bentley):-
    write('BENTLEY CONTINENTAL GT CONVERTIBLE'), nl,
    write('The Bentley Continental GT Convertible combines luxury with performance. It offers a unique open-top driving experience with the same enhancements as its coupe counterpart.'), nl, nl.

describe(vw_fiat):-
    write('VW BEETLE'), nl,
    write('The Volkswagen Beetle is an iconic two-door car with a rear-engine design. It combines nostalgic design with modern features, making it a unique choice in the compact car segment.'), nl, nl,
    write('FIAT 500'), nl,
    write('The Fiat 500 is a compact city car known for its distinctive design and efficient use of space. It offers a blend of style and practicality, ideal for urban driving.'), nl, nl.

describe(scion_nissan):-
    write('SCION iQ'), nl,
    write('The Scion iQ is a compact hatchback designed for urban environments. It features a 1.3-liter four-cylinder engine and is known for its fuel efficiency and ease of parking.'), nl, nl,
    write('NISSAN CUBE'), nl,
    write('The Nissan Cube is a compact hatchback wagon with a unique design. It offers a spacious interior and is powered by a 1.8-liter four-cylinder engine, suitable for city driving.'), nl, nl.

describe(kia):-
    write('KIA SOUL'), nl,
    write('The Kia Soul is a compact crossover known for its unique design and practical interior. It offers a choice of efficient engines and is popular for its combination of style and functionality.'), nl, nl.



describe(mit):-
    write('MITSUBISHI LANCER'), nl,
    write('The Mitsubishi Lancer, a compact four-door sedan, offers reliable performance and practicality. Positioned above the Mirage, it serves as a versatile choice for urban commuting and everyday driving.').

describe(hyundai):-
    write('HYUNDAI VELOSTER'), nl,
    write('The 2016 Hyundai Veloster stands out with its unique design and dynamic performance. It features a turbocharged engine, sophisticated suspension, and a wealth of technological advancements including an upgraded navigation system and smartphone integration.').

describe(chrysler):-
    write('CHRYSLER 300'), nl,
    write('The Chrysler 300 is a luxury sedan offering a smooth and quiet ride, bolstered by its available V8 engine. The interior showcases an upscale design complemented by an intuitive touchscreen interface and a range of premium sound systems.').

describe(honda):-
    write('HONDA CIVIC'), nl,
    write('The 2016 Honda Civic is a front-wheel-drive compact car available in various trims, each with a distinct four-cylinder engine. Known for its reliability and efficiency, the Civic remains a top choice in its class.').

describe(ford_chevy_nissan):-
    write('FORD FIESTA'), nl,
    write('The Ford Fiesta combines small size with big character. Its engaging manual transmission and optional six-speed dual-clutch offer a fun driving experience. Available in sedan and hatchback models, the Fiesta is known for its lively performance and modern features like Sync 3 infotainment.'), nl, nl,
    write('CHEVY SPARK'), nl,
    write('The Chevy Spark, a compact urban vehicle, is ideal for city driving. It features a 98-hp four-cylinder engine, advanced safety options, and comes with modern tech including onboard Wi-Fi and smartphone compatibility.'), nl, nl,
    write('NISSAN VERSA NOTE'), nl,
    write('The 2016 Nissan Versa Note is a versatile five-passenger hatchback, available in multiple trims. It offers practicality and efficiency, making it a suitable option for family use and everyday commuting.').

describe(chevy_ford):-
    write('CHEVY FORD'), nl,
    write('This model represents a blend of power and efficiency, featuring a 2.7-liter turbo V6 engine that delivers remarkable fuel economy. It combines robust towing capability with smooth acceleration, suitable for both work and leisure purposes.'), nl, nl,
    write('FORD FUSION HYBRID'), nl,
    write('The Ford Fusion Hybrid stands out with its impressive fuel economy, cutting-edge technology, and a quiet, stylish cabin. It offers a balanced combination of efficiency and comfort.').

describe(vwjetta):-
    write('VW JETTA SPORTWAGON TDI'), nl,
    write('The VW Jetta SportWagen TDI merges the Golf\'s performance with the practicality of a wagon. It features a 170-hp turbocharged engine, solid ride quality, and a supportive interior. The vehicle comes with advanced infotainment options including Apple CarPlay and Android Auto.').

describe(honda_fcx):-
    write('HONDA FCX'), nl,
    write('The Honda FCX Clarity is a pioneering electric vehicle powered by a hydrogen-fed fuel cell. It offers a unique driving experience with its 134-hp electric motor, catering to a select group of customers near hydrogen refueling stations.').

describe(nissan_leaf):-
    write('NISSAN LEAF'), nl,
    write('The Nissan Leaf is an all-electric family hatchback known for its ease of driving, comfort, and environmentally friendly design. Ideal for urban commuting, it offers a practical size and efficient performance.').

describe(bmw):-
    write('BMW X1'), nl,
    write('The BMW X1, available with a turbocharged 2.0-litre petrol engine and various diesel options, offers a choice between front and four-wheel drive. It combines luxury, performance, and versatility.').

describe(ford_c_max):-
    write('FORD C-MAX'), nl,
    write('The Ford C-Max, a hybrid with a 2.0-liter engine and electric motors, offers a comfortable driving experience but falls short in fuel economy compared to competitors. Its EV-only range and conventional driving dynamics are notable aspects.').

describe(morgan):-
    write('MORGAN 3-WHEELER'), nl,
    write('The Morgan 3-Wheeler, inspired by the original Twenties Morgans, features a tubular steel spaceframe and an S&S V-twin engine. It offers a unique blend of classic design and modern performance.').

describe(porsche):-
    write('PORSCHE 911'), nl,
    write('The Porsche 911, a legendary sports car, offers a blend of performance and luxury. Its rear-mounted 3.0-liter twin-turbo flat-six engine delivers up to 420 hp, available in various models including coupe, convertible, and Targa forms. Renowned for its agility and luxury, it appeals to both enthusiasts and novices alike.').

describe(nissan_gt_r):-
    write('NISSAN GT-R'), nl,
    write('The Nissan GT-R, known as Godzilla, is a high-tech supercar with a 3.8-liter twin-turbo V-6 engine producing 565 hp. Its advanced all-wheel-drive system and dynamic handling make it a formidable presence on both road and track.').

describe(bmw_cadillac):-
    write('BMW 335i'), nl,
    write('The BMW 335i features a 3.0-liter turbo straight-six engine, known for its robust torque and sporty performance. It offers a thrilling driving experience, enhanced by its Sport mode.'), nl, nl,
    write('CADILLAC ATS'), nl,
    write('The Cadillac ATS includes a standard turbocharged 2.0-liter four-cylinder engine, with options for a 3.6-liter V6 or a high-performance twin-turbo V6 in the ATS-V. Its sophisticated design and performance make it a strong contender in the luxury sedan market.').

describe(ferrari_mc):-
    write('FERRARI 458'), nl,
    write('The Ferrari 458 Italia, a pinnacle of sports car engineering, features a 562-hp V-8 engine and a seven-speed dual-clutch transmission. Its F1-inspired suspension and aggressive styling make it a standout choice for high-performance enthusiasts.'), nl, nl,
    write('McLAREN MP4-12C'), nl,
    write('The McLaren MP4-12C sports a 3.8-liter engine, delivering a blend of high performance and advanced engineering. It offers a dynamic driving experience reminiscent of V-10 engines, thanks to its high torque and horsepower peaks.').

describe(jaguar_f):-
    write('JAGUAR F-TYPE'), nl,
    write('The Jaguar F-Type, available as a coupe or convertible, combines stunning design with powerful performance. It features a 3.0-liter supercharged V-6 engine and offers models with varying horsepower, providing a sporty yet refined driving experience.').

describe(chevrolet):-
    write('CHEVROLET CORVETTE STINGRAY'), nl,
    write('The Chevrolet Corvette Stingray, a modern sports car, combines performance with luxury. Its 6.2-liter V-8 engine, available in manual or automatic transmissions, and sophisticated design make it a top choice for sports car enthusiasts.').

describe(bmw_mer_porsche):-
    write('BMW M5'), nl,
    write('The 2016 BMW M5 offers a customizable driving experience with a powerful 4.4-liter twin-turbocharged engine. It stands out for its versatility in drive, suspension, and transmission settings.'), nl, nl,
    write('MERCEDES E63 AMG'), nl,
    write('The Mercedes E63 AMG combines raw power with agility. Its 577-hp 5.5-liter twin-turbo V-8 engine and advanced features provide a luxurious and exhilarating driving experience. It is also available in a wagon variant for added practicality.'), nl, nl,
    write('PORSCHE PANAMERA'), nl,
    write('The Porsche Panamera, with its distinctive styling, offers a dynamic and luxurious driving experience. Powered by a 440-hp twin-turbo V-6, it features advanced technology and a sophisticated interior.').

describe(cadillac):-
    write('CADILLAC CTS-V'),nl,
    write('The 2016 Cadillac CTS-V is a high-performance luxury sedan with 640 horsepower. It combines exceptional power with high-level agility, featuring standard high-performance brakes, magnetic control suspension, and a tightly engineered chassis.').

describe(maserati):-
    write('MASERATI GHIBLI'),nl,
    write('The Maserati Ghibli, named after an African desert wind, is a symbol of Italian luxury. It features a 345-hp, twin-turbo 3.0-liter V-6 in its base model, and a more powerful S version with 404 hp. Both variants offer an eight-speed automatic transmission, with the S model providing optional all-wheel drive.').

describe(ford_chevy):-
    write('FORD MUSTANG'),nl,
    write('The Ford Mustang, an iconic American muscle car, is available with a range of powerful engines, including a 300-hp V-6, a 310-hp turbocharged four-cylinder, and a 435-hp V-8. It offers a choice between manual and automatic transmissions, providing a thrilling driving experience combined with modern comforts.'),nl,nl,
    write('CHEVY CAMARO'),nl,
    write('The Chevy Camaro, another staple in the muscle car category, features a choice of a 275-hp turbo four, a 335-hp V-6, or a 455-hp V-8 engine. It\'s renowned for its powerful performance, precise handling, and tight but sporty interior. Both manual and automatic transmissions are available.').

describe(dodge):-
    write('DODGE CHALLENGER'),nl,
    write('The 2016 Dodge Challenger SXT is powered by a 3.6-liter V6 engine, offering 305 horsepower. Known for its classic muscle car aesthetics, it combines modern technology with traditional power. It\'s available exclusively with an eight-speed automatic transmission.').

describe(cadillac_cts):-
    write('CADILLAC CTS-V WAGON'),nl,
    write('The Cadillac CTS-V Wagon is a unique combination of high performance and practicality, featuring a supercharged 640-hp 6.2-liter V-8. It boasts impressive acceleration and a top speed of 200 mph, underpinned by a sophisticated suspension system.').

describe(aston):-
    write('ASTON MARTIN VANTAGE'),nl,
    write('The Aston Martin Vantage is a luxury sports car available as a coupe or convertible. It comes with a choice of V8 engines, delivering either 420 or 430 horsepower. The V12 Vantage offers an even more powerful experience with a 565-hp engine, available with manual or automatic transmission.').

describe(srt_audi_lam):-
    write('SRT VIPER'),nl,
    write('The SRT Viper, with its distinctive American design and performance, features a 645-hp V-10 engine. It\'s designed for speed and agility, offering an unparalleled driving experience. The Viper ACR version further enhances its track capabilities.'),nl,nl,
    write('AUDI R8'),nl,
    write('The Audi R8 is a supercar known for its balance of performance and comfort. Its V10 engine provides an exhilarating drive, and the R8 V10 Plus variant elevates this experience further with increased horsepower and sportier tuning.'),nl,nl,
    write('LAMBORGHINI GALLARDO'),nl,
    write('The Lamborghini Gallardo LP560-4 is a true supercar, boasting a 552-hp 5.2-litre V10 engine. It offers remarkable performance, reaching 0-60mph in just 3.7 seconds, with a top speed of over 200 mph.').

describe(scion_mazda):-
    write('SCION FR-S/SUBARU BRZ'),nl,
    write('The Scion FR-S, also known as the Subaru BRZ, offers sports-car agility at an affordable price. It features a 200-hp 2.0-liter flat-four engine, available with manual or automatic transmission. The car is known for its responsive handling and driver-focused experience.'),nl,nl,
    write('MAZDA MIATA'),nl,
    write('The 2016 Mazda MX-5 Miata, a celebrated roadster, is known for its engaging driving dynamics and lightweight design. It features a 155-hp engine and is renowned for its fun-to-drive character and affordability.').

describe(porsche_lotus):-
    write('PORSCHE CAYMAN'),nl,
    write('The Porsche Cayman epitomizes sports car finesse with its agile handling and robust engine options. The lineup includes a base 300-hp 2.0-liter turbo-four and a more vigorous 350-hp 2.5-liter in the S variant. While the iconic flat-six sound may be missed, the Cayman continues to deliver exceptional driving dynamics. It offers both a crisp six-speed manual and a seamless seven-speed automatic transmission, coupled with an advanced 7.0-inch touchscreen infotainment system.'),nl,nl,
    write('LOTUS ELISE'),nl,
    write('The Lotus Elise, a symbol of automotive purity, has evolved with subtle exterior refinements. The front end now sports a cleaner look with sophisticated LED daytime running lights, maintaining its distinctive appeal. The Elise S stands out with its supercharged 1.8-liter engine, delivering swift acceleration with a 0-60 mph time of just 4.2 seconds, embodying the essence of a true sports car.'),nl,nl.

describe(audi):-
    write('AUDI ALLROAD QUATTRO'),nl,
    write('The Audi Allroad Quattro excels as a versatile all-weather vehicle, offering an appealing blend of luxury and practicality. With 58.5 cubic feet of cargo space, it caters to a variety of needs. The Allroad is powered by a dynamic 252-hp turbocharged 2.0-liter engine paired with a seven-speed dual-clutch automatic transmission. All-wheel drive is standard, ensuring confident handling in diverse conditions. Its off-road mode further enhances its capability, making it a more engaging drive than typical crossovers.'),nl,nl.

describe(subaru):-
    write('SUBARU WRX'),nl,
    write('The Subaru WRX, a sedan with a sporty edge, is essentially a turbocharged version of the Impreza, exuding strength and agility. It\'s equipped with a robust 268-hp turbocharged 2.0-liter engine and a six-speed manual transmission, with all-wheel drive as a standard feature. An optional CVT is available, but the manual transmission remains the enthusiast\'s choice. The WRX is renowned for its sharp handling and rapid acceleration, although its firm suspension system results in a stiffer ride.'),nl,nl.

describe(porsche_boxster):-
    write('PORSCHE BOXSTER'),nl,
    write('The Porsche Boxster, a model synonymous with sports car perfection, continues to impress with its turbocharged engines - a 300-hp 2.0-liter base and a more powerful 350-hp 2.5-liter in the S model. While the transition from its iconic flat-six sound is notable, the Boxster\'s performance remains unparalleled. Its mid-engine design contributes to its near-perfect dynamic balance, and the optional touchscreen infotainment system enhances the driving experience.'),nl,nl.

describe(fiat):-
    write('FIAT 500 ABARTH'),nl,
    write('The Fiat 500 Abarth transforms the standard 500 into a compelling performance machine. Underneath its compact exterior lies a spirited 160-hp turbocharged four-cylinder engine. Drivers can choose between a precise five-speed manual or a six-speed automatic transmission. The Abarth\'s aggressive suspension tuning and distinctive exhaust note deliver an exhilarating driving experience. While compact, the Abarth offers a unique combination of performance and style, whether in coupe or convertible form.'),nl,nl.

describe(mini):-
    write('MINI COOPER'),nl,
    write('The Mini Cooper S is a quintessential blend of distinctive style and lively handling. It\'s powered by a peppy 189-hp 2.0-liter turbocharged four-cylinder engine, available with either a manual or automatic six-speed transmission. The Cooper S now offers a practical five-door model, expanding its appeal as a versatile yet sporty vehicle. The JCW variant further enhances performance with a robust 228-hp engine, sport-tuned suspension, and several aesthetic enhancements.'),nl,nl.

describe(ford):-
    write('FORD FIESTA ST'),nl,
    write('The Ford Fiesta ST is a testament to the fact that powerful things come in small packages. Equipped with a lively 182-hp 1.6-liter turbocharged engine, it offers an engaging driving experience while maintaining practicality for everyday use. The Fiesta ST combines the convenience of a city car with the excitement of a performance hatchback, making it a versatile choice for a wide range of drivers.'),nl,nl.

describe(vw_golf):-
    write('VW GOLF GTI'),nl,
    write('The VW Golf GTI, heralded as the original hot hatch, continues to set the standard in its segment. It features a robust 210-hp 2.0-liter turbocharged engine with a six-speed manual transmission, offering an engaging and spirited drive. An optional six-speed automatic transmission is also available. The GTI is known for its refined handling, sporty aesthetics, and the classic plaid seating, making it a favorite among driving enthusiasts.'),nl,nl.

describe(mazda):-
    write('MAZDASPEED3'),nl,
    write('The MAZDASPEED3 is a standout in the hot-hatch arena, boasting a formidable 263-hp engine that adds a sporty edge to the Mazda3\'s practicality. Its aggressive styling is matched by its dynamic performance, offering an exhilarating driving experience. The interior features a modern touch-screen navigation system, complementing its sporty yet sophisticated appeal.'),nl,nl.

describe(volvo):-
    write('VOLVO S60'),nl,
    write('The Volvo S60 epitomizes Scandinavian elegance combined with avant-garde safety technology. It offers a range of powertrains: a 240-hp turbocharged four-cylinder and an optional 302-hp engine that\'s both turbo- and supercharged for front-wheel drive. For all-wheel drive, options include a 250-hp turbo five-cylinder or a robust 325-hp turbo inline-six. The high-performance Polestar variant boasts a 362-hp inline-six engine. The Cross Country model offers 7.9 inches of ground clearance, while the Inscription boasts a longer wheelbase and additional rear legroom, emphasizing comfort and spaciousness.'),nl,nl.

describe(ford_focus):-
    write('FORD FOCUS ST'),nl,
    write('The Ford Focus ST stands out in the hot-hatch segment, offering a compelling blend of performance and practicality. The 2016 model is powered exclusively by a spirited manual transmission, ensuring an engaging driving experience. While the high-performance Focus RS garners separate acclaim, the Focus ST holds its own with robust dynamics and an accessible performance profile, making it a top choice for enthusiasts seeking both excitement and everyday usability in a hatchback format.').


