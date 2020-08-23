pushd ..\tex
pandoc --from=markdown --output=mdl-raw.tex mdl.md --standalone --variable=papersize:a4 --variable=geometry:"margin=2cm" --columns=123
popd
