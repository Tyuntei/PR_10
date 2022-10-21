#! /bin/bash
#FILE=my_file
if test -f "my_file"; then
	echo "my_file exists."
else
	echo "my_file dont exist."
fi
cat my_file
