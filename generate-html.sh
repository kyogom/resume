
# showdown makehtml -i 2016_bank.md -o 2016_bank.html

for file in `\find . -name '*.md'`; do
    showdown makehtml -i $file -o ./html/$file.html
    echo '<html><head><link rel="stylesheet" href="../github-markdown.css"></head><body>' > data.tmp; cat ./html/$file.html >> data.tmp; cat data.tmp > ./html/$file.html
    echo '</body></html>' >> ./html/$file.html
done
sed -i -e "s/\.md/\.md\.html/g" ./html/README.md.html
rm html/README.md.html-e