SELECT name FROM stars
    JOIN people ON stars.person_id = people.id
  WHERE movie_id
IN (SELECT movie_id FROM people
    JOIN stars ON people.id = stars.person_id
  WHERE name = "Kevin Bacon" AND birth = "1958")
AND NOT name = "Kevin Bacon";
