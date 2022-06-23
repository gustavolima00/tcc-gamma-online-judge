figures_path="latex/figuras"
for image_path in $(ls $figures_path/*.png); do
    image_name=$(basename -s .png $image_path)
    convert $figures_path/$image_name.png eps2:$figures_path/$image_name.eps
done