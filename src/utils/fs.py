from os.path import dirname, realpath

"""
Returns the path to the source file
"""
def src_path() -> str:
  return dirname(realpath(__name__))