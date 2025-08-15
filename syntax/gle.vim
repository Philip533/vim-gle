syntax case ignore

" Basic functions{{{
syntax keyword gleKeyword begin
syntax keyword gleKeyword end
syntax keyword gleKeyword start
syntax keyword gleKeyword both
syntax keyword gleKeyword define
syntax keyword gleKeyword for
syntax keyword gleKeyword to
syntax keyword gleKeyword next
syntax keyword gleKeyword if
syntax keyword gleKeyword then
syntax keyword gleKeyword else
syntax keyword gleKeyword include
syntax keyword gleKeyword postscript
syntax keyword gleKeyword bigfile
syntax keyword gleKeyword data
syntax keyword gleKeyword fullsize
syntax keyword gleKeyword let
syntax keyword gleKeyword set
syntax keyword gleKeyword size
highlight link gleKeyword Keyword
"}}}

" Commands {{{
" \v<word> matches using word boundaries. Neat!
syntax match gleCommand "\v<[ar]?line>"
syntax match gleCommand "\v<[ar]move>"
syntax keyword gleCommand arc
syntax keyword gleCommand arcto
syntax keyword gleCommand bezier
syntax keyword gleCommand circle
syntax keyword gleCommand closepath
syntax keyword gleCommand curve
syntax keyword gleCommand grestore
syntax keyword gleCommand gsave
syntax keyword gleCommand join
syntax keyword gleCommand rbezier
syntax keyword gleCommand reverse
syntax keyword gleCommand save
syntax keyword gleCommand write
syntax keyword gleCommand title
syntax match gleCommand "\v<[xy]2?axis>"
syntax match gleCommand "\v<[hv]scale>"
syntax match gleCommand "\v<[xy]2?labels>"
syntax match gleCommand "\v<[xy]2?names>"
syntax match gleCommand "\v<[xy]2?side>"
syntax match gleCommand "\v<[xy]2?subticks>"
syntax match gleCommand "\v<[xy]2?title>"
highlight link gleCommand Constant
" }}}

"Subcommands{{{
syntax keyword gleSubcommands width
syntax match gleSubcommands "\v<h?err>"
syntax match gleSubcommands "\v<h?errwidth>"
syntax match gleSubcommands "\v<h?errup>"
syntax match gleSubcommands "\v<h?errdown>"
syntax keyword gleSubcommands hei
syntax keyword gleSubcommands color
syntax keyword gleSubcommands dashlen
syntax keyword gleSubcommands font
syntax keyword gleSubcommands fontlwidth
syntax keyword gleSubcommands just
syntax keyword gleSubcommands add
syntax keyword gleSubcommands nobox
syntax keyword gleSubcommands name
syntax keyword gleSubcommands arrow
syntax keyword gleSubcommands stroke
syntax keyword gleSubcommands fill
syntax keyword gleSubcommands justify
syntax keyword gleSubcommands cap
syntax keyword gleSubcommands lstyle
syntax keyword gleSubcommands lwidth
syntax keyword gleSubcommands from
syntax keyword gleSubcommands dist
syntax keyword gleSubcommands key
syntax match gleSubcommands "\v[xy]min "
syntax match gleSubcommands "\v[xy]max "
syntax keyword gleSubcommands nomiss
syntax match gleSubcommands "\vsmoothm? "
syntax keyword gleSubcommands dsubticks
syntax keyword gleSubcommands dpoints
syntax match gleSubcommands "\v[nd]ticks "
syntax keyword gleSubcommands shift
syntax keyword gleSubcommands offset
syntax keyword gleSubcommands position
syntax keyword gleSubcommands marker
syntax keyword gleSubcommands msize
syntax keyword gleSubcommands mscale
highlight link gleSubcommands Identifier
"}}}

"Object that come with begin and end{{{
syntax keyword gleObject box
syntax keyword gleObject clip
syntax keyword gleObject origin
syntax keyword gleObject path
syntax keyword gleObject marker
syntax keyword gleObject rotate
syntax keyword gleObject scale
syntax keyword gleObject table
syntax keyword gleObject text
syntax keyword gleObject translate
highlight link gleObject String




"}}}

" Switches{{{
syntax keyword gleSwitch butt
syntax keyword gleSwitch round
syntax keyword gleSwitch square
syntax keyword gleSwitch mitre
syntax keyword gleSwitch bevel
syntax keyword gleSwitch left
syntax keyword gleSwitch center
syntax keyword gleSwitch right
syntax match   gleSwitch "\v<[xy]g>"
syntax match   gleSwitch "\v<[xy]end>"
syntax match   gleSwitch "\v<[xy]pos>"
syntax keyword gleSwitch on
syntax keyword gleSwitch off
syntax keyword gleSwitch grid
syntax keyword gleSwitch log
syntax keyword gleSwitch nofirst
syntax keyword gleSwitch nolast
highlight link gleSwitch Boolean



"}}}

" Mathematical functions{{{
syntax keyword gleFunction abs
syntax keyword gleFunction cos
syntax keyword gleFunction sin
syntax keyword gleFunction tan
syntax keyword gleFunction exp
syntax keyword gleFunction fix
syntax keyword gleFunction int
syntax keyword gleFunction log
syntax keyword gleFunction log10
syntax keyword gleFunction sgn
syntax keyword gleFunction todeg
syntax keyword gleFunction torad
syntax keyword gleFunction not
syntax keyword gleFunction rnd
syntax match gleFunction "\v<sqrt?>"
syntax match gleFunction "\v<a?cosh>?"
syntax match gleFunction "\v<a?coth?>"
syntax match gleFunction "\v<a?csch?>"
syntax match gleFunction "\v<a?sech?>"
syntax match gleFunction "\v<a?sinh?>"
syntax match gleFunction "\v<a?tanh?>"
highlight link gleFunction Function


" }}}

" Libraries {{{
syntax keyword gleLibraries openline
syntax keyword gleLibraries moreland

highlight link gleLibraries Special
" }}}

" Match numbers, strings, and comments
syntax match gleNumber "\v<\-?\d+(\.\d+)?(e\-?\d+)?>"
highlight link gleNumber Identifier 
syntax match gleString "\v(['"]).{-}[^\\]\1"
highlight link gleString String 
syntax match gleComment "\v!.*$"
highlight link gleComment Comment 

let b:current_syntax = "gle"
