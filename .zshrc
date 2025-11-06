ZSH_DIR=$HOME/.config/zshrc
CONFIGS=$ZSH_DIR/configs

source $ZSH_DIR/.init
source $ZSH_DIR/.env_vars

FILES_STR=$(find $CONFIGS -name '.*')

# `tr` is a find-and-replace utility.
# Outer () will convert the output of $() to array.
FILES=($(echo $FILES_STR | tr '\n' ' '))

for FILE in $FILES; do
    source $FILE
done

# Source aliases for override
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Potentially, but would desync with bash
# source $ZSH_DIR/.aliases
