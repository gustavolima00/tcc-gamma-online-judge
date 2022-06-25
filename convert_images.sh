figures_path="latex/figuras"
editable_path="latex/editaveis"
for image_path in $(ls $figures_path/*.png); do
    image_name=$(basename -s .png $image_path)
    convert $figures_path/$image_name.png eps2:$figures_path/$image_name.eps
done
for file_path in $(ls $editable_path/*.tex); do
    sed "s/.png/.eps/g" $file_path > tmp
    mv tmp $file_path
done