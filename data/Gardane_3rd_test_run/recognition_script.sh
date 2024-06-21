dir=$1;
if [[ $1 == "K1c13"  ||  $1 == "K1c14" || $1 == "K4d1" ]]; 
   then imdir="halfsize_pages";
else
   imdir="all_pages";
fi;
for i in /Volumes/Datastore/IMAGES/ECOLM3/$imdir/$dir/*.png; 
#for i in ../../ecolm_images/Gardane_grey_pages/$imdir/$dir/*.png; 
   do name=`basename $i`;  
   echo >> log;
   echo "Log for ${name%.png}" >> log;
   echo;
   echo "Recognising ${name%.png}"
   python ../../otr_ecolm-2012-11-27/otr_recognize.py -d ../../ecolm_images/train/K1c11/bianchini_da_crema_merged_class.xml -tabtype italian -smooth -deskew -despec -onlines -ignorecourse0 -split -o $dir/${name%.png} $i 2>> log; 
done 