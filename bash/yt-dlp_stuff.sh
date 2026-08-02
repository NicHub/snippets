###
# JS runtime
# https://github.com/yt-dlp/yt-dlp/wiki/EJS
# https://deno.com/
# curl -fsSL https://deno.land/install.sh | sh
# $HOME/.deno/bin/deno
##

URL=https://youtu.be/GweUdoTeuk4
URL=https://www.youtube.com/watch?v=rlNtyhGLA_Y
URL=https://www.youtube.com/watch?v=T2k4P_hgWyk

# List transcripts format
# formats: vtt, srt, ttml, srv3, srv2, srv1, json3
yt-dlp --list-subs "${URL}"
yt-dlp --list-subs --sub-lang en "${URL}"


# Download transcripts
yt-dlp --write-auto-subs --skip-download --sub-lang en --convert-subs vtt "${URL}"
yt-dlp --write-auto-subs --skip-download --sub-lang en --convert-subs srt "${URL}"
yt-dlp --write-auto-subs --skip-download --sub-lang en --convert-subs ttml "${URL}" # Best
yt-dlp --write-auto-subs --skip-download --sub-lang en --convert-subs srv3 "${URL}"
yt-dlp --write-auto-subs --skip-download --sub-lang en --convert-subs srv2 "${URL}"
yt-dlp --write-auto-subs --skip-download --sub-lang en --convert-subs srv1 "${URL}"
yt-dlp --write-auto-subs --skip-download --sub-lang en --convert-subs json3 "${URL}"

yt-dlp --write-auto-sub --skip-download --sub-lang en --sub-format   vtt "${URL}"
yt-dlp --write-auto-sub --skip-download --sub-lang en --sub-format   srt "${URL}"
yt-dlp --write-auto-sub --skip-download --sub-lang en --sub-format  ttml "${URL}" # Best
yt-dlp --write-auto-sub --skip-download --sub-lang en --sub-format  srv3 "${URL}"
yt-dlp --write-auto-sub --skip-download --sub-lang en --sub-format  srv2 "${URL}"
yt-dlp --write-auto-sub --skip-download --sub-lang en --sub-format  srv1 "${URL}"
yt-dlp --write-auto-sub --skip-download --sub-lang en --sub-format json3 "${URL}"

# Download best version
yt-dlp -f "bestvideo+bestaudio/best" "${URL}"

FNAME=coca.mp4
ffprobe -v error -select_streams s -show_entries stream=index:stream_tags=language,title -of default=noprint_wrappers=1:nokey=1 $FNAME

# Extrait l’audio d’une vidéo
ffmpeg -i "${FNAME}" -vn -acodec copy "${FNAME%.mp4}.m4a"

# Solange Ghernaouti
URL=https://www.youtube.com/watch?v=T2k4P_hgWyk
yt-dlp --list-subs "${URL}"
yt-dlp --write-auto-sub --skip-download --sub-lang fr-orig --sub-format  ttml "${URL}"

# Things That Cost Thousands They Never Told You Were Free Online
URL=https://www.youtube.com/watch?v=qTjwhTjNibI
yt-dlp --list-subs "${URL}"
yt-dlp --write-auto-sub --skip-download --sub-lang en-orig --sub-format  ttml "${URL}"

# BHL. Chronique d'un IMPOSTEUR au service de QUI ? 👉 🤫
URL=https://www.youtube.com/watch?v=pa9zB5KLvNs
yt-dlp -f "bestvideo+bestaudio/best" "${URL}"

# AKIM OMIRI : Liberté d'expression et fausse propagande
URL=https://www.youtube.com/watch?v=egoW4SP7Ocw
yt-dlp -f "bestvideo+bestaudio/best" "${URL}"

# Séquence entière - Intrusion à la Riposte
URL=https://www.youtube.com/watch?v=5ebJPkGLqZQ
yt-dlp -f "bestvideo+bestaudio/best" "${URL}"

# Tolkien explains why the Fellowship didn't fly the Eagles to Mordor
# Tolkien explains why the Fellowship didn't fly the Eagles to Mordor
URL=https://www.youtube.com/watch?v=1-Uz0LMbWpI
yt-dlp -f "bestvideo+bestaudio/best" "${URL}"
yt-dlp --list-subs "${URL}"
# yt-dlp --write-auto-sub --skip-download --sub-lang en-orig --sub-format  ttml "${URL}"

# [youtube] Extracting URL: https://www.youtube.com/watch?v=1-Uz0LMbWpI
# [youtube] 1-Uz0LMbWpI: Downloading webpage
# WARNING: [youtube] No supported JavaScript runtime could be found. Only deno is enabled by default; to use another runtime add  --js-runtimes RUNTIME[:PATH]  to your command/config. YouTube extraction without a JS runtime has been deprecated, and some formats may be missing. See  https://github.com/yt-dlp/yt-dlp/wiki/EJS  for details on installing one
# [youtube] 1-Uz0LMbWpI: Downloading android vr player API JSON
# 1-Uz0LMbWpI has no automatic captions
# 1-Uz0LMbWpI has no subtitles
# open https://github.com/yt-dlp/yt-dlp/wiki/EJS

# ZAWA TALK — Le coup de pression de Macron à Bally Bagayoko
URL=https://www.youtube.com/watch?v=rCFZhmx9sjQ
yt-dlp -f "bestvideo+bestaudio/best" "${URL}"
yt-dlp --list-subs "${URL}"
yt-dlp --write-auto-sub --skip-download --sub-lang fr-orig --sub-format  ttml "${URL}"

# Ce que 1 an à laisser l'IA coder m'a appris sur le métier de développeur
URL=https://www.youtube.com/watch?v=7qlk9MQgafU
yt-dlp --list-subs "${URL}"
yt-dlp --write-auto-sub --skip-download --sub-lang fr-orig --sub-format  ttml "${URL}"

# Technology Connections — Ceiling fans: the simple idea we keep screwing up
ID=_KWdCqpXB7A
URL=https://www.youtube.com/watch?v=${ID}
yt-dlp --list-subs "${URL}"
yt-dlp --write-auto-sub --skip-download --sub-lang en-orig --sub-format ttml --output "${ID}" "${URL}"
