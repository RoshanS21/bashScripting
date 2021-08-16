# Roshan Shrestha

function NewLine {
    echo " "
}

# Use regex to compare numbers
read -p "Enter a number: " testNumber
# Double brackets
if [[ $testNumber =~ ^[0-9]*$ ]]; then
    echo "${testNumber} is a number"
else
    echo "Oops"
fi
NewLine