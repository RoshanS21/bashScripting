# Roshan Shrestha

function NewLine {
    echo " "
}

name="roshan"
echo "${name}"
echo "This is capitalized name"
echo "${name^}"
echo "This is uppercase name"
echo "${name^^}"
name=${name^^}
echo "Lowercase the first character"
echo "${name,}"
echo "Lowercase everything"
echo "${name,,}"
NewLine

# using a pattern
echo "lowercase only HAN using pattern"
echo "${name,,[HAN]}"
NewLine

# Array ()
sentence=(This is a laptop)
echo "Array: ${sentence[*]}"
echo "${sentence[@]^^}"
echo "${sentence[*]^^}"
echo "${sentence[0]^^}"
NewLine

# Remove matching pattern from beginning of a string
name="roshan shrestha"
echo "${name}"
echo "Remove shortest matching pattern # beginning of a string"
echo "${name#*sh}"
echo "${name##*sh}"
NewLine

# Remove matching pattern from end of a string
echo "Remove shortest matching pattern # end of a string"
echo "${name}"
echo "${name%%h*}"
NewLine

# Search and Replace
phrase="white is the wall and white is the snow"
echo "Search and Replace"
echo "${phrase}"
echo "${phrase/white/red}"
echo "${phrase//white/red}"
NewLine

# Substring expansion
echo "${phrase:3}"
echo "${phrase: -3}"
echo "${phrase: 3:5}"
echo "${phrase: 5: -3}"
NewLine

echo "${#phrase} is the length of \"${phrase}\""
NewLine
