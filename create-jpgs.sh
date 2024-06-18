dir="/mnt/c/Users/Yo/OneDrive/Desarrollo/Emprendimiento/Seb/captures-original"
total=$(find $dir -type f | wc -l)

#captures
echo "\nCreating $total captures.."
find $dir -type f -printf "%f\n" | xargs -I% echo $dir/% -resize \\\'1500x1500\>\\\' -quality 90 -interlace plane public/captures/% | sed -r 's/png/jpg/2' | xargs -I% bash -c "convert %" 

#thumbs
echo "Creating $total thumbnails.."
find $dir -type f -printf "%f\n" | xargs -I% echo $dir/% -resize \\\'300x300\>\\\' -quality 90 -interlace plane public/thumbs/% | sed -r 's/png/jpg/2' | xargs -I% bash -c "convert %" 
