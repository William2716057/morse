$morseCode = @{
    'A' = '.-';    'B' = '-...';    'C' = '-.-.';    'D' = '-..';
    'E' = '.';     'F' = '..-.';    'G' = '--.';     'H' = '....';
    'I' = '..';    'J' = '.---';    'K' = '-.-';     'L' = '.-..';
    'M' = '--';    'N' = '-.';     'O' = '---';     'P' = '.--.';
    'Q' = '--.-';  'R' = '.-.';     'S' = '...';     'T' = '-';
    'U' = '..-';   'V' = '...-';    'W' = '.--';     'X' = '-..-';
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

    $morseArray = @() # Initialize an empty array
    foreach ($char in $inputString.ToUpper()) {
        if ($script:morseCode.ContainsKey($char)) {
            $morseArray += $script:morseCode[$char]
        } else {
            $morseArray += '?'
        }
    }

    return $morseArray -join ' '
}


$input = Read-Host "Enter string"
$converted = ConvertToMorse -inputString $input
Write-Output "$converted"

