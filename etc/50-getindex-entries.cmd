pushd ..\docs
grep "[iI]ndex[^{]*{" *.md >../etc/indexentries.txt
popd
