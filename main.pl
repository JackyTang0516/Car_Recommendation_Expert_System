% TestCases
% invalid input: e/sss/1
% Fallback: cba  
% cbcbbb(single result),dbcbbb(any, multi result),aaca(one combined rules)
% longest: cbbbaaa
% if skip choice, we can get a broader feedback

:- include('database.pl').

% Declares progress/2 as a dynamic predicate for storing and updating user responses during runtime.
% type of predicate whose facts (or rules) can be modified during the execution of the program

:- dynamic(progress/2).

% This predicate is the entry point of the expert system. 
% It introduces the system to the user, resets any previous answers, and initiates the process of finding and suggesting cars.
% do iterations in each car rule, then for loop between each car predicate.
main :-
    intro,
    % prevent the old data to influence the current session 
    reset_answers,

    % Compare the users choices with car rules
    find_Cars(CarsList),
    % check if list is empty, give recommendations
    (CarsList = [] -> fallback_suggestion ; describe_Cars(CarsList), ask_feedback(CarsList)), nl,
    
    thank_user.


% Finds all cars that match the user-criteria based on the rules defined in the knowledge base.
find_Cars(CarsList) :-
    % Placeholder, Goal, List-->collect the result, if match user choices-->add to list
    % Iterative Checking in car/1 Predicates:
    findall(Car, car(Car), CarsList).


% Describes the list of cars suggested by the system. It iterates over each car and prints its description.

describe_Cars([Car|Rest]) :-
    writeln('Here are suggestions:'),
    writeln('--------------------------------------------'),
    describe_CarList([Car|Rest]).

% Base case for recursion
describe_CarList([]).
% Calls Recursion, First Car/Rest Car in the list
describe_CarList([Car|Rest]) :-
    
    % call the database
    describe(Car),
    % if the List is not empty, keep printing   
    (Rest \= [] -> writeln('\n'); true),
    % recursion
    describe_CarList(Rest).

