import os
from setuptools import setup

# Utility function to read the README file.
# Used for the long_description.  It's nice, because now 1) we have a top level
# README file and 2) it's easier to type in the README file than to put a raw
# string in below ...
def read(fname):
  return open(os.path.join(os.path.dirname(__file__), fname)).read()

setup(
  name = "ark_avanza_sync",
  version = "0.0.1",
  author = "Rovanion Luckey",
  author_email = "andrewjcarter@gmail.com",
  description = ("A program to syncronize your Avanza investments"
                 "with those of ARK Invest."),
  license = "AGPL",
  keywords = "ARK Avanza Investment",
  url = "https://github.com/Rovanion/ark-avanza-sync",
  packages=['avanza_ark_sync', 'tests'],
  long_description=read('README.org'),
  classifiers=[
    "Development Status :: 3 - Alpha",
    "Topic :: Utilities",
    "License :: OSI Approved :: AGPLv3",
],
)
