from setuptools import setup
from setuptools import find_packages

setup(name="pipeep-ansible-playbooks",
      package_dir={"": "plugins"},
      packages=["jinja2_plugins"],
      install_requires=["ansible>=1.5,<1.6"])
