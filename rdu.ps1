# central script: a "main" if you will
# passes arguments to the relevant sub-scripts

if ($args[0] -eq 'clone') {
# run clone sub-script

} ElseIF ($args[0] -eq 'backup') {
# run backup sub-script

} ElseIf ($args[0] -eq 'sync') {
# run sync sub-script

} Else {
# print help message

}