alias .='cd..'
alias ..='cd..;cd..'
alias vi='gvim -fg white -bg black'
alias vis='gvim -fg white -bg black --remote-tab-silent'
alias fi='find -L "\!:2" -name "\!:1" -printf "%TY-%Tm-%Td %TT %p\n" | sort'
#find -L verif/ -name='*.scf' -print0 | xargs -0 grep='avk'
alias figs ='find -L "\!:2" -name='session.log' -path "*/latest/*" -print0 | xargs -0 grep '\!:1''
alias eg='grep '\!:1' '\!:2' -nR'
alias disarm='/prj/dcg/modeling/encnaa/cpu/share/releases/disarm/latest/bin/linux64-gcc5.3.0/debug/disarm'
alias hco='hydra co -nolock -current'
alias hcol='hydra co -lock'
alias hci='hydra ci -defects "\!:1" -variants SA_T01_CPU10_CFG01_CL10 -files "\!:2"'
alias hdis='hydra co -cancel'
alias hpop='hydra pop_defect '\!:1' -exec'
alias gf "getFileInfo.pl"
#Making workspace the first argument is the current build Ex:10.0.0,second argument is name of workspace
alias make_hydra_ws='make_SA_T01_CPU10_CFG01_CL10_ws -config SA_T01_CPU10_CFG01_CL10_\!:1 \!:2'
#alias hvrc='hydra verdi -rc /view/pnarahar_SAPHIRA/vobs/cores/cpu_qcom/hydra/hydra/rtl_utils/top.rc -env'
alias hb='bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra build -env'
#Requests 10G of memory:check out hydra.qri for more info
#ct ls should give the exact version in your workspace
#getinfo.pl filename
source /prj/qct/coredev/hmss/encnaa/dev01/common_files/lsf_common.alias
#Clearcase
setenv PATH ${PATH}:/usr2/pnarahar/bin:/usr/atria/bin:/usr/local/projects/qct/clearcase/scripts:/prj/qct/chips/amberwing/encnaa/verif01/sdws_balmiki/qvmr/bin
alias ct='cleartool'
alias pv='ct pwv'
alias tarcfg='vi /prj/qct/coredev/hydra/encnaa/scratch10/workspaces/pnarahar/avk_builds/build_2017q3_saphiraP1_u"\!:1"/v8VAL/val_dut_info/targetConfig_migration.cfg'
#IPSS specific
alias src_firetail='source /vobs/chips/dragonfly/dragonfly/dragonfly_ipss_verif/ipss/sim/scripts/verif.cshrc;source ~/relink_ipss_scratch.cshrc'
setenv LM_LICENSE_FILE 8224@bunker:8224@license-wan-arm1:8224@license-wan-rtp1:8224@license-eval-rtp1
alias   loc_qvmr ='bsub -Ip -q interactive -R "select[type==LINUX64&&mem>1000&&vovserver]" /pkg/qvmr/${QVMR_VERSION}/bin/qvm_regress -sep_ft_server -stop_ft_server -disable_compatibility_check -max_retries=3 \!*'
alias   ipss_serv_clean='/pkg/qvmr/$QVMR_VERSION/qvm_regress/utils/deleteAllVovprojects.csh'
alias src_hmss='source /vobs/cores/chip/hmss_d_verif/include/workspace.cshrc \!*'
alias whypending='/pkg/ice/sysadmin/lsf/bin/whyjobpending.pl \!*'
alias st_umask='umask 002'
alias hrs='bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra regress -env'
alias hr='hydra regress -env'
alias hv='hydra verdi -env'
alias hhis='hydra get_history'
alias hlo='hydra list_locked'
alias ll='ls -latrh --color'
alias dif='gvim -d -fg white -bg black'
alias topgui='bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra ide -env top -clean'
alias myavksrc='cd /prj/qct/coredev/hydra/encnaa/scratch01/workspaces/pnarahar/'
set   avksrc="/prj/qct/coredev/hydra/encnaa/scratch02/avk/pvijayak/"
set   avkyml="/prj/qct/qctps/avk-testcode/"
set   avkiss="/prj/dcg/modeling/encnaa/workloads/avk/"
alias sws='set_hydra_ws pnarahar_'\!:1'.'\!:2'.0'
alias fws='set_hydra_ws pnarahar_FALKOR'
alias sa             ='SA_T01_CPU10_CFG01_CL10'
alias cdtop          ='cd $WORKSPACE/verif/src/top'
alias ct             ='/usr/atria/bin/cleartool'
alias ne='/iceng/qctps/rtp/local/bin/nedit'
alias cl='clear;ls --color'
alias c='clear'
alias lterm='bsub  -o /dev/null -e /dev/null -R type==LINUX64 -q app /usr/X11R6/bin/xterm -bg black -fg grey -sb -sl 5000 -rightbar'
alias src_cs='source ~/.cshrc.local'
alias ls='ls --color'
alias filediffl='dif='\!:1'='\!:1'@@/main/LATEST'
alias filediff='dif='\!:1'@@/main/'\!:2'='\!:1'@@/main/'\!:3''
alias get_vcs_version "grep -i vcs ${WORKSPACE}/tools/config/manifest.txt | awk ='{print $2}'"
alias topbld     ='hydra build -env top | tee $WORKSPACE/unmanaged/top.build.output'
alias topbldc    ='hydra build -env top -clean | tee $WORKSPACE/unmanaged/top.build.output'
alias topbldwvpd ='hydra build -env top -waves -vpd | tee $WORKSPACE/unmanaged/top.build.output'
alias topbldwfsdb='hydra build -env top -waves | tee $WORKSPACE/unmanaged/top.build.output'
alias topbar     ='hydra build -env top -waves -vpd | tee $WORKSPACE/unmanaged/top.build.output && bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra regress -env top  -testname='
alias topbartl   ='hydra build -env top -waves -vpd | tee $WORKSPACE/unmanaged/top.build.output && bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra regress -env top  -testlist='
alias topbldcwvpd='hydra build -env top -clean -waves -vpd | tee $WORKSPACE/unmanaged/top.build.output'
alias topbldcwfsdb='hydra build -env top -clean -waves | tee $WORKSPACE/unmanaged/top.build.output'
alias topbarcw   ='hydra build -env top -clean -waves -vpd | tee $WORKSPACE/unmanaged/top.build.output && bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra regress -env top -waves -vpd  -testname'
alias topbarctl  ='hydra build -env top -clean -waves -vpd | tee $WORKSPACE/unmanaged/top.build.output && bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra regress -env top  -testlist'
alias topbardirc ='hydra build -env top -clean -waves -vpd | tee $WORKSPACE/unmanaged/top.build.output && bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra regress -env top  -rec -dir'
alias topbardir  ='hydra build -env top -clean -waves -vpd | tee $WORKSPACE/unmanaged/top.build.output && bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra regress -env top  -rec -dir'
alias topreg     ='bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra regress -env top -testname'
alias topregwvpd    ='bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra regress -env top  -waves -vpd -testname'
alias topregwfsdb   ='bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra regress -env top  -waves -testname'
alias topregtl   ='bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra regress -env top  -testlist'
alias topregdir  ='bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra regress -env top  -rec -dir'
alias topcovreg  ='bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra regress -env top  -fcov -ccov -testname'
alias topvrdigui ='bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra regress -env top -sim_gui verdi +HY_BRKONERR -testname'
alias topvrdiguil ='hydra regress -env top -local -sim_gui verdi +HY_BRKONERR -testname'
alias topvrdiw   ='bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra verdi -env top -testname'
alias topcovc    ='bsub -q normal -R "select[type==LINUX64 && mem>=32000] rusage[mem=32000]" hydra build -env top  -clean -fcov -ccov -waves | tee $WORKSPACE/unmanaged/top_fcov_ccov.build.output'
alias buildlog    "vi $WORKSPACE/unmanaged/top.build.output"
alias lco "source ~/scripts/hydra/list_checkedout.sh"
alias hln "ct lsprivate -other | grep -v -P='hydra_tools/doc|tools/bin|hydra_prj/logs|novas.conf|novas.rc|pop.integrate.cs|status.csv|unmanaged'"
alias new "ct lsprivate -other "
alias git "/prj/qct/qctps/cput/encnaa/dev01/resources/bin/cgit"
set vt="$WORKSPACE/verif/src/top/"
set vcomm="$WORKSPACE/verif/src/common"
set vip="$WORKSPACE/vip/arm_external_debugger"
set rt="$WORKSPACE/hydra/top/src/top/"
set plusarg="$WORKSPACE/tools/lib/"
alias gtvtop='cd $WORKSPACE/verif/top='
alias gtvcomm='cd $WORKSPACE/verif/src/common'
alias gtvip='cd $WORKSPACE/vip/arm_external_debugger/'
alias gthtop='cd $WORKSPACE/hydra/top/src'
alias simclean='find $WORKSPACE/unmanaged/qvmr/$USER/simland/ -not -name "session.log*" -type f -delete'
alias vs       ='/pkg/qct/software/vslick/18.0/bin/vs'
alias vslic    ='/pkg/qct/software/vslick/16.0/selicserver/selicutil -s 5830@license-wan-rtp1 stat -a'
alias xv       ='/pkg/qct/software/xv/current/usr/X11R6/bin/xv'
alias zwgc     ='/iceng/qctps/rtp/local/bin/zwgc'
alias zwrite   ='/iceng/qctps/rtp/local/bin/zwrite'  
alias Eclipse  ='/pkg/qct/cput/eclipse/tide/latest/bin/tide'  
alias myDiff   ='/pkg/qct/software/meld/meld-1.8.6.0/meld/bin/meld'
alias isstrc   ='perl /prj/qct/qctps/avk-testcode/tools/scripts/run_iss_stand_alone.pl'
alias issraven ='xml2raven -s -f'
alias aemtrc='/prj/qct/qctps/avk-testcode/tools/scripts/generate_aem_trace.pl -input'
#setenv VCS_VERSION vcs-mx_vL-2016.06-SP2-1
#setenv VCS_HOME /pkg/qct/software/synopsys/vcs/$VCS_VERSION/
#setenv VCS_HOME /usr/local/packages/synopsys/2016.12-SP2/
#setenv PATH $VCS_HOME/bin:/usr2/pnarahar/scripts/:$PATH
#setenv LD_LIBRARY_PATH "$VCS_HOME/linux/lib:${LD_LIBRARY_PATH}"
#perl ~/scripts/hydra/set_vcs_version.pl
#source  ~/.set_vcs_version
#set sim="$WORKSPACE/unmanaged/qvmr/$USER/simland/"
alias mydve='bsub -q normal -R "select[type==LINUX64 && mem>8000]rusage[mem=4000]" -J dve "Dve -full64 -vpd "\!:1""'
#Collaborator hacks
#rm ~/.smart_bear
#hydra integrate -skip_open -quit_on_holes -id <defect #>
#hydra pop -overlay_config pop.integrate.cs
#~kderis/bin/promo_check
#cat ~kderis/binlast_good_promotion.log
#/prj/qct/coredev/hydra/encnaa/dev01/workspaces/
#cmd : rtl_buildLevel.pl -unit cpm -promoprep -nohallint -build cpmVcs,aggVcs,mcpeVcs,topVcs,topIus,topIusCov,topVcsGls,topVcsCov,top_pwrVcs,cpmVcsCov -lint cpmc,cpmt,top -notifyemail -cleanbld -simsmoke top,cpm -nosimheart -nowaves -si#msniff cpmVcs,aggVcs,mcpeVcs,topVcs,top_pwrVcs
#This command is similar to hydra integrate command
#rtl_buildLevel.pl -keepprev -incdef <#defect>
#del_hydra_ws <wsname>
#rm -rf ~/.smartbear
#hydra review -new -defect 68049 -add_existing_commits
#IPSS CHKIN
alias ipsslsco='cd $verif ; ct lsco -cview -recurse ; cd /vobs/chips/dragonfly/dragonfly_verif/dragonfly_ipss_verif_libs ; ct lsco -cview -recurse'
alias ipssco='ct co -nc -unr'
set bkt="/prj/qct/coredev/hydra/encnaa/buckets/"
set avk_scratch="/prj/qct/coredev/hydra/encnaa/scratch10/workspaces/pnarahar/avk_builds/"
set avk_release="/prj/dcg/modeling/encnaa/workloads/avk/"
#Adding in folders to the agents directory,mv the directory to $workspace mv /vobs/chips/dragonfly/dragonfly_verif/dragonfly_ipss_verif_libs/uvc/XXXX /vobs/chips/dragonfly/dragonfly/dragonfly_ipss_prj/cm_trickbox_virtual_sequencer
#cd /vobs/chips/dragonfly/dragonfly_verif/dragonfly_ipss_verif_libs/uvc/
alias ipssimppreview='clearfsimport -nsetevent -recurse -comment "importing "\!:1"" -follow -preview /vobs/chips/dragonfly/dragonfly/dragonfly_ipss_prj/\!:2 /vobs/chips/dragonfly/dragonfly_verif/dragonfly_ipss_verif_libs/uvc/'
alias ipssimp='clearfsimport -nsetevent -recurse -comment "importing "\!:1"" -follow /vobs/chips/dragonfly/dragonfly/dragonfly_ipss_prj/\!:2 /vobs/chips/dragonfly/dragonfly_verif/dragonfly_ipss_verif_libs/uvc/'
#setenv HYDRA_REVERSE_DEBUG 1
set BUCKET_DIR="/prj/qct/coredev/hydra/encnaa/buckets/"
alias get_ws_promote_tag "grep -m1 -oP='promoted\S+' $WORKSPACE_SETUP/pop.cs"
#set_hydra_ws -u chill-->For accessing waves in someone elses directory
#hydra verdi -env top -testname /prj/qct/coredev/hydra/encnaa/scratch02/workspaces/chill/chill_saphira_14.0.0/qvmr/chill/simland/SA_T01_CPU10_CFG01_CL10_top.sl/top/0.top_tb_test.v8debug_ed_ec_async_at_el0s.4k.v8debug_ed_misc.mmu_on/2017#.10.20_15.20.50_460938/v8debug_ed_ec_async_at_el0s.4k.v8debug_ed_misc.mmu_on.yml -user_build chill -user_waves chill
#hydra verdi -env top -user_build slardino -user_waves slardino -fsdb /prj/qct/coredev/hydra/encnaa/scratch10/workspaces/slardino/slardino_sa_cpu10_cfg01_cl10_19_0_021/qvmr/slardino/simland/SA_T01_CPU10_CFG01_CL10_top.sl/top/0.top_tb_te#st.v8mem_external_abort_64kb_64kb_el3.64k.s_el3.unalign_excl_impl/2017.11.07_15.15.24_4794/waves/top_tb_test.fsdb
#diff -r /prj/dcg/modeling/encnaa/workloads/avk/2017q3_saphiraP1_u20 /prj/dcg/modeling/encnaa/workloads/avk/2017q3_saphiraP1_u21 | grep /prj/dcg/modeling/encnaa/workloads/avk/2017q3_saphiraP1_u20 | awk='{print $4}' > difference1.txt
#Method to search recursively files and replace a string
#find -L $BUCKET_DIR/avk-00000547_2017q3_all_a64_top_SA_T01_CPU10_CFG01_CL10_20.11.0_013/BAD_TEST_75852_ARM710758_PASS/ -type f -exec sed -i='s#//prj/dcg/modeling/encnaa/workloads/avk//2017q3_saphiraP1_u21#/prj/qct/coredev/hydra/encnaa/scratch10/workspaces/pnarahar/avk_builds/rel_test_ras_8p2#g' {} +
