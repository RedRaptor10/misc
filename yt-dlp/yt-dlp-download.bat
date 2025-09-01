:: Download YouTube Video with yt-dlp with a config file.
@ECHO OFF

SET output_dir=
SET config_location=

CD /D "%output_dir%"

:start

ECHO Enter YouTube Video URL. Type x to Exit.
SET /P url=

IF "%url%"=="x" EXIT

yt-dlp --config-location "%config_location%" %url%

ECHO.
GOTO start

PAUSE