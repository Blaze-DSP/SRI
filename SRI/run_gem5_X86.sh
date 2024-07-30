# Argument to be passed
# arg1 - dataset name e.g. matmul50, matmul100 etc
# arg2 - binary program that needs to be executed e.g. ./matmul_serial_normal3loops_X86.out
# arg3 - values to be passed to binary program in --options e.g. 50 

# L3 Cache size and L3 associativity has been adjusted as gem5 require it to be power of 2. So values in these fields are different then what is mentioned in the cpu model documentation

#<<COMMENTIntelCorei9

# IntelCorei97900X_DDR42666 - $989
arch="IntelCorei97900X_DDR42666_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=10 --sys-clock=3.3GHz --mem-type=DDR4_2666_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=16MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3 --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

# TEMP INSTRUCTION TO RUN LOCALLY
build/X86/gem5.opt configs/learning_gem5/part1/two_level.py --l1i_size=64kB --l1d_size=256kB --l2_size=1024kB /home/darshan/Desktop/main/SRI/out --input=/home/darshan/Desktop/main/SRI/input.dat

build/X86/gem5.opt configs/deprecated/example/se.py --num-cpus=10 --sys-clock=3.3GHz --mem-type=DDR3_1600_8x8 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=16MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd SRI/out --output=out.txt --input=SRI/input.dat

arch="IntelCorei97900X_DDR42666_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=10 --sys-clock=3.3GHz --mem-type=DDR4_2666_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=16MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3 --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei97900X_DDR42666_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=10 --sys-clock=3.3GHz --mem-type=DDR4_2666_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=16MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3 --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei97900X_DDR42666_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=10 --sys-clock=3.3GHz --mem-type=DDR4_2666_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=16MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3 --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei97900X_DDR42666_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=10 --sys-clock=3.3GHz --mem-type=DDR4_2666_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=16MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3 --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei97920X_DDR42666 - $1199
arch="IntelCorei97920X_DDR42666_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=12 --sys-clock=2.9GHz --mem-type=DDR4_2666_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=16MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3 --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei97920X_DDR42666_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=12 --sys-clock=2.9GHz --mem-type=DDR4_2666_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=16MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3 --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei97920X_DDR42666_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=12 --sys-clock=2.9GHz --mem-type=DDR4_2666_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=16MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3 --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei97920X_DDR42666_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=12 --sys-clock=2.9GHz --mem-type=DDR4_2666_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=16MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3 --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei97920X_DDR42666_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=12 --sys-clock=2.9GHz --mem-type=DDR4_2666_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=16MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3 --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei97960X_DDR42666 - $1699
arch="IntelCorei97960X_DDR42666_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=16 --sys-clock=2.8GHz --mem-type=DDR4_2666_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=24MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=24 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei97960X_DDR42666_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=16 --sys-clock=2.8GHz --mem-type=DDR4_2666_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=24MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=24 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei97960X_DDR42666_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=16 --sys-clock=2.8GHz --mem-type=DDR4_2666_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=24MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=24 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei97960X_DDR42666_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=16 --sys-clock=2.8GHz --mem-type=DDR4_2666_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=24MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=24 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei97960X_DDR42666_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=16 --sys-clock=2.8GHz --mem-type=DDR4_2666_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=24MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=24 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei97980X_DDR42666 - $1999
arch="IntelCorei97980X_DDR42666_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=18 --sys-clock=2.6GHz --mem-type=DDR4_2666_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=24MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=24 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei97980X_DDR42666_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=18 --sys-clock=2.6GHz --mem-type=DDR4_2666_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=24MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=24 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei97980X_DDR42666_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=18 --sys-clock=2.6GHz --mem-type=DDR4_2666_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=24MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=24 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei97980X_DDR42666_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=18 --sys-clock=2.6GHz --mem-type=DDR4_2666_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=24MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=24 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei97980X_DDR42666_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=18 --sys-clock=2.6GHz --mem-type=DDR4_2666_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=24MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=16 --l3_assoc=24 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

#COMMENTIntelCorei9


#<<COMMENTIntelCorei7

