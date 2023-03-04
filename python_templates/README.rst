repo_name
==========

Environment setup
-----------------

#. Clone the repository::

    git clone git@github.com:vfcapital/repo_name.git

#. Create a virtual environment::

    python3 -m venv venv
    source venv/bin/activate

#. Install the package in editable mode::

    pip install -e .

#. Install dependencies::

    pip install -r requirements.txt

#. Install dev dependencies::

    pip install -r requirements_dev.txt



#. Initialize pre-commit::

    pre-commit install
