# -*- coding: utf-8 -*-
import sys

sys.path.append('../')

from shared.conf import *

project = u'EdX Documentation'

# remove directory when content is first added to it, and add to index
exclude_patterns = ['links/links.rst', 'shared/*', 'release_notes_2014/*']