# IntelCorei78650U_DDR42400,LPDDR32133 - $409
arch="IntelCorei78650U_DDR42400_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=DDR4_2400_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei78650U_DDR42400_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=DDR4_2400_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei78650U_DDR42400_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=DDR4_2400_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei78650U_DDR42400_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=DDR4_2400_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei78650U_DDR42400_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=DDR4_2400_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei78650U_LPDDR32133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=LPDDR3_2133_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei78650U_LPDDR32133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=LPDDR3_2133_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei78650U_LPDDR32133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=LPDDR3_2133_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei78650U_LPDDR32133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=LPDDR3_2133_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei78650U_LPDDR32133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=LPDDR3_2133_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei77Y75_DDR31600,LPDDR31866 - $393
arch="IntelCorei77Y75_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.3GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77Y75_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.3GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77Y75_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.3GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77Y75_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.3GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77Y75_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.3GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei77Y75_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77Y75_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77Y75_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77Y75_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77Y75_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei77660U_DDR31600,LPDDR31866,DDR42133 - $415
arch="IntelCorei77660U_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.5GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77660U_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.5GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77660U_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.5GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77660U_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.5GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77660U_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.5GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei77660U_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.5GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77660U_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.5GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77660U_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.5GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77660U_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.5GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77660U_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.5GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei77660U_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.5GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77660U_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.5GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77660U_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.5GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77660U_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.5GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77660U_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.5GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei77600U_DDR31600,LPDDR31866,DDR42133 - $393
arch="IntelCorei77600U_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77600U_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77600U_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77600U_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77600U_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei77600U_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77600U_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77600U_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77600U_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77600U_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei77600U_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77600U_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77600U_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77600U_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77600U_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei77567U_DDR31600,LPDDR31866,DDR42133 - $415
arch="IntelCorei77567U_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.5GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77567U_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.5GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77567U_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.5GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77567U_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.5GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77567U_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.5GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei77567U_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.5GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77567U_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.5GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77567U_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.5GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77567U_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.5GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77567U_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.5GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei77567U_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.5GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77567U_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.5GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77567U_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.5GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77567U_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.5GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77567U_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.5GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei77820HK_DDR31600,LPDDR32133,DDR42400 - $378
arch="IntelCorei77820HK_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77820HK_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77820HK_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77820HK_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77820HK_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei77820HK_LPDDR32133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=LPDDR3_2133_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77820HK_LPDDR32133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=LPDDR3_2133_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77820HK_LPDDR32133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=LPDDR3_2133_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77820HK_LPDDR32133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=LPDDR3_2133_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77820HK_LPDDR32133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=LPDDR3_2133_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei77820HK_DDR42400_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR4_2400_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77820HK_DDR42400_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR4_2400_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77820HK_DDR42400_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR4_2400_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77820HK_DDR42400_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR4_2400_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77820HK_DDR42400_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR4_2400_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei77700HQ_DDR31600,LPDDR32133,DDR42400 - $378
arch="IntelCorei77700HQ_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77700HQ_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77700HQ_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77700HQ_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77700HQ_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei77700HQ_LPDDR32133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=LPDDR3_2133_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77700HQ_LPDDR32133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=LPDDR3_2133_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77700HQ_LPDDR32133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=LPDDR3_2133_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77700HQ_LPDDR32133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=LPDDR3_2133_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77700HQ_LPDDR32133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=LPDDR3_2133_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei77700HQ_DDR42400_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR4_2400_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77700HQ_DDR42400_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR4_2400_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77700HQ_DDR42400_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR4_2400_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77700HQ_DDR42400_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR4_2400_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei77700HQ_DDR42400_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR4_2400_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei76660U_DDR31600,LPDDR32133,DDR42400 - $415
arch="IntelCorei76660U_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_1600_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76660U_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_1600_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76660U_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_1600_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76660U_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_1600_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76660U_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_1600_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei76660U_LPDDR32133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_2133_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76660U_LPDDR32133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_2133_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76660U_LPDDR32133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_2133_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76660U_LPDDR32133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_2133_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76660U_LPDDR32133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_2133_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei76660U_DDR42400_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR4_2400_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76660U_DDR42400_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR4_2400_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76660U_DDR42400_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR4_2400_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76660U_DDR42400_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR4_2400_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76660U_DDR42400_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR4_2400_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei76650U_DDR31600,LPDDR31866,DDR42133 - $415
arch="IntelCorei76650U_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76650U_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76650U_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76650U_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76650U_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei76650U_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76650U_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76650U_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76650U_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76650U_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei76650U_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76650U_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76650U_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76650U_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76650U_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei76600U_DDR31600,LPDDR31866,DDR42133 - $393
arch="IntelCorei76600U_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76600U_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76600U_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76600U_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76600U_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei76600U_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76600U_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76600U_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76600U_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76600U_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei76600U_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76600U_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76600U_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76600U_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76600U_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt




