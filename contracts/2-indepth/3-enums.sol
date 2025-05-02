// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

// Enums restrict a variable to have one of only a few predefined values. The values in this enumerated list are called enums/

// With the use of enum it is possible to reduce the number of bugs in your code.

// enum for our food app that offers either large medium or small options!

contract enumsLearn{
    enum frenchFriesSize{
        SMALL,
        MEDIUM,
        LARGE
    }

    frenchFriesSize choice;
    frenchFriesSize constant defaultChoice = frenchFriesSize.MEDIUM;

    function setSmall() public {
        choice = frenchFriesSize.SMALL;
    }

    function getChoice() public view returns(frenchFriesSize){
        return choice;
    }

    function getDefaultChoice() public view returns (uint){
        return  uint(defaultChoice);
    }

    enum shirtColor{
        RED, WHITE, BLUE
    }
    shirtColor shirtChoice;
    shirtColor constant defaultShirt = shirtColor.BLUE;

    function setWhite() public {
        shirtChoice = shirtColor.WHITE;
    }

    function getShirt() public returns(shirtColor){
        return shirtChoice;
    }

    function getDefaultShirt() public view returns (uint){
        return uint(defaultShirt);
    }

}

/* Exercise:
1. Create an enum for shirt color called shirtColor and set it to the options of either RED or WHITE, or GREEN
2. create a data of shirtColor called defaultChoice which is a constant set to the color blue
3. create a data of shirtColor called choice and don't initiate the value
4. create a function called setWhite which changes the shirt color of shirtColor to white
5. create a funciton getChoice which returns the current choice of shirtColor
6. create a function getDefaultChoice which returns the default choice of shirtColor
*/

