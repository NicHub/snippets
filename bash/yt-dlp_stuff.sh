###
# JS runtime
# https://github.com/yt-dlp/yt-dlp/wiki/EJS
# https://deno.com/
# curl -fsSL https://deno.land/install.sh | sh
# $HOME/.deno/bin/deno
##

URL=https://youtu.be/GweUdoTeuk4
URL=https://www.youtube.com/watch?v=rlNtyhGLA_Y

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