# IntelCorei76567U_DDR31600,LPDDR1866,DDR42133 - $415
arch="IntelCorei76567U_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76567U_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76567U_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76567U_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76567U_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei76567U_LPDDR1866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76567U_LPDDR1866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76567U_LPDDR1866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76567U_LPDDR1866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76567U_LPDDR1866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei76567U_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76567U_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76567U_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76567U_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76567U_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei76822EQ_DDR31600,LPDDR31866,DDR42133 - $378
arch="IntelCorei76822EQ_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.0GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76822EQ_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.0GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76822EQ_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.0GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76822EQ_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.0GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76822EQ_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.0GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei76822EQ_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.0GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76822EQ_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.0GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76822EQ_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.0GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76822EQ_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.0GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76822EQ_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.0GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei76822EQ_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.0GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76822EQ_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.0GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76822EQ_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.0GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76822EQ_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.0GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76822EQ_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.0GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei76820EQ_DDR31600,LPDDR31866,DDR42133 - $378
arch="IntelCorei76820EQ_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76820EQ_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76820EQ_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76820EQ_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76820EQ_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei76820EQ_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76820EQ_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76820EQ_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76820EQ_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76820EQ_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei76820EQ_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76820EQ_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76820EQ_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76820EQ_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76820EQ_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.8GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=8MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei76700HQ_DDR31600,LPDDR31866,DDR42133 - $378
arch="IntelCorei76700HQ_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.6GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76700HQ_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.6GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76700HQ_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.6GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76700HQ_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.6GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76700HQ_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.6GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei76700HQ_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.6GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76700HQ_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.6GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76700HQ_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.6GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76700HQ_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.6GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei76700HQ_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.6GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

#COMMENTIntelCorei7


#<<COMMENTIntelCorei5

# IntelCorei58350U_DDR42400,LPDDR32133 - $297
arch="IntelCorei58350U_DDR42400_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.7GHz --mem-type=DDR4_2400_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei58350U_DDR42400_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.7GHz --mem-type=DDR4_2400_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei58350U_DDR42400_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.7GHz --mem-type=DDR4_2400_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei58350U_DDR42400_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.7GHz --mem-type=DDR4_2400_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei58350U_DDR42400_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.7GHz --mem-type=DDR4_2400_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei58350U_LPDDR32133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.7GHz --mem-type=LPDDR3_2133_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei58350U_LPDDR32133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.7GHz --mem-type=LPDDR3_2133_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei58350U_LPDDR32133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.7GHz --mem-type=LPDDR3_2133_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei58350U_LPDDR32133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.7GHz --mem-type=LPDDR3_2133_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei58350U_LPDDR32133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.7GHz --mem-type=LPDDR3_2133_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei57Y57_DDR31600,LPDDR31866 - $281
arch="IntelCorei57Y57_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.2GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57Y57_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.2GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57Y57_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.2GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57Y57_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.2GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57Y57_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.2GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei57Y57_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.2GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57Y57_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.2GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57Y57_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.2GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57Y57_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.2GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57Y57_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=1.2GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt




# IntelCorei57360U_DDR31600,LPDDR31866,DDR42133 - $304
arch="IntelCorei57360U_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57360U_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57360U_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57360U_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57360U_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei57360U_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57360U_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57360U_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57360U_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57360U_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei57360U_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57360U_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57360U_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57360U_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57360U_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt




# IntelCorei57300U_DDR31600,LPDDR31866,DDR42133 - $281
arch="IntelCorei57300U_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300U_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300U_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300U_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300U_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei57300U_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300U_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300U_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300U_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300U_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei57300U_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300U_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300U_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300U_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300U_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.6GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt




