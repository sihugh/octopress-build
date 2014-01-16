set GIT_CMD=git.exe

pushd octopress

if exist "source\_posts" rmdir "source\_posts" /S /Q

%GIT_CMD% clone https://github.com/sihugh/mdf  source\_posts

call bundle exec rake generate

robocopy public %site_directory% /S

popd