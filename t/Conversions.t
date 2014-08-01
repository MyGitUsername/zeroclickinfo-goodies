#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;
use DDG::Test::Goodie;

zci answer_type => 'conversions';

ddg_goodie_test(
    ['DDG::Goodie::Conversions'],
    'convert 5 oz to g' => test_zci('5 ounces = 141.747 grams', html => qr/.*/),
    'convert 1 ton to long ton' => test_zci('1 ton = 0.893 long tons', html => qr/.*/),
    'convert 158 ounce to lbm' => test_zci('158 ounces = 9.875 pounds', html => qr/.*/),
    'convert 0.111 stone to pound' => test_zci('0.111 stone = 1.554 pounds', html => qr/.*/),
    '3 kilogramme to pound' => test_zci('3 kilograms = 6.614 pounds', html => qr/.*/),
    '1.3 tonnes to ton' => test_zci('1.3 metric tons = 1.433 tons', html => qr/.*/),
    '2 tons to kg' => test_zci('2 tons = 1,814.372 kilograms', html => qr/.*/),
    '1 ton to kilos' => test_zci('1 ton = 907.186 kilograms', html => qr/.*/),
    '3.9 oz in g' => test_zci('3.9 ounces = 110.563 grams', html => qr/.*/),
    '2 miles to km' => test_zci('2 miles = 3.219 kilometers', html => qr/.*/),
    'convert 5 feet to in' => test_zci('5 feet = 60 inches', html => qr/.*/),
    '0.5 nautical mile to klick' => test_zci('0.5 nautical miles = 0.926 kilometers', html => qr/.*/),
    '500 miles in metres' => test_zci('500 miles = 804,672.249 meters', html => qr/.*/),
    '25 cm in inches' => test_zci('25 centimeters = 9.843 inches', html => qr/.*/),
    '1760 yards to miles' => test_zci('1,760 yards = 1 mile', html => qr/.*/),
    '3520yards to miles' => test_zci('3,520 yards = 2 miles', html => qr/.*/),
    '3.5e-2 miles to inches' => test_zci('3.5 * 10^-2 miles = 2,217.602 inches', html => qr/.*/),
    'convert 1stone to lbs' => test_zci('1 stone = 14 pounds', html => qr/.*/),
    '30cm in in' => test_zci('30 centimeters = 11.811 inches', html => qr/.*/),
    '36 months to years' => test_zci('36 months = 3 years', html => qr/.*/),
    '43200 seconds in hours' => test_zci('43,200 seconds = 12 hours', html => qr/.*/),
    '4 hours to minutes' => test_zci('4 hours = 240 minutes', html => qr/.*/),
    'convert 5 kelvin to fahrenheit' => test_zci('5 kelvin = -450.670 degrees fahrenheit', html => qr/.*/),
    '1 bar to pascal' => test_zci('1 bar = 100,000 pascals', html => qr/.*/),
    '1 kilopascal to psi' => test_zci('1 kilopascal = 0.145 pounds per square inch', html => qr/.*/),
    '1 atm to kpa' => test_zci('1 atmosphere = 101.325 kilopascals', html => qr/.*/),
    '5yrds to km' => test_zci('5 yards = 0.005 kilometers', html => qr/.*/),
    '12" to cm' => test_zci('12 inches = 30.480 centimeters', html => qr/.*/),
    'convert 25 inches into feet' => test_zci('25 inches = 2.083 feet', html => qr/.*/),
    '42 kilowatt hours in joules' => test_zci('42 kilowatt-hours = 1.51 * 10^8 joules', html => qr/.*/),
    '2500kcal in tons of tnt' => test_zci('2,500 large calories = 0.003 tons of TNT', html => qr/.*/),
    '90 ps in watts' => test_zci('90 metric horsepower = 66,194.888 watts', html => qr/.*/),
    '1 gigawatt in horsepower' => test_zci('1 gigawatt = 1.34 * 10^6 horsepower', html => qr/.*/),
    '180 degrees in radians' => test_zci('180 degrees = 3.142 radians', html => qr/.*/),
    '270 degrees in quadrants' => test_zci('270 degrees = 3 quadrants', html => qr/.*/),
    '180 degrees in grads' => test_zci('180 degrees = 200 gradians', html => qr/.*/),
    '45 newtons to pounds force' => test_zci('45 newtons = 10.116 pounds force', html => qr/.*/),
    '4E5 newtons to pounds force' => test_zci('4 * 10^5 newtons = 89,923.577 pounds force', html => qr/.*/),
    '4,1E5 newtons to pounds force' => test_zci('4,1 * 10^5 newtons = 92.171,667 pounds force', html => qr/.*/),
    '8 poundal to newtons' => test_zci('8 poundals = 1.106 newtons', html => qr/.*/),
    'convert 5 f to celsius' => test_zci('5 degrees fahrenheit = -15 degrees celsius', html => qr/.*/),
    '6^2 oz to grams' => undef,
    'NaN oz to stones' => undef,
    '45x10 oz to stones' => undef,
    'convert -9 g to ozs' => undef,
    'convert 5 oz to yards' => undef,
    'puff toke to kludge' => undef,
    'Inf oz to stones' => undef,
    'convert -5 kelvin to fahrenheit' => undef,
    'use a ton of stones' => undef,
    'shoot onself in the foot' => undef,
    'foot in both camps' => undef,
    '10 mg to tons' => test_zci('10 milligrams = 1.1 * 10^-8 tons', html => qr/.*/),
    '10000 minutes in microseconds' => test_zci('10,000 minutes = 6 * 10^11 microseconds', html => qr/.*/),
    'convert 5 bytes to bit' => test_zci('5 bytes = 40 bits', html => qr/.*/),
    '5 GB to megabyte' => test_zci('5 gigabytes = 5,000 megabytes', html => qr/.*/),
    '5,0 GB to megabyte' => test_zci('5,0 gigabytes = 5.000 megabytes', html => qr/.*/),
    '0.013 mb in bits' => test_zci('0.013 megabytes = 104,000 bits', html => qr/.*/),
    '0,013 mb in bits' => test_zci('0,013 megabytes = 104.000 bits', html => qr/.*/),
    '1 exabyte to pib' => test_zci('1 exabyte = 888.178 pebibytes', html => qr/.*/),
    'convert 1 yb to yib' => test_zci('1 yottabyte = 0.827 yobibytes', html => qr/.*/),
    '16 years in months' => test_zci('16 years = 192 months', html => qr/.*/),
    '1 year in months' => test_zci('1 year = 12 months', html => qr/.*/),
    '360 degrees in revolutions' => test_zci('360 degrees = 1 revolution', html => qr/.*/),
    '3e60 degrees in revolutions' => test_zci('3 * 10^60 degrees = 8.33 * 10^57 revolutions', html => qr/.*/),
    'convert km to cm' => test_zci('1 kilometer = 100,000 centimeters', html => qr/.*/),
    'convert 10ms to seconds' => test_zci('10 milliseconds = 0.010 seconds', html => qr/.*/),
    'what is 1 inch in cm' => test_zci('1 inch = 2.540 centimeters', html => qr/.*/),
    'what are 10 yards in metres' => test_zci('10 yards = 9.144 meters', html => qr/.*/),
    'how long is 42 days in mins' => test_zci('42 days = 60,480 minutes', html => qr/.*/),
    'how much is 40 kelvin in celsius' => test_zci('40 kelvin = -233.150 degrees celsius', html => qr/.*/),
    '12 degrees Celsius to Fahrenheit' => test_zci('12 degrees celsius = 53.600 degrees fahrenheit', html => qr/.*/),
    '1 degrees Fahrenheit to celsius' => test_zci('1 degrees fahrenheit = -17.222 degrees celsius', html => qr/.*/),
    '0 c in k' => test_zci('0 degrees celsius = 273.150 kelvin', html => qr/.*/),
    '234 f to c' => test_zci('234 degrees fahrenheit = 112.222 degrees celsius', html => qr/.*/),
    '234 f to k' => test_zci('234 degrees fahrenheit = 385.372 kelvin', html => qr/.*/),
    'metres from 20 yards' => test_zci('20 meters = 21.872 yards', html => qr/.*/),
    '7 milligrams to micrograms' => test_zci('7 milligrams = 7,000 micrograms', html => qr /.*/)
);

done_testing;
