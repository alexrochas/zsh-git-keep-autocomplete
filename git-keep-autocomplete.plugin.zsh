function list_branches () {
    compls=$(git branch | grep -P "^\s*\w{5}(_\w{1,})?$")

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
