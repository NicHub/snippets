

# Sur votre appareil Android, activez les options de développement en allant dans Paramètres > À propos du téléphone et en cliquant 7 fois sur le numéro de build.
# Allez dans Paramètres > Options de développement et activez "Débogage USB".

brew install android-platform-tools

which adb
man adb
adb --help
adb --help | less
adb devices
adb shell
README.mdrr20240529_105639.heic
adb pull /storage/emulated/0/DCIM/Screenshots
adb pull /storage/emulated/0/DCIM/Screenshots .
adb pull /storage/emulated/0/DCIM/Camera .
adb pull /storage/emulated/0/DCIM/Camera/IP_WEBCAM/photo ~/Desktop/ar/ip_webcam/
adb shell am start -a android.media.action.IMAGE_CAPTURE
adb shell am start -a android.media.action.IMAGE_CAPTURE
adb shell "am start -a android.media.action.STILL_IMAGE_CAMERA"
adb shell "am start -a android.media.action.STILL_IMAGE_CAMERA"
adb shell "am start -a android.media.action.STILL_IMAGE_CAMERA"
adb shell
adb pull /sdcard/DCIM/Camera/
adb shell "input keyevent KEYCODE_WAKEUP"  #...................... déverrouillage
adb shell "input keyevent KEYCODE_WAKEUP"  #...................... déverrouillage
adb shell "input keyevent KEYCODE_HOME" #......................... écran d'accueil
adb shell "input keyevent KEYCODE_HOME" #......................... écran d'accueil
adb shell "input keyevent KEYCODE_CAMERA" #....................... prise de la photo
adb shell "input keyevent KEYCODE_CAMERA" #....................... prise de la photo
adb shell "input keyevent KEYCODE_CAMERA" #....................... prise de la photo
code adb_logcat.txt
code adb_logcat.txt
adb logcat --regex=SCREEN
adb logcat --regex=SCREEN | wc -l
adb logcat --regex=SCREEN -d | wc -l
adb logcat --regex=android.intent.action.SCREEN_ON -d | wc -l
adb logcat --regex=android.intent.action.SCREEN_ON -d
adb logcat --regex=android.intent.action.SCREEN_ON -d
adb logcat --regex=android.intent.action.SCREEN_ON -d
adb logcat -d >> adb_logcat.txt
adb logcat -d >> adb_logcat.txt
adb logcat -d --regex="InputReader: Input event(9): value=1" >> adb_logcat.txt
adb logcat -d --regex="InputReader: Input event(9): value=1" >> adb_logcat_2.txt
open adb_logcat_2.txt
adb logcat --regex="InputReader: Input event(9): value=1" -d >> adb_logcat_2.txt
adb logcat --regex="event(9)" -d >> adb_logcat_2.txt
adb logcat --regex=event(9) -d >> adb_logcat_2.txt
adb logcat --regex=event -d >> adb_logcat_2.txt
adb logcat --regex="event" -d >> adb_logcat_2.txt
adb logcat --regex="event" -d >> adb_logcat_2.txt
adb logcat --regex="event(" -d >> adb_logcat_2.txt
adb logcat --regex="InputReader: Input event\(9\): value=1" -d >> adb_logcat_2.txt
adb logcat --regex="InputReader\: Input event\(9\)\: value=1" -d >> adb_logcat_2.txt
adb logcat --regex="InputReader\: Input event\(9\)\: value\=1" -d >> adb_logcat_2.txt
adb logcat --regex="InputReader\: Input event\(9\)\: value" -d >> adb_logcat_2.txt
adb logcat --regex="Input event\(9\)" -d >> adb_logcat_2.txt
adb logcat -d --regex="Input event\(9\)" >> adb_logcat_2.txt
adb logcat -d --regex="Input event\(9\)\:" >> adb_logcat_2.txt
adb logcat -d --regex="Input event\(9\)\: value" >> adb_logcat_2.txt
adb logcat -d --regex="Input event\(9\)\: value=" >> adb_logcat_2.txt
adb logcat -d --regex="Input event\(9\)\: value=1" >> adb_logcat_2.txt
adb logcat -d --regex="InputReader\: Input event\(9\)\: value=1" >> adb_logcat_2.txt
adb logcat -d --regex="Input event\(9\)\: value=1" >> adb_logcat_2.txt
adb logcat -d --start-time 2024-06-11 00:00:00 --regex="Input event\(9\)\: value=1" >> adb_logcat_2.txt
adb logcat -d -t 2024-06-11 00:00:00 --regex="Input event\(9\)\: value=1" >> adb_logcat_2.txt
adb logcat -d -t "2024-06-11 00:00:00" --regex="Input event\(9\)\: value=1" >> adb_logcat_2.txt
adb logcat -d -T "2024-06-11 00:00:00" --regex="Input event\(9\)\: value=1" >> adb_logcat_2.txt
adb logcat -d -T 2024-06-11 00:00:00 --regex="Input event\(9\)\: value=1" >> adb_logcat_2.txt
adb logcat -d -b events --regex="Input event\(9\)\: value=1" >> adb_logcat_2.txt
adb logcat -d -b events --regex="Input event\(9\)\: value=1" >> adb_logcat_2.txt
adb logcat -d -b main --regex="Input event\(9\)\: value=1" >> adb_logcat_2.txt
adb logcat -d -b events --regex="Input event\(9\)\: value=1" InputReader >> adb_logcat_2.txt
adb logcat -d -b events --regex="Input event\(9\)\: value=1" InputReader >> adb_logcat_2.txt
adb logcat -d -b events --regex="Input event\(9\)\: value=1" >> adb_logcat_2.txt
adb logcat -d --regex="Input event\(9\)\: value=1" >> adb_logcat_2.txt
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader >> adb_logcat_2.txt
adb logcat -d -v time --regex="Input event\(9\)\: value=1" InputReader >> adb_logcat_2.txt
adb logcat -d -v threadtime --regex="Input event\(9\)\: value=1" InputReader >> adb_logcat_2.txt
adb logcat -d -v threadtime --regex="Input event\(9\)\: value=1" InputReader
adb logcat -d -v brief --regex="Input event\(9\)\: value=1" InputReader
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v long
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v process
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v raw
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v tag
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v thread
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v threadtime
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v time
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v year
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v UTC
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v year
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v year -b main
adb logcat -t "01-21 10:10:10.000"
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v year -b main -t "01-21 10:10:10.000"
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v year -b main -t "01-21 00:00:00.000"
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v year -b main -t "2024-01-21 00:00:00.000"
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v year -b main -T "2024-01-21 00:00:00.000"
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v year -b main -T "2024-06-11 09:00:00.000"
adb logcat -g
adb logcat -b main -G 20M
adb logcat -d --regex="Input event\(9\)\: value=1" InputReader -v year -b main -T "2023-06-11 09:00:00.000"
adb shell dumpsys activity broadcasts | grep "Screen unlocked"
adb
adb shell dumpsys activity broadcasts | grep "Screen unlocked"
adb shell dumpsys activity broadcasts | grep "Screen unlocked"
adb shell dumpsys activity broadcasts
adb shell dumpsys activity broadcasts > adb_dumpsys.txt
code . && code adb_dumpsys.txt
adb shell dumpsys activity recents
adb shell dumpsys activity recents
adb logcat
adb logcat | grep -i screen
adb logcat > adb_logcat.txt
adb logcat --help
adb logcat --help
#�adb logcat > adb_logcat.txt

