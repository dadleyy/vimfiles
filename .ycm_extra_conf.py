import sys
import os.path


def FlagsForFile(filename, **kwargs):
	flags = ['-x', 'c++', '-Wall', '-Wextra', '-Werror']
	return {
		'flags': flags
	}
