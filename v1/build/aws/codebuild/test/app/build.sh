#!/bin/sh
#Only dashisms allowed (https://wiki.archlinux.org/index.php/Dash).

echo "Build Started on $(date)"

#------------------------------------------------------------------------
# BEGIN: Main Logic
#------------------------------------------------------------------------

if [ -n "$APP_BASE_FOLDER" ]; then
  cd "$CODEBUILD_SRC_DIR/$APP_BASE_FOLDER" || exit 1;
fi

echo "Run the application tests..."
npm run test-app

#------------------------------------------------------------------------
# END: Main Logic
#------------------------------------------------------------------------