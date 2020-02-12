from setuptools import setup

def readme():
    with open('README.rst') as f:
        return f.read()

setup(name='cgmquantify',
      version='0.1',
      description='Quantifying glucose and glucose variability from CGM devices',
      url='https://github.com/brinnaebent/cgmquantify',
      author='Brinnae Bent',
      author_email='bmbent@ncsu.edu',
      license='MIT',
      packages=['cgmquantify'],
      install_requires=['pandas','numpy','matplotlib','datetime','statsmodels',
                        ],
      zip_safe=False)
