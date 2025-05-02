// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract learnMapping {
    // key and value - key can be string uint or bool - value can be anything

    // you create a library that has keys and values assigned
    mapping(address => uint) public myMap;
    function getAddress(address _addr) public view returns(uint){
        return myMap[_addr];
    }

    function setAddress(address _addr, uint _i) public{
        myMap[_addr] = _i;
    }

    function removeAddress(address _addr) public {
        delete myMap[_addr];
    }
}

/*
Mapping Assignment:
0. create a unique data type as a strut called Movie and give it the string properties: title and director
1. create a map called movie which takes a uint as a key and Movie as a value
2. create a function called addMovie which takes three inputs, movie id, title and director which assign a value of an integer to a movie added back to the movie map, It should include a title and director name.
3. Deploy the contract and update the movie information to the movie map with our favorite movies
*/

contract StructMap{
    struct Movie{
        string title;
        string director;
    }

    mapping(uint => Movie) public movieList;
    function addMovie(uint movie_id, string memory _title,  string memory _director) public {
        movieList[movie_id] = Movie(_title, _director);
    }

}