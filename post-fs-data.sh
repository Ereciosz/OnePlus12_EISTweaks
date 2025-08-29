# 挂载any
TMPDIR=${0%/*}/anymount
for i in `/bin/find $TMPDIR -type f -printf "%P "`; do
    /bin/mount /$TMPDIR/$i /$i
    restorecon /$i
done