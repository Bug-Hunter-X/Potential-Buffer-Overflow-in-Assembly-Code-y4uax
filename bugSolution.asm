mov ecx, [some_size_variable]
mov edx, ebx
add edx, ecx
cmp edx, ebx ; Check for overflow
jge overflow_error
mov eax, [ebx+4*ecx] ; Access memory after validation
jmp end_of_code
overflow_error:
; Handle the error appropriately
end_of_code: