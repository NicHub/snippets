##
# https://stackoverflow.com/a/1655389/3057377
#

IFS='' read -r -d '' VAR << EOF

 coucou
    "ceci est une heredoc"
        `pwd`

EOF

# Echo with indentation
echo "$VAR"
echo "${VAR}"

# Echo without indentation
echo $VAR

# Save in a file
echo "$VAR" > ~/Desktop/proton_recovery.asc
