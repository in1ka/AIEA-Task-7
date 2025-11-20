%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Animal Reasoning: Warm-Blooded + Swimming Ability
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%% RULES %%%%%%%%%%%%%%%

%% An animal is warm-blooded if it is a mammal.
warm_blooded(Animal) :-
    mammal(Animal).

%% An animal is warm-blooded if it is a bird.
warm_blooded(Animal) :-
    bird(Animal).

%% An animal can swim if it is a water animal.
can_swim(Animal) :-
    water_animal(Animal).

%% Penguins can swim even though they are land birds.
can_swim(penguin).


%%%%%%%%%%%%%%% FACTS %%%%%%%%%%%%%%%

%% Animal categories
mammal(dog).
mammal(cat).
mammal(elephant).
mammal(dolphin).

bird(eagle).
bird(penguin).

fish(shark).
fish(salmon).

reptile(crocodile).
reptile(turtle).

%% Habitat facts
land_animal(dog).
land_animal(cat).
land_animal(elephant).
land_animal(penguin).

water_animal(shark).
water_animal(dolphin).
water_animal(salmon).
water_animal(crocodile).
water_animal(turtle).


%%%%%%%%%%%%%%% TRAITS (optional) %%%%%%%%%%%%%%%

has_fur(dog).
has_fur(cat).

lays_eggs(eagle).
lays_eggs(penguin).
lays_eggs(shark).
lays_eggs(salmon).
lays_eggs(crocodile).
lays_eggs(turtle).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example Queries:
%%
%% ?- warm_blooded(dog).            % true
%% ?- warm_blooded(shark).          % false
%%
%% ?- can_swim(dolphin).            % true
%% ?- can_swim(penguin).            % true (special rule)
%% ?- can_swim(elephant).           % false
%%
%% ?- mammal(X).                    % list all mammals
%% ?- warm_blooded(X).              % list all warm-blooded animals
%% ?- can_swim(X).                  % list all animals that can swim
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
