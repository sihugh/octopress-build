set GIT_CMD=git.exe

pushd octopress

%GIT_CMD% clone https://github.com/sihugh/mdf  source\_posts

call bundle exec rake generate

xcopy public %site_directory% /S /D

popd