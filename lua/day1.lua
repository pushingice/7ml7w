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
    for i = 2, (num - 1)/2 do
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

primes_end_in_3(8)


-- medium
