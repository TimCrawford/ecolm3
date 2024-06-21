name=$1;
page=$2;
part=$3;

here=`pwd`;
out_dir=$here"/output/"$name"/"$name"_"$page"_part_"$part"/out";
# echo;
 echo -n "Creating output dir: "
 echo $out_dir;
 mkdir -p $out_dir;
cd $out_dir;

# !! NB change next line appropriately
# indir=$here"/../"$1;
indir=$here"/"$1;

#  Directory containing pre-split greyscale page images:
greydir="/Volumes/Datastore/IMAGES/ECOLM3/halfsize_pages/"$1;
# greydir="/Users/timc/Documents/ECOLM/ecolm_images/Gardane_grey_pages/"$1;

prefix=$name"_"$page"_part_"$part;

# output tabcode for each system individually:
 awk -f $here"/output_tc_systems.awk" $indir"/"$prefix".tbc"

OIFS=$IFS
IFS=','
sysnum=0
cat $indir"/"$prefix".staffs" | while read -a l ;
	do 
		let sysnum=$sysnum+1
		echo  "${#l[@]} "${l[1]}" "${l[2]}" "${l[3]}
# color system images:
		convert $indir"/"$prefix"_color.png" -crop ${l[3]}x${l[2]}+25+${l[1]} $out_dir"/system"$sysnum".png"
# greyscale system images:
		convert $greydir"/"$prefix".png" -crop ${l[3]}x${l[2]}+25+${l[1]} $out_dir"/system"$sysnum"_gray.png"
	done
IFS=$OIFS