# IntelCorei57287U_DDR31600,LPDDR31866,DDR42133 - $304
arch="IntelCorei57287U_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57287U_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57287U_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57287U_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57287U_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei57287U_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57287U_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57287U_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57287U_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57287U_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei57287U_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57287U_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57287U_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57287U_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57287U_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=3.3GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt




# IntelCorei57442EQ_DDR31600,DDR42400 - $250
arch="IntelCorei57442EQ_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.1GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57442EQ_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.1GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57442EQ_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.1GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57442EQ_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.1GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57442EQ_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.1GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei57442EQ_DDR42400_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.1GHz --mem-type=DDR4_2400_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57442EQ_DDR42400_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.1GHz --mem-type=DDR4_2400_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57442EQ_DDR42400_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.1GHz --mem-type=DDR4_2400_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57442EQ_DDR42400_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.1GHz --mem-type=DDR4_2400_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57442EQ_DDR42400_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.1GHz --mem-type=DDR4_2400_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei57440EQ_DDR31600,DDR42400 - $250
arch="IntelCorei57440EQ_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57440EQ_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57440EQ_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57440EQ_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57440EQ_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei57440EQ_DDR42400_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR4_2400_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57440EQ_DDR42400_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR4_2400_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57440EQ_DDR42400_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR4_2400_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57440EQ_DDR42400_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR4_2400_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57440EQ_DDR42400_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.9GHz --mem-type=DDR4_2400_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei57300HQ_DDR31600,LPDDR32133,DDR42400 - $250
arch="IntelCorei57300HQ_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.5GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300HQ_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.5GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300HQ_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.5GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300HQ_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.5GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300HQ_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.5GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei57300HQ_LPDDR32133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.5GHz --mem-type=LPDDR3_2133_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300HQ_LPDDR32133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.5GHz --mem-type=LPDDR3_2133_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300HQ_LPDDR32133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.5GHz --mem-type=LPDDR3_2133_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300HQ_LPDDR32133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.5GHz --mem-type=LPDDR3_2133_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300HQ_LPDDR32133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.5GHz --mem-type=LPDDR3_2133_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei57300HQ_DDR42400_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.5GHz --mem-type=DDR4_2400_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300HQ_DDR42400_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.5GHz --mem-type=DDR4_2400_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300HQ_DDR42400_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.5GHz --mem-type=DDR4_2400_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300HQ_DDR42400_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.5GHz --mem-type=DDR4_2400_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei57300HQ_DDR42400_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.5GHz --mem-type=DDR4_2400_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei56360U_DDR31600,LPDDR32133,DDR42133 - $304
arch="IntelCorei56360U_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.0GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56360U_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.0GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56360U_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.0GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56360U_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.0GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56360U_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.0GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei56360U_LPDDR32133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.0GHz --mem-type=LPDDR3_2133_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56360U_LPDDR32133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.0GHz --mem-type=LPDDR3_2133_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56360U_LPDDR32133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.0GHz --mem-type=LPDDR3_2133_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56360U_LPDDR32133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.0GHz --mem-type=LPDDR3_2133_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56360U_LPDDR32133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.0GHz --mem-type=LPDDR3_2133_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei56360U_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.0GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56360U_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.0GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56360U_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.0GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56360U_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.0GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56360U_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.0GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


# IntelCorei56300U_DDR31600,LPDDR32133,DDR42133 - $281
arch="IntelCorei56300U_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56300U_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56300U_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56300U_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56300U_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei56300U_LPDDR32133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_2133_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56300U_LPDDR32133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_2133_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56300U_LPDDR32133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_2133_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56300U_LPDDR32133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_2133_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56300U_LPDDR32133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_2133_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei56300U_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56300U_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56300U_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56300U_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56300U_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei56442EQ_DDR31600,LPDDR31866,DDR42133 - $250
arch="IntelCorei56442EQ_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56442EQ_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56442EQ_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56442EQ_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56442EQ_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei56442EQ_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56442EQ_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56442EQ_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56442EQ_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56442EQ_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei56442EQ_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56442EQ_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56442EQ_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56442EQ_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56442EQ_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.9GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei56440EQ_DDR31600,LPDDR31866,DDR42133 - $250
arch="IntelCorei56440EQ_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.7GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56440EQ_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.7GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56440EQ_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.7GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56440EQ_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.7GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56440EQ_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.7GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei56440EQ_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.7GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56440EQ_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.7GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56440EQ_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.7GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56440EQ_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.7GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56440EQ_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.7GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei56440EQ_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.7GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56440EQ_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.7GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56440EQ_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.7GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56440EQ_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.7GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei56440EQ_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.7GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

