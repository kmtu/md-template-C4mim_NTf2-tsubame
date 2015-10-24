if [[ $# == 0 ]]; then
  echo "no dependence"
  t2sub -W group_list=t2g-hp150137 -q S -et 0 -l walltime=00:15:00 -l select=1:mem=48gb -N combine.run -m ae -M kmtu@esicb.kyoto-u.ac.jp run_combine.sh
elif [[ $# == 2 ]]; then
  echo "submit dependent job"
  t2sub -W depend=afterok:$1,afterok:$2 -W group_list=t2g-hp150137 -q S -et 0 -l walltime=00:15:00 -l select=1:mem=48gb -N combine.run -m ae -M kmtu@esicb.kyoto-u.ac.jp run_combine.sh
else
  echo "Usage: $0 [<dependent jobid-1> <dependent jobid-2>]"
  exit 1;
fi
