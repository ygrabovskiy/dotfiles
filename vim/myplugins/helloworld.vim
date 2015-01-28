if !has('python')
    finish
endif    

function! HelloWorld()

python <<< EOF

print "Hello World!"

EOF
endfunction