#COMMENTIntelCorei5

#<<COMMENTIntelCorei3

# IntelCorei38130U_DDR42400,LPDDR32133 - $281
arch="IntelCorei38130U_DDR42400_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=DDR4_2400_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei38130U_DDR42400_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=DDR4_2400_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei38130U_DDR42400_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=DDR4_2400_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei38130U_DDR42400_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=DDR4_2400_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei38130U_DDR42400_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=DDR4_2400_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei38130U_LPDDR32133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=LPDDR3_2133_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei38130U_LPDDR32133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=LPDDR3_2133_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei38130U_LPDDR32133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=LPDDR3_2133_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei38130U_LPDDR32133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=LPDDR3_2133_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei38130U_LPDDR32133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.2GHz --mem-type=LPDDR3_2133_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=4MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=16 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei37100U_DDR31600,LPDDR31866,DDR42133 - $281
arch="IntelCorei37100U_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37100U_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37100U_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37100U_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37100U_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei37100U_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37100U_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37100U_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37100U_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37100U_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei37100U_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37100U_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37100U_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37100U_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37100U_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.4GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei37167U_DDR31600,LPDDR31866,DDR42133 - $304
arch="IntelCorei37167U_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37167U_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37167U_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37167U_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37167U_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei37167U_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37167U_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37167U_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37167U_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37167U_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei37167U_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37167U_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37167U_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37167U_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37167U_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.8GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei37102E_DDR31600,DDR42133 - $225
arch="IntelCorei37102E_DDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.1GHz --mem-type=DDR3_1600_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37102E_DDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.1GHz --mem-type=DDR3_1600_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37102E_DDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.1GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37102E_DDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.1GHz --mem-type=DDR3_1600_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37102E_DDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.1GHz --mem-type=DDR3_1600_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei37102E_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.1GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37102E_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.1GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37102E_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.1GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37102E_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.1GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei37102E_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.1GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei36100U_LPDDR31600,LPDDR31866,DDR41866,DDR42133 - $281
arch="IntelCorei36100U_LPDDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=LPDDR3_1600_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36100U_LPDDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=LPDDR3_1600_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36100U_LPDDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=LPDDR3_1600_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36100U_LPDDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=LPDDR3_1600_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36100U_LPDDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=LPDDR3_1600_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei36100U_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36100U_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36100U_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36100U_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36100U_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei36100U_DDR41866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR4_1866_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36100U_DDR41866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR4_1866_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36100U_DDR41866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR4_1866_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36100U_DDR41866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR4_1866_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36100U_DDR41866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR4_1866_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei36100U_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36100U_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36100U_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36100U_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36100U_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.3GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt



# IntelCorei36167U_LPDDR31600,LPDDR31866,DDR41866,DDR42133 - $304
arch="IntelCorei36167U_LPDDR31600_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=LPDDR3_1600_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36167U_LPDDR31600_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=LPDDR3_1600_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36167U_LPDDR31600_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=LPDDR3_1600_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36167U_LPDDR31600_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=LPDDR3_1600_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36167U_LPDDR31600_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=LPDDR3_1600_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei36167U_LPDDR31866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=LPDDR3_1866_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36167U_LPDDR31866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=LPDDR3_1866_x32 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36167U_LPDDR31866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=LPDDR3_1866_x32 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36167U_LPDDR31866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=LPDDR3_1866_x32 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36167U_LPDDR31866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=LPDDR3_1866_x32 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei36167U_DDR41866_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=DDR4_1866_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36167U_DDR41866_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=DDR4_1866_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36167U_DDR41866_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=DDR4_1866_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36167U_DDR41866_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=DDR4_1866_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36167U_DDR41866_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=DDR4_1866_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


