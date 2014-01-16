set GIT_CMD=git.exe

%GIT_CMD% clone https://github.com/sihugh/octopress
%GIT_CMD% clone https://github.com/sihugh/darkstripes .\octopress\.themes\darkstripes

pushd octopress

call gem install bundler
call bundle install
call bundle exec rake install['darkstripes']

%GIT_CMD% clone https://github.com/sihugh/mdf  source\_posts

call bundle exec rake generate

xcopy public %site_directory% /S /D

popd