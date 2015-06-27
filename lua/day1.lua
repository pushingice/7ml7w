-- easy
function ends_in_3(num)
    local num_str = tostring(num)
    local last_chr = num_str:sub(#num_str, #num_str)
    return last_chr == "3"
end

function is_prime(num) -- not exactly the sieve
    if num % 2 == 0 then
        return false
    end
    for i = 3, (num - 1)/2, 2 do
        if num % i == 0 then
            return false
        end
    end
    return true
end

function primes_end_in_3(n)
    local results = 0
    local i = 3
    while results < n do
        if ends_in_3(i) and is_prime(i) then
            print(i)
            results = results + 1
        end
        i = i + 2
    end
end

print("First 8 primes")
primes_end_in_3(8)
print()


-- medium
function for_loop(a, b, f)
    local i = a
    while i <= b do
        f(i)
        i = i + 1
    end
end

print("For loop")
for_loop(1, 7, function(n) print(n*2) end)
print()

-- hard
function add(a, b)
    return a + b
end

function mult(a, b)
    return a * b
end

function reduce(max, init, f)
    local reduction = init
    for i = init + 1, max do
        reduction = f(i, reduction)
    end
    return reduction
end

function factorial(num)
    return reduce(num, 1, mult)
end


print("reduce(5, 0, add)")
print(reduce(5, 0, add))
print()

print("factorial(4)")
print(factorial(4))
print()