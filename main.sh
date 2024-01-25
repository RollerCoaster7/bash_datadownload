root_path="https://www.metoffice.gov.uk/hadobs/hadcrut5/data/HadCRUT.5.0.2.0/analysis/diagnostics/"
freq_ls=("monthly")
format_ls=(".csv" ".nc")
out_path='/home/da_stud/rprast/Problemset_1/data'
hemi_ls=("global" "northern_hemisphere" "southern_hemisphere") 

for hemi in ${hemi_ls[@]}; do
    for freq in ${freq_ls[@]}; do  
        for format in ${format_ls[@]}; do 
          infile=$root_path"HadCRUT.5.0.2.0.analysis.summary_series."$hemi"."$freq$format 
          echo "Downloading $infile"
          outfile=$(basename $infile)
          output=$out_path"/"$outfile
          echo $output
          #wget -O $output $infile  
        done
    done
done