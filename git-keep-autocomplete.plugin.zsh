function list_branches () {
    compls=$(git branch | grep '^\s*.....$')

    completions=(${=compls})
    compadd -- $completions
}

_g () {
    case "${words[2]}" in
        give-back) list_branches;;
        *) _git;;
    esac

	_git # Delegate to completion
}

compdef _g git
