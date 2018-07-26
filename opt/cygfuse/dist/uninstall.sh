cd "$(dirname "$0")"
case $(uname -m) in
x86_64)
    tar -taf x64/fuse-2.*.tar.xz | sed -e '/\/$/d' -e 's/.*/\/&/' | xargs rm -f ;;
    tar -taf x64/fuse-3.*.tar.xz | sed -e '/\/$/d' -e 's/.*/\/&/' | xargs rm -f ;;
i686)
    tar -taf x86/fuse-2.*.tar.xz | sed -e '/\/$/d' -e 's/.*/\/&/' | xargs rm -f ;;
    tar -taf x86/fuse-3.*.tar.xz | sed -e '/\/$/d' -e 's/.*/\/&/' | xargs rm -f ;;
*)
    echo unsupported architecture 1>&2
    exit 1
esac
echo FUSE for Cygwin uninstalled.
