# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Movie.destroy_all
Studio.destroy_all
Actor.destroy_all
Role.destroy_all


# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

studio_1 = Studio.new
studio_1["studio_name"] = "Warner Bros."
studio_1.save

movie_1 = Movie.new
movie_1["movie_title"] = "Batman Begins"
movie_1["year"] = "2008"
movie_1["rating"] = "PG-13"
movie_1["id_studio"] = studio_1["id"]
movie_1.save

movie_2 = Movie.new
movie_2["movie_title"] = "The Dark Knight"
movie_2["year"] = "2005"
movie_2["rating"] = "PG-13"
movie_2["id_studio"] = studio_1["id"]
movie_2.save

movie_3 = Movie.new
movie_3["movie_title"] = "The Dark Knight Rises"
movie_3["year"] = "2012"
movie_3["rating"] = "PG-13"
movie_3["id_studio"] = studio_1["id"]
movie_3.save

actor_1 = Actor.new
actor_1["actor_name"] = "Christian Bale"
actor_1.save

actor_2 = Actor.new
actor_2["actor_name"] = "Michael Caine"
actor_2.save

actor_3 = Actor.new
actor_3["actor_name"] = "Liam Neeson"
actor_3.save

actor_4 = Actor.new
actor_4["actor_name"] = "Katie Holmes"
actor_4.save

actor_5 = Actor.new
actor_5["actor_name"] = "Gary Oldman"
actor_5.save

actor_6 = Actor.new
actor_6["actor_name"] = "Heath Ledger"
actor_6.save

actor_7 = Actor.new
actor_7["actor_name"] = "Aaron Eckhart"
actor_7.save

actor_8 = Actor.new
actor_8["actor_name"] = "Maggie Gyllenhaal"
actor_8.save

actor_9 = Actor.new
actor_9["actor_name"] = "Tom Hardy"
actor_9.save

actor_10 = Actor.new
actor_10["actor_name"] = "Joseph Gordon-Levitt"
actor_10.save

actor_11 = Actor.new
actor_11["actor_name"] = "Anne Hathaway"
actor_11.save

role_1 = Role.new
role_1["id_movie"] = movie_1["id"]
role_1["id_actor"] = actor_1["id"]
role_1["character_name"] = "Bruce Wayne"
role_1.save

role_2 = Role.new
role_2["id_movie"] = movie_1["id"]
role_2["id_actor"] = actor_2["id"]
role_2["character_name"] = "Alfred"
role_2.save

role_3 = Role.new
role_3["id_movie"] = movie_1["id"]
role_3["id_actor"] = actor_3["id"]
role_3["character_name"] = "Ra's Al Ghul"
role_3.save

role_4 = Role.new
role_4["id_movie"] = movie_1["id"]
role_4["id_actor"] = actor_4["id"]
role_4["character_name"] = "Rachel Dawes"
role_4.save

role_5 = Role.new
role_5["id_movie"] = movie_1["id"]
role_5["id_actor"] = actor_5["id"]
role_5["character_name"] = "Commissioner Gordon"
role_5.save

role_6 = Role.new
role_6["id_movie"] = movie_2["id"]
role_6["id_actor"] = actor_1["id"]
role_6["character_name"] = "Bruce Wayne"
role_6.save

role_7 = Role.new
role_7["id_movie"] = movie_2["id"]
role_7["id_actor"] = actor_6["id"]
role_7["character_name"] = "Joker"
role_7.save

role_8 = Role.new
role_8["id_movie"] = movie_2["id"]
role_8["id_actor"] = actor_7["id"]
role_8["character_name"] = "Harvey Dent"
role_8.save

role_9 = Role.new
role_9["id_movie"] = movie_2["id"]
role_9["id_actor"] = actor_2["id"]
role_9["character_name"] = "Alfred"
role_9.save

role_10 = Role.new
role_10["id_movie"] = movie_2["id"]
role_10["id_actor"] = actor_8["id"]
role_10["character_name"] = "Rachel Dawes"
role_10.save

role_11 = Role.new
role_11["id_movie"] = movie_3["id"]
role_11["id_actor"] = actor_1["id"]
role_11["character_name"] = "Bruce Wayne"
role_11.save

role_12 = Role.new
role_12["id_movie"] = movie_3["id"]
role_12["id_actor"] = actor_5["id"]
role_12["character_name"] = "Commissioner Gordon"
role_12.save

role_13 = Role.new
role_13["id_movie"] = movie_3["id"]
role_13["id_actor"] = actor_9["id"]
role_13["character_name"] = "Bane"
role_13.save

role_14 = Role.new
role_14["id_movie"] = movie_3["id"]
role_14["id_actor"] = actor_10["id"]
role_14["character_name"] = "John Blake"
role_14.save

role_15 = Role.new
role_15["id_movie"] = movie_3["id"]
role_15["id_actor"] = actor_11["id"]
role_15["character_name"] = "Selina Kyle"
role_15.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

movies = Movie.all

#studio_match = Studio.find_by({})

for movie in movies
    mname = movie["movie_title"]
    yr = movie["year"]
    rate = movie["rating"]
    stu = Studio.find_by({"id" => movie["id_studio"]})["name"]
    puts "#{mname} #{yr} #{rate} #{stu}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

actors = Actor.all
roles = Role.all

for role in roles
    role_name = role["character_name"]
    movie_name = Movie.find_by({"id" => role["id_movie"]})["movie_title"]
    actor_name = Actor.find_by({"id" => role["id_actor"]})["actor_name"]
    puts "#{movie_name} #{actor_name} #{role_name}"
end