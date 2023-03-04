repo_name="${PWD##*/}"

mkdir -p $repo_name

cp ../templates/setup.cfg ./setup.cfg
cp ../templates/setup.py ./setup.py
cp ../templates/.gitignore ./.gitignore
cp ../templates/.pre-commit-config.yaml .pre-commit-config.yaml
cp ../templates/VERSION ./$repo_name/VERSION
cp ../templates/README.rst ./README.rst

sed -i "" "s/repo_name/$repo_name/g" setup.cfg
sed -i "" "s/repo_name/$repo_name/g" README.rst

python -m venv venv 

source venv/bin/activate

pip install --upgrade pip
pip install -e .
pip install pre-commit
pip install setuptools
pip install ipykernel

python -m ipykernel install --user --name "$repo_name-dev"

pre-commit install
