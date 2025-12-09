# -*- mode: python -*-
# Simple PyInstaller spec for VideoCaptioner (example)
from PyInstaller.utils.hooks import collect_data_files, collect_dynamic_libs

block_cipher = None

# collect non-python data under 'resource' and 'public' if present
datas = []
datas += collect_data_files('app', include_py_files=False)
datas += collect_data_files('resource')
datas += collect_data_files('public')

# collect Qt/PyQt dynamic libs when needed
binaries = collect_dynamic_libs('PyQt5')

a = Analysis(
    ['main.py'],
    pathex=['.'],
    binaries=binaries,
    datas=datas,
    hiddenimports=[],
    hookspath=[],
)
pyz = PYZ(a.pure, a.zipped_data, cipher=block_cipher)
exe = EXE(pyz, a.scripts, exclude_binaries=True, name='VideoCaptioner', debug=False, bootloader_ignore_signals=False, strip=False, upx=True, console=False)
coll = COLLECT(exe, a.binaries, a.zipfiles, a.datas, strip=False, upx=True, name='VideoCaptioner')
