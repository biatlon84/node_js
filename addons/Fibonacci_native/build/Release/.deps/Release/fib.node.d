cmd_Release/fib.node := ln -f "Release/obj.target/fib.node" "Release/fib.node" 2>/dev/null || (rm -rf "Release/fib.node" && cp -af "Release/obj.target/fib.node" "Release/fib.node")
