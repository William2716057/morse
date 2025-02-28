$morseCode = @{
    'A' = '.-';    'B' = '-...';  'C' = '-.-.';  'D' = '-..';
    'E' = '.';     'F' = '..-.';  'G' = '--.';   'H' = '....';
    'I' = '..';    'J' = '.---';  'K' = '-.-';   'L' = '.-..';
    'M' = '--';    'N' = '-.';    'O' = '---';   'P' = '.--.';
    'Q' = '--.-';  'R' = '.-.';   'S' = '...';   'T' = '-';
    'U' = '..-';   'V' = '...-';  'W' = '.--';   'X' = '-..-';
    'Y' = '-.--';  'Z' = '--..';
    '0' = '-----'; '1' = '.----'; '2' = '..---'; '3' = '...--';
    '4' = '....-'; '5' = '.....'; '6' = '-....'; '7' = '--...';
    '8' = '---..'; '9' = '----.';
    '.' = '.-.-.-'; ',' = '--..--'; '?' = '..--..'; '/' = '-..-.';
    '@' = '.--.-.'; '-' = '-....-'; '(' = '-.--.'; ')' = '-.--.-';
    ' ' = '/'
}

Function ConvertToMorse {
    param (
        [string]$inputString
    )

    ($inputString.ToUpper().ToCharArray() | ForEach-Object {
        if ($morseCode.ContainsKey($_)) {
            $morseCode[$_]
        } else {
            '?'
        }
    }) -join ' '
}

# Example Usage
$input = Read-Host "Enter a string to convert to Morse code"
$converted = ConvertToMorse -inputString $input
Write-Output "$converted"
