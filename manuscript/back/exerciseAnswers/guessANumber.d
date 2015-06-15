/**
 * Example answer for guess a number exercise.
 * For book The way to program - Let's think like a D(eveloper)!
 *
 * License: CC-BY-NC-ND
 * Copyright: 2015 Richard Andrew Cattermole
 * URL: http://leanpub.com/twp-d
 */
module guessANumberAnswer;

import std.stdio : writeln, write, readln, stdout;
import std.string : toUpper;
import core.thread : Thread;
import core.time : dur;

void main() {
    bool keepGoing = true;

    // program header text

    writeln("Welcome to guess a number");
    writeln();
    writeln("The game where the computer tries to guess");
    writeln("  your number. Must be between 1 and 100.");
    writeln("  Can have a single decimal digit!");
    writeln();
    writeln("Copyright \xC2\xA9 2015 Richard Cattermole");
    writeln("\tWritten for twp-d http://leanpub.com/twp-d");
    writeln();

    writeln("To stop use ctrl + c or write stop");
    writeln();

    writeln("Prepare yourself and number");
    Thread.sleep(dur!"msecs"(450));
    
    write("3");
    foreach(_; 0 .. 3) {
        Thread.sleep(dur!"msecs"(350));
        write(".");
        stdout.flush;
    }
    write(" 2");
    foreach(_; 0 .. 2) {
        Thread.sleep(dur!"msecs"(250));
        write(".");
        stdout.flush;
    }
    write(" 1");
    stdout.flush;

    Thread.sleep(dur!"msecs"(150));
    write(".");
    stdout.flush;

    Thread.sleep(dur!"msecs"(250));
    writeln(" and go!");
    stdout.flush;
    writeln();

    // the actual game

    float highV = 100;
    float lowV = 0;

    for(;;) {
        // normalize the high and low range numbers
        highV = (cast(uint)(highV) * 10f) / 10f;
        lowV = (cast(uint)(lowV) * 10f) / 10f;

        // check that the high and low range numbers are not the same.
        // means that we never hit their number
        if (highV == lowV) {
            writeln("ERROR");
            writeln("\tMax number and low number is the same.");
            return;
        }

        // make the actual guess
        float guess = ((highV - lowV) / 2) + lowV;
        write("Is your number ", guess, "? ");
    
        // performs a slice on readln as we don't need the new line character (last one)
        // also makes it upper case to standalise it
        string line = readln()[0 .. $-1].toUpper;
    
        // did we get the number right?
        if (line == "YES") {
            writeln("So your number is ", guess, " yay!");
            return;
        } else if (line == "NO") {
            write("Is your number greater then ", guess, "? ");
        } else if (line == "STOP") {
            writeln("Good bye");
            return;
        } else {
            writeln("ERROR: unrecognised response.");
            write("Please reenter");
            Thread.sleep(dur!"msecs"(250));
            writeln();
            writeln();
            continue;
        }
        
        // performs a slice on readln as we don't need the new line character (last one)
        // also makes it upper case to standalise it
        line = readln()[0 .. $-1].toUpper;
        
        // if greater than last guess vs less than
        if (line == "YES") {
            lowV = guess;
        } else if (line == "NO") {
            highV = guess;
        } else if (line == "STOP") {
            writeln("Good bye");
            return;
        } else {
            writeln("ERROR: unrecognised response.");
            write("Please reenter");
            Thread.sleep(dur!"msecs"(250));
            writeln();
            writeln();
            continue;
        }
    }
}
