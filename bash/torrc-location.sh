sudo find / -name torrc

# https://support.torproject.org/tbb/tbb-editing-torrc/

# code "$HOME/Library/Application Support/TorBrowser-Data/Tor/torrc"

# /Users/nico/Library/Application Support/TorBrowser-Data/Tor/torrc
# /System/Volumes/Data/Users/nico/Library/Application Support/TorBrowser-Data/Tor/torrc
# /System/Volumes/Data/opt/homebrew/etc/tor/torrc

# /Users/std/Library/Application Support/TorBrowser-Data/Tor/torrc
# /System/Volumes/Data/Users/std/Library/Application Support/TorBrowser-Data/Tor/torrc
# /System/Volumes/Data/Users/std/Documents/test/tools/tor_stuff/docker_torsocks/downloads/torrc
# /Users/std/Documents/test/tools/tor_stuff/docker_torsocks/downloads/torrc

# /opt/homebrew/etc/tor/torrc

###########
# Sur Windows
# notepad %HOMEPATH%\Desktop\Tor Browser\Browser\TorBrowser\Data\Tor\torrc
# dir C:\ /s /b | findstr /i "torrc"
# cmd /k dir C:\ /s /b | findstr /i "torrc"
# https://mylocation.org/

# Exemple de torrc pour Windows

# torrc-defaults for Tor Browser
#
# If non-zero, try to write to disk less frequently than we would otherwise.
AvoidDiskWrites 1
# Where to send logging messages.  Format is minSeverity[-maxSeverity]
# (stderr|stdout|syslog|file FILENAME).
Log notice stdout
CookieAuthentication 1
DormantCanceledByStartup 1
ClientTransportPlugin meek_lite,obfs2,obfs3,obfs4,scramblesuit exec TorBrowser\Tor\PluggableTransports\lyrebird.exe
ClientTransportPlugin snowflake exec TorBrowser\Tor\PluggableTransports\snowflake-client.exe
ClientTransportPlugin webtunnel exec TorBrowser\Tor\PluggableTransports\webtunnel-client.exe
ClientTransportPlugin conjure exec TorBrowser\Tor\PluggableTransports\conjure-client.exe -registerURL https://registration.refraction.network/api
ExitNodes {ca} StrictNodes 1
