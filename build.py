import PyInstaller.__main__
from os import system

PyInstaller.__main__.run([
  'src/main.py',
  '--onefile',
  '--windowed',
])

system('mv dist/main ./exec')
system('rm -rf build')
system('rm -rf dist')
system('rm main.spec')