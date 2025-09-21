#!/usr/bin/env python3
import sys
import os

# Add current directory to path
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from pyxtermjs.app import main

if __name__ == "__main__":
    # Force production mode
    import sys
    sys.argv.extend(['--host', '0.0.0.0', '--port', os.environ.get('PORT', '10000')])
    main()
