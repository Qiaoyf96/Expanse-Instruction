# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# User specific aliases and functions
module load gcc
module load slurm

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/cm/shared/apps/spack/gpu/opt/spack/linux-centos8-skylake_avx512/gcc-8.3.1/anaconda3-2020.11-bsn4npoxyw7jzz7fajncek3bvdoaa5wv/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/cm/shared/apps/spack/gpu/opt/spack/linux-centos8-skylake_avx512/gcc-8.3.1/anaconda3-2020.11-bsn4npoxyw7jzz7fajncek3bvdoaa5wv/etc/profile.d/conda.sh" ]; then
        . "/cm/shared/apps/spack/gpu/opt/spack/linux-centos8-skylake_avx512/gcc-8.3.1/anaconda3-2020.11-bsn4npoxyw7jzz7fajncek3bvdoaa5wv/etc/profile.d/conda.sh"
    else
        export PATH="/cm/shared/apps/spack/gpu/opt/spack/linux-centos8-skylake_avx512/gcc-8.3.1/anaconda3-2020.11-bsn4npoxyw7jzz7fajncek3bvdoaa5wv/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<