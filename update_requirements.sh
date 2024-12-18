reqs=$(pipenv requirements --from-pipfile | tail -n +2 | sed -e 's/;.*//' | tr '\n' ' '; echo "")

new_reqs=$(echo "requirements = $reqs")

file="settings.ini"
if grep -q "# requirements =" "$file"; then
    sed -i -e 's/# requirements =.*/'"$new_reqs"'/' $file
else
    sed -i -e 's/^requirements =.*/'"$new_reqs"'/' $file
fi
