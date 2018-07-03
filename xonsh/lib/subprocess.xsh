"""Xonsh extension of the standard library subprocess module, using xonsh for
subprocess calls"""
from xonsh.tools import XonshCalledProcessError as CalledProcessError

def run(cmd, cwd=None, check=False):
    """Stub for ``subprocess.run`` like functionality"""
    if cwd is None:
        cwd = '.'
    with indir(cwd), ${...}.swap(RAISE_SUBPROC_ERROR=check):
        ![@(cmd)]

def check_call(cmd, cwd=None):
    """Stub for ``subprocess.check_call`` like functionality"""
    run(cmd, cwd=cwd, check=True)