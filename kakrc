## adding line numbers

add-highlighter global/ number-lines -hlcursor -relative

## highlight matching braces + brackets + parenthesis + etc.

add-highlighter global/ show-matching

## show whitespaces

add-highlighter global/ show-whitespaces

## give tab a set space amount

set-option global tabstop 4

## autosaving

map -docstring "save current buffer" global user s ": w<ret>"

## no more Clippy :(

set-option global ui_options terminal_assistant=none

## Open file in new window

define-command open-in-new-window -params .. -file-completion %{ new edit "%arg{@}"}
alias global e open-in-new-window

## load kak package manager (kak.bundle)

source "%val{config}/plugins/plug.kak/rc/plug.kak"
plug "andreyorst/plug.kak" noload

## discord presence (don't think it works)

plug "uncomfyhalomacro/kakoune-discord" do %{cargo install --path . --force} %{
	discord-presence-enable
}

## themes

plug "secondary-smiles/kakoune-themes" theme config %{
	colorscheme one-dark
}

## autopairs for braces + brackets + parenthesis + etc.
plug "alexherbo2/auto-pairs.kak" config %{
	enable-auto-pairs
}

## markdown veiwer using livedown
## to use use the command livedown-start command and then in the browser open localhost at port 8642

plug "delapouite/kakoune-livedown" %{}
