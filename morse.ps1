#dictionary of Morse code
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

#take user input
$message = Read-Host

#iterate through each character in $message
foreach ($char in $message.ToCharArray()) {
	#convert all to upper to ensure all characters are found in dictionary
    $charUpper = [string]$char  # Cast $char to string, then convert to uppercase
    $charUpper = $charUpper.ToUpper()  # Convert the string to uppercase
    if ($morseCode.ContainsKey($charUpper)) {
        Write-Host $morseCode[$charUpper]
    } else {
        Write-Host "'$char' not found in table."
    }
}
