#!/bin/bash
cd /content/$1
# This script copies the contents of the FysikCamp2023 folder to the Google Drive folder
# Change the year here
source_folder="/content/"$1

# Folder to exclude from copying


excluded_files=(".gitignore" "README.md" "HER.ipynb")

#Change the year here
destination_folder="/content/drive/MyDrive/Colab Notebooks/"$1
# Copy folders and contents excluding the specified folder and files, without overwriting existing files
rsync -av --exclude="bash_script" --exclude=".git" --exclude-from=<(printf "%s\n" "${excluded_files[@]}") --ignore-existing "$source_folder/" "$destination_folder/"

echo "Finished creating main folder"
excluded_files=(".gitignore" "README.md")
#Change the year here
destination_folder="/content/drive/MyDrive/Colab Notebooks/"$1"/source"
# Copy folders and contents excluding the specified folder and files
rsync -av --exclude="bash_script" --exclude=".git" --exclude-from=<(printf "%s\n" "${excluded_files[@]}") "$source_folder/" "$destination_folder/"

echo "Finished creating source folder"


echo "Finished"