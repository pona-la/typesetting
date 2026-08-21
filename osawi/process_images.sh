# Very rough approach for now, just posterising the 100dpi images with a dithering tool so they look like the right colours from a distance.

images_dir="pg43936-h/images/"
base_settings="-s 10% edm --serpentine Atkinson"

# Ideally, use contrast and brightness tweaks to make the image better match
# these default palettes, until it looks good enough!
grey_palette="#ffffff #222222 #b89f54"
grey_recolor="#ffffff #000000 #b5b5b5"

blue_palette="#ffffff #222222 #678c58"
blue_recolor="#ffffff #000000 #a0d4c8"

echo Chapter One
didder -i "${images_dir}i007_edit.jpg" -o illustrations/1.png --contrast 0% --brightness 0% -p "$grey_palette" -r "$grey_recolor" $base_settings
didder -i "${images_dir}i009_edit.jpg" -o illustrations/1a.png --contrast 0% --brightness 0% -p "$grey_palette" -r "$grey_recolor" $base_settings
cp ${images_dir}i011_edit.jpg illustrations/1b.jpg
didder -i "${images_dir}i013_edit.jpg" -o illustrations/1c.png --contrast 0% --brightness 0% -p "$grey_palette" -r "$grey_recolor" $base_settings
didder -i "${images_dir}i016_edit.jpg" -o illustrations/1d.png --contrast 0% --brightness 10% -p "$grey_palette" -r "$grey_recolor" $base_settings

echo Chapter Two
didder -i "${images_dir}i017.jpg" -o illustrations/2.png --contrast 0% --brightness 0% -p "$blue_palette" -r "$blue_recolor" $base_settings
didder -i "${images_dir}i019_edit.jpg" -o illustrations/2a.png --contrast 0% --brightness 0% -p "$blue_palette" -r "$blue_recolor" $base_settings
cp ${images_dir}i021.jpg illustrations/2b.jpg
didder -i "${images_dir}i023_edit.jpg" -o illustrations/2c.png --contrast 0% --brightness 0% -p "$blue_palette" -r "$blue_recolor" $base_settings
didder -i "${images_dir}i024_edit.jpg" -o illustrations/2d.png --contrast 0% --brightness 0% -p "$blue_palette" -r "$blue_recolor" $base_settings
didder -i "${images_dir}i027_edit.jpg" -o illustrations/2e.png --contrast 0% --brightness 0% -p "$blue_palette" -r "$blue_recolor" $base_settings
didder -i "${images_dir}i028_edit.jpg" -o illustrations/2f.png --contrast 0% --brightness 0% -p "$blue_palette" -r "$blue_recolor" $base_settings
didder -i "${images_dir}i030_edit.jpg" -o illustrations/2g.png --contrast 0% --brightness 0% -p "$blue_palette" -r "$blue_recolor" $base_settings

echo Chapter Three
didder -i "${images_dir}i031.jpg" -o illustrations/3.png --contrast 0% --brightness 0% -p "$blue_palette" -r "$blue_recolor" $base_settings
didder -i "${images_dir}i033.jpg" -o illustrations/3a.png --contrast 0% --brightness 0% -p "$blue_palette" -r "$blue_recolor" $base_settings
didder -i "${images_dir}i035_edit.jpg" -o illustrations/3b.png --contrast 0% --brightness 5% -p "$blue_palette" -r "$blue_recolor" $base_settings
cp ${images_dir}i037.jpg illustrations/3c.jpg
didder -i "${images_dir}i039_edit.jpg" -o illustrations/3d.png --contrast 0% --brightness 0% -p "$blue_palette" -r "$blue_recolor" $base_settings
cp ${images_dir}i041_edit.jpg illustrations/3e.jpg
didder -i "${images_dir}i044_edit.jpg" -o illustrations/3f.png --contrast 0% --brightness 0% -p "$blue_palette" -r "$blue_recolor" $base_settings

echo Chapter Four
didder -i "${images_dir}i047.jpg" -o illustrations/4.png --contrast -20% --brightness 10% -p "$blue_palette" -r "$blue_recolor" $base_settings
didder -i "${images_dir}i049_edit.jpg" -o illustrations/4a.png --contrast -20% --brightness 10% -p "$blue_palette" -r "$blue_recolor" $base_settings
cp ${images_dir}i051.jpg illustrations/4b.jpg
didder -i "${images_dir}i055_edit.jpg" -o illustrations/4c.png --contrast -20% --brightness 10% -p "$blue_palette" -r "$blue_recolor" $base_settings
didder -i "${images_dir}i057.jpg" -o illustrations/4d.png --contrast -20% --brightness 10% -p "$blue_palette" -r "$blue_recolor" $base_settings

echo Done!

