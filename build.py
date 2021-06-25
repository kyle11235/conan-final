import os
import subprocess


def run(cmd):
    ret = os.system(cmd)
    if ret != 0:
        raise Exception("Failed command: %s" % cmd)


def main():
    
    run("conan create d final/testing")
    run("conan create c final/testing")
    run("conan create b final/testing")
    run("conan create a a/0.0.1@final/testing")

if __name__ == '__main__':
    main()
