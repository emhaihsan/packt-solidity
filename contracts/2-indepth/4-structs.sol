// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

// Struct are types that are used to represent a record. Suppose you want to keep track of your movies in a libraray
// You might want to track the following attributes about each movie

contract learnStructs {

    struct Movie{
        string title;
        string director;
        uint movie_id;
    }
    Movie movie;
    Movie comedy;
    function setMovie() public {
        // movie = Movie("Blade Runner", "Ridley Scott",1);
        // movie = Movie("Joker", "Ridley Scott", 5);
        comedy = Movie("Zoolander", "Ben Stiller",4);
    }

    function getMovieId() public view returns(uint){
        return movie.movie_id;

    }

    // create a new movie and set it up so that it updates to the movie in the setMovie funciton
    // return the id of the new movie
    // create a new var called comedy and set up comedy to the datatype Movie
    // update the setMovie function with a comedy movie that contain name, director, and an id
    // return the movie id of comedy
}