# Attacking Queens

> Provided an IPv4 address, say 8.8.8.8, use a RESTful client to get the result from ipinfo.io (e.g. http://ipinfo.io/8.8.8.8) and take the altitude geocoordinate, casting it to an integer N. Then, use N to construct an N x N chess board. Randomly assign N/2 unique coordinates on which a Queen will sit. No other pieces will be on the board. Your program should then determine if all of the queens are placed in such a way where none of them are attacking each other.

> If this is true for the given inputs, return the string true,
otherwise return each pair of attacking Queens.

## Solution

A Ruby program uses an IP address latitude to build a chess-board to randomly place queens and
return each pair of attacking Queens.

## Code

  $ git clone https://github.com/rah00l/attacking-queens

## Contents

* Program Output
* Testcase Output
* [Wiki](#wiki)
* [Responses](#responses)

## Program Output

![Program output](/docs/output.png?raw=true "Title")

## Testcase Output

![Testcase output](/docs/test_run_output.png?raw=true "Title")

## Wiki

See the list of [available
methods](https://github.com/rah00l/attacking-queens/wiki/Documentation) in the
wiki.

## Responses

Program returns either an array or string where an array contains each pair of attacking queens coordinates.
