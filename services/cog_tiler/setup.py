"""Setup simple cog-tiler"""

from setuptools import find_namespace_packages, setup

with open("README.md") as f:
    long_description = f.read()

inst_reqs = [
    "titiler.application==0.10.2",
]

setup(
    name="cog_tiler",
    description=long_description,
    python_requires=">=3.7",
    packages=find_namespace_packages(exclude=["tests*"]),
    include_package_data=True,
    install_requires=inst_reqs,
)
