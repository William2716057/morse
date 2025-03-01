# Dictionary of Morse code
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

# Take user input
$message = Read-Host "Enter text"

# Initialize string array
$stringArray = @()

# Iterate through each character in $message
foreach ($char in $message.ToCharArray()) {
    # Convert all to upper to ensure all characters found in dictionary
    $charUpper = [string]$char  # Cast $char to string
    $charUpper = $charUpper.ToUpper()  # Convert the string to uppercase
    
    if ($morseCode.ContainsKey($charUpper)) {
        # Append to an array
        $stringArray += $morseCode[$charUpper]
    } else {
        Write-Host "'$char' not found in table."
    }
}

# Write as string in single line
Write-Host ($stringArray -join ' ')
