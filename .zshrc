# Переменные окружения
# ____________________
# Рабочая дериктория 
export WORKSPACE_DIR="/root/workspace"

#Программы
#___________________________
# Путь к установке Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Тема для Zsh
ZSH_THEME="robbyrussell"

# Включить плагины
plugins=(git)

# Загрузить Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Пользовательские алиасы
alias ll="ls -la"

# Иконки напровтив папок

alias ls='eza --icons'

# Переход в рабочую папку
ws() {
    if [[ -z $WORKSPACE_DIR ]]; then
        echo "Ошибка: WORKSPACE_DIR не задана."
        return 1
    fi

    if [[ -z $1 ]]; then
        # Если аргумент не передан, перейти в базовую директорию
        cd "$WORKSPACE_DIR" || return
    else
        # Определение папки по флагу
        case $1 in
            2) target_dir="$WORKSPACE_DIR/2.js" ;;
            3) target_dir="$WORKSPACE_DIR/3.java" ;;
            4) target_dir="$WORKSPACE_DIR/4.python" ;;
            d) target_dir="$WORKSPACE_DIR/Docker" ;;
            *)
                echo "Неизвестный флаг: $1"
                return 1
                ;;
        esac
        cd "$target_dir" || return
    fi
    pwd
    ls
}


# Created by `pipx` on 2024-11-28 11:25:04
export PATH="$PATH:/root/.local/bin"