adb push ~/kdnicomac/divers/SDRTouchPresets.xml /storage/emulated/0/Documents/
adb pull /storage/emulated/0/Documents/SDRTouchPresets.xml ~/kdnicomac/divers/


# adb via Wifi

# Connect the device to the computer via USB
adb tcpip 5555
ip=$(adb shell ip route | awk '{print $9}' | awk '/192/') && echo "$ip" && echo "$ip" | pbcopy
# or
adb shell ip route | awk '{print $9}' # + copy device IP
# or
adb shell ip address | grep 192.168 # + copy device IP
# Unconnect USB
adb connect 192.168.175.67:5555 # Use device IP
adb devices
adb shell

adb pull /storage/emulated/0/DCIM/Camera/IP_WEBCAM/photo ~/Desktop/ar/ip_webcam/
adb pull /storage/emulated/0/DCIM/Camera/20240610_123613.heic ~/kdnicomac/images/Camera/Camera/2024/06/

adb pull /storage/emulated/0/DCIM/Camera/IP_WEBCAM/photo ~/Desktop/ar/ip_webcam/ && adb shell rm -r /storage/emulated/0/DCIM/Camera/IP_WEBCAM/photo

adb shell dumpsys battery

adb pull /storage/emulated/0/DCIM/Camera/2024082* ~/Desktop/images
adb pull /storage/emulated/0/DCIM/Camera/202409* ~/Desktop/images

adb shell 'ls /storage/emulated/0/DCIM/Camera/20241221*' | xargs -I {} adb pull {} ~/Desktop/images/
adb shell 'ls /storage/emulated/0/DCIM/Camera/202409*' | xargs -I {} adb pull {} ~/Desktop/images/

# List last image
adb shell ls -t /storage/emulated/0/DCIM/Camera/ | head -n 1

# Copy last image
mkdir -p ~/Desktop/images && adb shell ls -t /storage/emulated/0/DCIM/Camera/ | head -n 1 | xargs -I {} adb pull /storage/emulated/0/DCIM/Camera/{} ~/Desktop/images

adb pull /storage/emulated/0/Documents/temp4426071845391382634.PDF ~/Desktop/


adb push "/Users/nico/kdnicomac/musique/Eckhart Tolle/" /storage/emulated/0/Music

adb push jung-un-voyage-vers-soi-frederic-lenoir.webm /storage/emulated/0/Music/podcasts
