% MOVIE DATASET FOR PROJECT
movie('The Shawshank Redemption', [prison, drama, hope]).
movie('The Godfather', [crime, mafia, family]).
movie('The Godfather Part II', [crime, mafia, revenge]).
movie('The Dark Knight', [batman, joker, action]).
movie('12 Angry Men', [courtroom, jury, drama]).
movie('Schindler\'s List', [holocaust, war, drama]).
movie('The Lord of the Rings: The Return of the King', [fantasy, epic, battle]).
movie('Pulp Fiction', [crime, gangsters, nonlinear]).
movie('The Lord of the Rings: The Fellowship of the Ring', [fantasy, adventure]).
movie('Forrest Gump', [drama, life, history]).
movie('Inception', [dreams, sci_fi, heist]).
movie('Fight Club', [fight, drama, anarchy]).
movie('The Lord of the Rings: The Two Towers', [fantasy, battle]).
movie('Star Wars: Episode V - The Empire Strikes Back', [star_wars, sci_fi]).
movie('The Matrix', [virtual_reality, hacker, revolution]).
movie('Goodfellas', [crime, mafia, gangsters]).
movie('One Flew Over the Cuckoo\'s Nest', [mental_hospital, rebellion]).
movie('Se7en', [serial_killer, crime, detective]).
movie('It\'s a Wonderful Life', [christmas, angel]).
movie('The Silence of the Lambs', [hannibal, thriller]).
movie('City of God', [crime, brazil, gangs]).
movie('Saving Private Ryan', [war, ww2, soldiers]).
movie('Life Is Beautiful', [holocaust, comedy]).
movie('Star Wars', [star_wars, sci_fi, jedi]).
movie('Interstellar', [space, sci_fi, time]).
movie('Spirited Away', [anime, fantasy, spirits]).
movie('The Green Mile', [prison, supernatural]).
movie('Léon: The Professional', [assassin, crime]).
movie('Parasite', [class, thriller, korea]).
movie('The Pianist', [holocaust, piano]).
movie('American History X', [neo_nazi, racism, prison]).
movie('Gladiator', [roman, revenge, arena]).
movie('The Departed', [crime, undercover, mafia]).
movie('Whiplash', [drums, jazz, music]).
movie('The Prestige', [magic, rivalry, illusion]).
movie('Casablanca', [war, romance, classic]).
movie('The Lion King', [lion, africa, disney]).
movie('Apocalypse Now', [vietnam, war, jungle]).
movie('Memento', [memory, thriller, revenge]).
movie('Grave of the Fireflies', [anime, war, tragedy]).
movie('Raiders of the Lost Ark', [indiana_jones, adventure]).
movie('Alien', [space, horror, alien]).
movie('Psycho', [horror, shower, psycho]).
movie('Jaws', [shark, horror, ocean]).
movie('The Shining', [hotel, horror, madness]).
movie('Django Unchained', [slavery, revenge, western]).
movie('WALL·E', [robot, space, disney]).
movie('Avengers: Infinity War', [marvel, superhero, infinity]).
movie('Spider-Man: Into the Spider-Verse', [spider_man, multiverse]).

% ============================================
% KEYWORD MATCHING
% ============================================
match(Keyword) :- 
    movie(Title, Tags), 
    member(Keyword, Tags),
    write('🎬 '), write(Title), nl.

% ============================================
% TOP RATED MOVIES
% ============================================
top_rated :- 
    top_movie(Title),
    write('⭐ '), write(Title), nl.

% Top movies list (hardcoded 9.0+ from IMDB)
top_movie('The Shawshank Redemption').
top_movie('The Godfather').
top_movie('The Godfather Part II').
top_movie('The Dark Knight').
top_movie('12 Angry Men').
top_movie('Schindler\'s List').
top_movie('The Lord of the Rings: The Return of the King').

% ============================================
% ALL MOVIES LIST
% ============================================
list_all :- 
    write('📋 ALL 50 MOVIES ('), length_movies(N), write(N), write(' total):'), nl,
    findall(Title, movie(Title, _), Movies),
    forall(member(M, Movies), (write('  '), write(M), nl)).

length_movies(50).  % Pre-calculated for speed
similar(Movie) :- 
    movie(Movie, Tags), 
    member(Tag, Tags), 
    movie(Other, OtherTags), 
    member(Tag, OtherTags), 
    Other \= Movie, 
    write('➡️  '), write(Other), nl, !.