% Rules that define the logic for suggesting cars based on the user-preferences. Each rule corresponds to a specific type of car and is triggered based on the answers provided by the user.
% if some cars have same attributes, we will combine them in one rule.
% The questions sequence is based on the car rules.
car(jaguar_f) :-
    (budget(high_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(fast_experience),
    engine_cylinders(eight_cylinders),
    passenger_capacity(no_passengers),
    luxury_preference(prefers_luxury),
    car_design(elegant_design).

car(ford_chevy_nissan) :-
    % use previous answers
    (budget(low_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(budget_concern),
    (fuel_preference(prefers_electric); fuel_preference(prefers_diesel)).

car(audi) :-
    (budget(medium_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(precision_handling),
    financial_situation(financially_comfortable),
    style_preference(specific_style_preference),
    offroad_use(frequent_offroad).

car(subaru) :-
    (budget(high_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(precision_handling),
    financial_situation(financially_comfortable),
    style_preference(specific_style_preference),
    offroad_use(frequent_offroad).
    
car(nissan_leaf) :-
    (budget(low_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(environmental_concern),
    fuel_preference(prefers_battery_electric).

car(bmw) :-
    (budget(high_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(family_needs_concern),
    family_features_need(needs_family_features).

car(mercedes_cls) :-
    (budget(high_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(social_image_concern),
    impression(luxury_impression),
    debt_comfort(comfortable_with_debt).

car(audi_a7) :-
    (budget(high_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(luxury_impression),
    brand_importance(brand_very_important).

car(honda_fit) :-
    (budget(low_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(active_lifestyle_concern).

car(mazda_hyundai_kia) :-
    (budget(low_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(social_image_concern),
    impression(unique_impression),
    open_to_korean(open_to_korean).

car(jaguar_audi) :-
    (budget(high_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(luxury_impression),
    brand_importance(brand_very_important).

car(lincoln_infiniti) :-
    (budget(high_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(luxury_impression),
    brand_importance(brand_not_important).

car(bentley) :-
    (budget(high_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(luxury_impression),
    sunroof_preference(prefers_sunroof).

car(vw_fiat) :-
    (budget(medium_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(unique_features),
    car_feature_interest(classic_features).

car(scion_nissan) :-
    (budget(low_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(practical_performance),
    open_to_korean(not_interested_korean).

car(kia) :-
    (budget(low_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(modern_features),
    open_to_korean(open_to_korean).

car(mit) :-
    (budget(medium_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(practical_performance),
    car_feature_interest(unique_features).

car(hyundai) :-
    (budget(low_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(modern_features),
    open_to_korean(open_to_korean).

car(chrysler) :-
    (budget(medium_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(luxury_impression),
    brand_importance(brand_very_important).

car(honda_civic) :-
    (budget(low_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(practical_performance),
    cost_concern(moderate_cost_concern).

car(chevy_ford) :-
    (budget(low_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(environmental_concern),
    fuel_preference(prefers_electric).

car(vw_jetta) :-
    (budget(low_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(environmental_concern),
    fuel_preference(prefers_diesel).

car(honda_fcx) :-
    (budget(low_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(environmental_concern),
    fuel_preference(prefers_hydrogen).

car(ford_c_max) :-
    (budget(medium_budget);budget(any)),
    (purpose(transport_purpose);purpose(any)),
    main_concern(family_needs_concern),
    family_features_need(needs_family_features).

car(morgan) :-
    (budget(low_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(adventurous_experience).

car(porsche) :-
    (budget(high_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(fast_experience),
    engine_cylinders(six_cylinders),
    engine_position(rear_engine).

car(nissan_gt_r) :-
    (budget(high_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(fast_experience),
    engine_cylinders(six_cylinders),
    engine_position(front_engine).

car(bmw_cadillac) :-
    (budget(high_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(fast_experience),
    engine_cylinders(six_cylinders),
    engine_position(mid_engine).

car(ferrari_mc) :-
    (budget(high_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(fast_experience),
    engine_cylinders(eight_cylinders),
    passenger_capacity(no_passengers),
    luxury_preference(prefers_luxury),
    car_design(flamboyant_design).

car(chevrolet) :-
    (budget(low_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(fast_experience),
    engine_cylinders(eight_cylinders),
    passenger_capacity(no_passengers),
    luxury_preference(performance_focused).

car(bmw_mer_porsche) :-
    (budget(high_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(fast_experience),
    engine_cylinders(eight_cylinders),
    passenger_capacity(few_passengers),
    car_origin_preference(european_origin).

car(cadillac) :-
    (budget(high_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(fast_experience),
    engine_cylinders(eight_cylinders),
    passenger_capacity(few_passengers),
    car_origin_preference(american_origin).

car(maserati) :-
    (budget(high_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(fast_experience),
    engine_cylinders(eight_cylinders),
    passenger_capacity(few_passengers),
    car_origin_preference(no_preference_origin).

car(ford_chevy) :-
    (budget(medium_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(fast_experience),
    engine_cylinders(eight_cylinders),
    passenger_capacity(few_passengers).

car(dodge) :-
    (budget(high_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(fast_experience),
    engine_cylinders(eight_cylinders),
    passenger_capacity(few_passengers).

car(cadillac_cts) :-
    (budget(high_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(fast_experience),
    engine_cylinders(eight_cylinders),
    passenger_capacity(many_passengers).

car(aston) :-
    (budget(high_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(fast_experience),
    engine_cylinders(twelve_cylinders).

car(srt_audi_lam) :-
    (budget(high_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(fast_experience),
    engine_cylinders(twelve_cylinders).

car(scion_mazda) :-
    (budget(low_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(precision_handling),
    financial_situation(budget_conscious).

car(porsche_lotus) :-
    (budget(high_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(precision_handling),
    financial_situation(financially_comfortable),
    style_preference(no_disclose_style).

car(porsche_boxster) :-
    (budget(high_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(precision_handling),
    financial_situation(financially_comfortable),
    style_preference(no_style_preference).

car(fiat) :-
    (budget(medium_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(any_speed_enjoyable),
    noise_preference(prefers_loud_noise).

car(mini) :-
    budget(medium_budget),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(any_speed_enjoyable),
    noise_preference(prefers_quiet_noise),
    performance_interest(agile_performance).

car(ford) :-
    (budget(low_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(any_speed_enjoyable),
    noise_preference(prefers_quiet_noise),
    performance_interest(agile_performance).

car(vw_golf) :-
    (budget(medium_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(any_speed_enjoyable),
    noise_preference(prefers_quiet_noise),
    performance_interest(precise_performance).

car(mazda) :-
    (budget(low_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(any_speed_enjoyable),
    noise_preference(prefers_quiet_noise),
    performance_interest(practical_performance).

car(volvo) :-
    (budget(medium_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(any_speed_enjoyable),
    noise_preference(prefers_quiet_noise),
    performance_interest(practical_performance).

car(ford_focus) :-
    (budget(low_budget);budget(any)),
    (purpose(fun_purpose);purpose(any)),
    driving_experience(any_speed_enjoyable),
    noise_preference(prefers_quiet_noise),
    performance_interest(strong_performance).  

% Dynamic predicates for each aspect of the car selection criteria. 
% These store the choices and are used in the rules to determine the car suggestions.
% Add facts from each session dynamically.
% The sequence of the questions are depended on the car/1 predicates

budget(Answer) :-
    % if the answer is not provided previously, call ask predicate. 
    \+ progress(budget, _),
    ask(budget, Answer, [low_budget, medium_budget, high_budget, any]).
budget(Answer) :-
    % we can just use the facts that created previouisly.
    progress(budget, Answer).
% it will compare with the car() predicates.


purpose(Answer) :-
    progress(purpose, Answer).
purpose(Answer) :-
    \+ progress(purpose, _),
    ask(purpose, Answer, [transport_purpose, fun_purpose, any]).

main_concern(Answer) :-
    progress(main_concern, Answer).
main_concern(Answer) :-
    \+ progress(main_concern, _),
    ask(main_concern, Answer, [active_lifestyle_concern, social_image_concern, budget_concern, environmental_concern, family_needs_concern]).

impression(Answer) :-
    progress(impression, Answer).
impression(Answer) :-
    \+ progress(impression, _),
    ask(impression, Answer, [luxury_impression, unique_impression, rich_impression, responsible_impression]).

debt_comfort(Answer) :-
    progress(debt_comfort, Answer).
debt_comfort(Answer) :-
    \+ progress(debt_comfort, _),
    ask(debt_comfort, Answer, [comfortable_with_debt, uncomfortable_with_debt]).

sunroof_preference(Answer) :-
    progress(sunroof_preference, Answer).
sunroof_preference(Answer) :-
    \+ progress(sunroof_preference, _),
    ask(sunroof_preference, Answer, [indifferent_sunroof, prefers_sunroof]).

brand_importance(Answer) :-
    progress(brand_importance, Answer).
brand_importance(Answer) :-
    \+ progress(brand_importance, _),
    ask(brand_importance, Answer, [brand_very_important, brand_not_important]).

car_feature_interest(Answer) :-
    progress(car_feature_interest, Answer).
car_feature_interest(Answer) :-
    \+ progress(car_feature_interest, _),
    ask(car_feature_interest, Answer, [classic_features, modern_features, unique_features, asymmetrical_features]).

open_to_korean(Answer) :-
    progress(open_to_korean, Answer).
open_to_korean(Answer) :-
    \+ progress(open_to_korean, _),
    ask(open_to_korean, Answer, [open_to_korean, not_interested_korean]).

cost_concern(Answer) :-
    progress(cost_concern, Answer).
cost_concern(Answer) :-
    \+ progress(cost_concern, _),
    ask(cost_concern, Answer, [moderate_cost_concern, high_cost_concern]).

family_features_need(Answer) :-
    progress(family_features_need, Answer).
family_features_need(Answer) :-
    \+ progress(family_features_need, _),
    ask(family_features_need, Answer, [needs_family_features, no_family_features_needed]).

fuel_preference(Answer) :-
    progress(fuel_preference, Answer).
fuel_preference(Answer) :-
    \+ progress(fuel_preference, _),
    ask(fuel_preference, Answer, [prefers_electric, prefers_diesel, prefers_hydrogen, prefers_battery_electric]).

driving_experience(Answer) :-
    progress(driving_experience, Answer).
driving_experience(Answer) :-
    \+ progress(driving_experience, _),
    ask(driving_experience, Answer, [adventurous_experience, fast_experience, precision_handling, any_speed_enjoyable]).

engine_cylinders(Answer) :-
    progress(engine_cylinders, Answer).
engine_cylinders(Answer) :-
    \+ progress(engine_cylinders, _),
    ask(engine_cylinders, Answer, [six_cylinders, eight_cylinders, twelve_cylinders]).

engine_position(Answer) :-
    progress(engine_position, Answer).
engine_position(Answer) :-
    \+ progress(engine_position, _),
    ask(engine_position, Answer, [rear_engine, front_engine, mid_engine]).

passenger_capacity(Answer) :-
    progress(passenger_capacity, Answer).
passenger_capacity(Answer) :-
    \+ progress(passenger_capacity, _),
    ask(passenger_capacity, Answer, [no_passengers, few_passengers, many_passengers]).

luxury_preference(Answer) :-
    progress(luxury_preference, Answer).
luxury_preference(Answer) :-
    \+ progress(luxury_preference, _),
    ask(luxury_preference, Answer, [prefers_luxury, performance_focused]).

car_design(Answer) :-
    progress(car_design, Answer).
car_design(Answer) :-
    \+ progress(car_design, _),
    ask(car_design, Answer, [elegant_design, flamboyant_design]).

car_origin_preference(Answer) :-
    progress(car_origin_preference, Answer).
car_origin_preference(Answer) :-
    \+ progress(car_origin_preference, _),
    ask(car_origin_preference, Answer, [european_origin, american_origin, no_preference_origin]).

financial_situation(Answer) :-
    progress(financial_situation, Answer).
financial_situation(Answer) :-
    \+ progress(financial_situation, _),
    ask(financial_situation, Answer, [budget_conscious, financially_comfortable]).

style_preference(Answer) :-
    progress(style_preference, Answer).
style_preference(Answer) :-
    \+ progress(style_preference, _),
    ask(style_preference, Answer, [no_style_preference, specific_style_preference, no_disclose_style]).

offroad_use(Answer) :-
    progress(offroad_use, Answer).
offroad_use(Answer) :-
    \+ progress(offroad_use, _),
    ask(offroad_use, Answer, [not_frequent_offroad, frequent_offroad]).

noise_preference(Answer) :-
    progress(noise_preference, Answer).
noise_preference(Answer) :-
    \+ progress(noise_preference, _),
    ask(noise_preference, Answer, [prefers_loud_noise, prefers_quiet_noise]).

performance_interest(Answer) :-
    progress(performance_interest, Answer).
performance_interest(Answer) :-
    \+ progress(performance_interest, _),
    ask(performance_interest, Answer, [agile_performance, precise_performance, practical_performance, strong_performance]).

% Defines a question and its associated answer choices. It handles the interaction for a specific question in the decision-making process.
ask(Question, Answer, Choices) :-
    question(Question),
    % choose the answers based on the index in the list
    answers(Choices, 0),
    read_user_input(InputChar, Choices),
    parse_choice(InputChar, Choices, Response),
    % add progress(_,_) to facts 
    assertz(progress(Question, Response)),
    Response = Answer.
% Store all of the questions user have answered.

% Predicate to ask for feedback and write it to a file
ask_feedback(CarsList) :-
    nl,
    writeln('--------------------------------------------'),
    format('Do you need detailed info about our recommendations for ~w?', [CarsList]), nl,
    format('Tell us what you need and your contact info: '), nl,
    read_line_to_string(user_input, Comments),
    gather_user_choices(UserChoices),  % Collect user choices
    write_feedback_to_file(CarsList, Comments, UserChoices).

% Predicate to collect user choices
gather_user_choices(UserChoices) :-
    findall((Question: Answer  ), progress(Question, Answer), UserChoices).

% Predicate to write feedback and user choices to a file
write_feedback_to_file(CarsList, Comments, UserChoices) :-
    open('/Users/jackytang/Desktop/car_feedback.txt', append, File),
    format(File, '--------------------------------------------\nCar Models: ~w\nUser Choices: ~w\nComments: ~w\n', [CarsList, UserChoices, Comments]),
    close(File).

% Introductory message, explaining the sources of information and how to interact with the system.
intro :-
    write('Welcome to the Car Recommendation Expert System!'), nl,
    write('The primary database sources from:'), nl,
    write('1. Car and Driver (https://www.caranddriver.com/) - Known for detailed car reviews, comparisons, and automotive news.'), nl,
    write('2. Motor Trend (https://www.motortrend.com/) - Offers extensive reviews, buyer\'s guides, and the latest trends in the automotive industry.'), nl,
    write('The data from these websites is used to provide accurate and up-to-date information about various car brands and models.'), nl,
    write('--------------------------------------------\n'),nl,
    write('Which New Car should I Buy First?'), nl,
    write('To answer, please input the character shown next to each answer.'), nl, nl.

thank_user :-
    writeln('--------------------------------------------\n'),
    write('Thank you for using our car recommendation system!'), nl.

% Defines a fallback suggestion when not match the user-criteria. This provides a generic recommendation.
fallback_suggestion :-
    writeln('\n'),
    writeln('Unfortunately, no cars exactly match your criteria.'),
    writeln('--------------------------------------------\n'),
    writeln('Here is a general recommendation:'),
    writeln('1. HONDA CIVIC:'),
    writeln('Price Range: $21,000 to $29,000.'),
    writeln('The Honda Civic is a compact car known for its fuel efficiency, solid build quality, and excellent handling. It offers a range of trims and styles, including sedan, coupe, and hatchback, with a comfortable interior and practical features.'),
    writeln('Available in multiple body styles, excellent fuel economy with up to 32/42 mpg (city/highway), Honda Sensing suite of advanced safety features, and various engine options including a turbocharged option.'),
    writeln('\n'),
    writeln('2. TOYOTA CAMRY:'),
    writeln('Price Range: $25,000 to $35,000.'),
    writeln('The Toyota Camry is renowned for its reliability and comfortable ride. It\'s a midsize family sedan that offers a spacious interior and a smooth driving experience. Equipped with advanced safety features and a range of efficient engine options, including a fuel-efficient four-cylinder and a more powerful V6.'),
    writeln('Key Features: Standard Toyota Safety Sense, Apple CarPlay and Android Auto compatibility, optional V6 engine, available all-wheel drive, up to an EPA-estimated 28/39 mpg (city/highway) for the four-cylinder engine.'),
    writeln('\n'),
    writeln('3. TESLA MODEL 3:'),
    writeln('Price Range: $40,000 to $60,000.'),
    writeln('The Tesla Model 3 stands out as an all-electric sedan, offering cutting-edge technology, exceptional electric range, and impressive performance. It features a minimalist interior with a large central touchscreen and advanced autopilot capabilities.'),
    writeln('Key Features: Long-range electric powertrain, Autopilot advanced safety and convenience features, minimalistic interior with a 15-inch touchscreen, up to 358 miles of range on a single charge (Long Range version), and swift acceleration.'),
    writeln('\n'),
    writeln('4. BMW 3 SERIES:'),
    writeln('Price Range: $41,000 to $56,000.'),
    writeln('The BMW 3 Series is a luxury sport sedan that blends performance, comfort, and technology. It offers a range of powerful engines, a refined interior, and engaging driving dynamics. It\'s well-known for its balance of luxury and sportiness.'),
    writeln('Key Features: Refined handling and performance, multiple engine choices including a plug-in hybrid, available xDrive all-wheel drive, luxurious interior with intuitive infotainment system, and advanced driver assistance systems.').

% Outputs a nicely formatted list of answers with letters

% base case for recursive function
answers([], _).
answers([First|Rest], Index) :-
  Letter is 65 + Index, % ASCII value for uppercase letters starting from 'A'
  char_code(Char, Letter),
  write(Char), write(' '), answer(First), nl,
  NextIndex is Index + 1,
  answers(Rest, NextIndex).

% Parses an Index and returns a Response representing the "Indexth" element in Choices
parse(Char, Choices, Response) :-
    char_code(Char, Code),
    Index is Code - 65, % Convert letter to index
    nth0(Index, Choices, Response).

% Reads and processes the input for each question. It ensures that the input is a single letter and valid based on the provided choices.
read_user_input(Char, Choices) :-
    write('Enter your choice: '),
    read_line_to_string(user_input, InputString),
    string_length(InputString, Length),
    (   Length == 1
    ->  process_single_char_input(InputString, Char, Choices)
    ;   writeln('Invalid input, please enter a single letter only!'),
        answers(Choices, 0),
        read_user_input(Char, Choices)
    ).

% Process a single character input
process_single_char_input(InputString, Char, Choices) :-
    string_upper(InputString, UpperInputString), % Convert to uppercase
    sub_string(UpperInputString, 0, 1, _, UpperInputStringChar),
    string_chars(UpperInputStringChar, [UpperInputChar]), % Convert string to char
    length(Choices, ChoicesLength),
    UpperBound is 64 + ChoicesLength, % 'A' is 65 in ASCII
    char_code(UpperInputChar, Code),
    (   between(65, UpperBound, Code)
    ->  Char = UpperInputChar
    ;   writeln('Invalid selection, please select a valid letter!'),
        answers(Choices, 0),
        read_user_input(Char, Choices)
    ).

% Convert string to uppercase
string_upper(String, UpperString) :-
    string_chars(String, Chars),
    maplist(char_upper, Chars, UpperChars),
    string_chars(UpperString, UpperChars).

% Convert character to uppercase if it is lowercase
char_upper(Char, Upper) :-
    char_code(Char, Code),
    Code >= 97, Code =< 122, % Lowercase ASCII range
    UpperCode is Code - 32,
    char_code(Upper, UpperCode).

char_upper(Char, Char) :- % If already uppercase or non-letter
    char_code(Char, Code),
    \+ (Code >= 97, Code =< 122).

% Parses the input (a single character) and converts it into a choice from the provided list of options.
parse_choice(Char, Choices, Response) :-
    char_code(Char, Code),
    Index is Code - 65, % Convert letter to index (A = 0, B = 1, ...)
    nth0(Index, Choices, Response).

% Clears and resets all previously stored answers. 
% This is crucial for ensuring that each new session starts fresh without carrying over answers from a previous session

reset_answers :-
    % delete the progress 
    retract(progress(_, _)),
    % trigger the backtrack, look for another progress/2 fact to retract.
    fail.
% Always True, after retract all of the facts, to stop the condition for backtrack.(a fact)
reset_answers.