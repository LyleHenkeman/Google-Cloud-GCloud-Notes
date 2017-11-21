#! /bin/bash
# -----------------------------------------------------------------------
# Author: Tegan Burns
# Website: teganburns.com
# -----------------------------------------------------------------------
#   Copyright 2017 Tegan Burns
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
# -----------------------------------------------------------------------


declare -r ARCHITECTURE=$( uname -m )
declare -r CURRENT_DIR=$(pwd)
declare GOOGLE_CLOUD_PATH

declare -r GCLOUD_x86_64_ARCHIVE_LINK="https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-180.0.0-linux-x86_64.tar.gz"
declare -r GCLOUD_x86_ARCHIVE_LINK="https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-180.0.0-linux-x86.tar.gz"

declare -r BASH_COMPLETION_INFO="
# The next line updates PATH for the Google Cloud SDK.
if [ -f $GOOGLE_CLOUD_PATH/path.bash.inc ]; then
    source '$GOOGLE_CLOUD_PATH/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f $GOOGLE_CLOUD_PATH/completion.bash.inc ]; then
    source '$GOOGLE_CLOUD_PATH/completion.bash.inc'
fi"


# -----------------------------------------------------------------------
# VERIFY DIRECTORY

echo -n "Verifying directory..."

if [ $( basename $CURRENT_DIR ) -ne "Google-Cloud-GCloud-Notes" ]; then
    echo "FAILED!\nOnly execute this script in the 'Google-Cloud-GCloud-Notes' reposotory directory."
    exit -1
else
    GOOGLE_CLOUD_PATH=$CURRENT_DIR
fi

echo "OK!"




# -----------------------------------------------------------------------
# DOWNLOAD

echo -n "Downloading package archive..."

if [ $ARCHITECTURE -eq "x86_64" ]; then
    wget -q $GCLOUD_x86_64_ARCHIVE_LINK
elif [ $ARCHITECTURE -eq "x86" ]; then
    wget -q $GCLOUD_x86_ARCHIVE_LINK
else
    echo "FAILED!\nUnable to determine system architecture or incompatable architecture."
    exit -1
fi

echo "OK!"

# -----------------------------------------------------------------------
# EXTRACT

echo -n "Extracting files..."

if [ -f $(basename $GCLOUD_x86_64_ARCHIVE_LINK) ]; then
    tar -xvf $(basename $GCLOUD_x86_64_ARCHIVE_LINK)
elif [ -f $(basename $GCLOUD_x86_ARCHIVE_LINK) ]; then
    tar -xvf $(basename $GCLOUD_x86_ARCHIVE_LINK)
else 
    echo "\nUnable to find downloaded file. Blame the guy that made this garbage script..."
fi

echo "OK!"

# -----------------------------------------------------------------------
# INSTALL

exit

# -----------------------------------------------------------------------
# ADD BASH COMPLETION

while [ 1 ]; do
    echo "Would you like to add the gcloud binary path to your ~/.bashrc file? [Y/n]:"
    read -n 1 c

    if [ $c -eq "y" || "Y" ]; then
        echo "PATH=\$PATH:$GOOGLE_CLOUD_PATH/bin" >> ~/.bashrc
        break;
    elif [ $c -eq "n" || "N" ]; then
        break;
    else 
        echo "Please type \"y\" for Yes and \"n\" for No."
        continue
    fi
done 


echo "Would you like to add bash completion for gcloud to your ~/.bashrc file? [Y/n]:"































