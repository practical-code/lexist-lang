# Writes the message "Hello, world!" to the standard output

program hello
  requires builtin string
  writes external stdout

  write string 'Hello, world!' to stdout
