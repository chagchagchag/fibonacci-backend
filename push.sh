echo ""
echo "git add ."
git add .

echo ""
echo "git commint "
git commit -m "$1"

echo ""
echo "push"
git push -u origin main