arch="IntelCorei36167U_DDR42133_2GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=DDR4_2133_x64 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36167U_DDR42133_3GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=DDR4_2133_x64 --mem-size=3GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36167U_DDR42133_4GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=DDR4_2133_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36167U_DDR42133_6GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=DDR4_2133_x64 --mem-size=6GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt

arch="IntelCorei36167U_DDR42133_7GB_$1"
$HOME/gem5/build/X86/gem5.opt --dump-config=config_$arch.ini --json-config=config_$arch.json --stats-file=stats_$arch.txt $HOME/gem5/configs/example/se.py --num-cpus=2 --sys-clock=2.7GHz --mem-type=DDR4_2133_x64 --mem-size=7GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=3MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3  --output=out.txt
echo -n "$arch," >> X86.txt
cat out.txt >> X86.txt


#COMMENTIntelCorei3

<<COMMENTIntelXeon

# IntelXeon8180_DDR42666 - $10009
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon8180_DDR42666_$1.ini --json-config=config_IntelXeon8180_DDR42666_$1.json --stats-file=stats_IntelXeon8180_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=28 --sys-clock=2.5GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=38.5MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon8176_DDR42666 - $8719
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon8180_DDR42666_$1.ini --json-config=config_IntelXeon8180_DDR42666_$1.json --stats-file=stats_IntelXeon8180_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=28 --sys-clock=2.1GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=38.5MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon8170_DDR42666 - $7411
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon8170_DDR42666_$1.ini --json-config=config_IntelXeon8170_DDR42666_$1.json --stats-file=stats_IntelXeon8170_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=26 --sys-clock=2.1GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=35.75MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon8168_DDR42666 - $5890
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon8168_DDR42666_$1.ini --json-config=config_IntelXeon8168_DDR42666_$1.json --stats-file=stats_IntelXeon8168_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=24 --sys-clock=2.7GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=33MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon8160_DDR42666 - $4708
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon8160_DDR42666_$1.ini --json-config=config_IntelXeon8160_DDR42666_$1.json --stats-file=stats_IntelXeon8160_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=24 --sys-clock=2.1GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=33MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon8158_DDR42666 - $7007
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon8158_DDR42666_$1.ini --json-config=config_IntelXeon8158_DDR42666_$1.json --stats-file=stats_IntelXeon8158_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=12 --sys-clock=3.0GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=24.75MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon8156_DDR42666 - $7007
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon8156_DDR42666_$1.ini --json-config=config_IntelXeon8156_DDR42666_$1.json --stats-file=stats_IntelXeon8156_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=3.6GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=16.5MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon8153_DDR42666 - $3115
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon8153_DDR42666_$1.ini --json-config=config_IntelXeon8153_DDR42666_$1.json --stats-file=stats_IntelXeon8153_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=16 --sys-clock=2.0GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=22MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon6154_DDR42666 - $7007
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon6154_DDR42666_$1.ini --json-config=config_IntelXeon6154_DDR42666_$1.json --stats-file=stats_IntelXeon6154_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=18 --sys-clock=3.0GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=24.75MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon6152_DDR42666 - $3661
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon6152_DDR42666_$1.ini --json-config=config_IntelXeon6154_DDR42666_$1.json --stats-file=stats_IntelXeon6154_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=22 --sys-clock=2.1GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=30.25MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon6150_DDR42666 - $3358
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon6150_DDR42666_$1.ini --json-config=config_IntelXeon6150_DDR42666_$1.json --stats-file=stats_IntelXeon6150_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=18 --sys-clock=2.7GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=24.75MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon6148_DDR42666 - $3078
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon6148_DDR42666_$1.ini --json-config=config_IntelXeon6148_DDR42666_$1.json --stats-file=stats_IntelXeon6148_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=20 --sys-clock=2.4GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=27.5MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon6146_DDR42666 - $3286
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon6146_DDR42666_$1.ini --json-config=config_IntelXeon6146_DDR42666_$1.json --stats-file=stats_IntelXeon6146_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=12 --sys-clock=3.2GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=24.75MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon6142_DDR42666 - $2952
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon6142_DDR42666_$1.ini --json-config=config_IntelXeon6142_DDR42666_$1.json --stats-file=stats_IntelXeon6142_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=16 --sys-clock=2.6GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=22MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon6138_DDR42666 - $2618
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon6138_DDR42666_$1.ini --json-config=config_IntelXeon6138_DDR42666_$1.json --stats-file=stats_IntelXeon6138_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=20 --sys-clock=2.0GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=27.5MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon6136_DDR42666 - $2460
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon6136_DDR42666_$1.ini --json-config=config_IntelXeon6136_DDR42666_$1.json --stats-file=stats_IntelXeon6136_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=12 --sys-clock=3.0GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=24.75MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon6130_DDR42666 - $1900
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon6130_DDR42666_$1.ini --json-config=config_IntelXeon6130_DDR42666_$1.json --stats-file=stats_IntelXeon6130_DDR42666_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=16 --sys-clock=2.1GHz --mem-type=LPDDR4_2666_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=22MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon5122_DDR42400 - $1227
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon5122_DDR42400_$1.ini --json-config=config_IntelXeon5122_DDR42400_$1.json --stats-file=stats_IntelXeon5122_DDR42400_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=3.6GHz --mem-type=LPDDR4_2400_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=16.5MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon5120_DDR42400 - $1561
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon5120_DDR42400_$1.ini --json-config=config_IntelXeon5120_DDR42400_$1.json --stats-file=stats_IntelXeon5120_DDR42400_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=14 --sys-clock=2.2GHz --mem-type=LPDDR4_2400_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=19.25MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon5115_DDR42400 - $1221
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon5115_DDR42400_$1.ini --json-config=config_IntelXeon5115_DDR42400_$1.json --stats-file=stats_IntelXeon5115_DDR42400_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=10 --sys-clock=2.4GHz --mem-type=LPDDR4_2400_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=13.75MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon4116_DDR42400 - $1012
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon4116_DDR42400_$1.ini --json-config=config_IntelXeon4116_DDR42400_$1.json --stats-file=stats_IntelXeon4116_DDR42400_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=12 --sys-clock=2.1GHz --mem-type=LPDDR4_2400_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=16.5MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon4114_DDR42400 - $704
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon4114_DDR42400_$1.ini --json-config=config_IntelXeon4114_DDR42400_$1.json --stats-file=stats_IntelXeon4114_DDR42400_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=10 --sys-clock=2.2GHz --mem-type=LPDDR4_2400_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=13.5MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon4112_DDR42400 - $483
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon4112_DDR42400_$1.ini --json-config=config_IntelXeon4112_DDR42400_$1.json --stats-file=stats_IntelXeon4112_DDR42400_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=2.6GHz --mem-type=LPDDR4_2400_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=8.25MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

