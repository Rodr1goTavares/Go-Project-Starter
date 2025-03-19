echo "Project name:"
read projectName

echo "Generating $projectName..."

mkdir $projectName

cd $projectName

mkdir cmd internal pkg scripts
mkdir cmd/$projectName

echo "Folders created. Starting project module..."

go mod init $projectName

echo "Done."

exec bash -i