# IntelXeon4108_DDR42400 - $427
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelXeon4108_DDR42400_$1.ini --json-config=config_IntelXeon4108_DDR42400_$1.json --stats-file=stats_IntelXeon4108_DDR42400_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=8 --sys-clock=1.8GHz --mem-type=LPDDR4_2400_x32 --mem-size=767GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l3_size=11MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=8 --l3_assoc=20 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

COMMENTIntelXeon


<<COMMENTIntelOther
# IntelCorei56500_DDR31600
$HOME/gem5/build/X86/gem5.opt --dump-config=config_IntelCorei56500_DDR31600_$1.ini --json-config=config_IntelCorei56500_DDR31600_$1.json --stats-file=stats_IntelCorei56500_DDR31600_$1.txt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=3.2GHz --mem-type=DDR3_1600_x64 --mem-size=4GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l3_size=6MB --l1d_assoc=8 --l1i_assoc=8 --l2_assoc=4 --l3_assoc=12 --cacheline_size=64 --cpu-type=DerivO3CPU --cmd $2 --options=$3

#IFC6410
#$HOME/gem5/build/ARM/gem5.opt $HOME/gem5/configs/example/se.py --num-cpus=4 --sys-clock=1.5GHz --mem-type=LPDDR2_S4_1066_x32 --mem-size=2GB --caches --l3cache --l2cache --l2cache-sharedbycpu --l1d_size=4kB --l1i_size=4kB --l2_size=16kB --l3_size=2MB --l1d_assoc=1 --l1i_assoc=1 --l2_assoc=1 --l3_assoc=8 --cacheline_size=128 --cpu-type=DerivO3CPU --cmd ./matmul_serial_normal3loops_ARM.out --options=100

COMMENTIntelOther
