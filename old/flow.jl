x = 345
x>3 ? "yes" : "no"

if x < 3 "yes" else "no" end

g = 1220
if g < 150
    "short"
elseif g < 190
    "average"
elseif g == 1220
    "same"
else
    "tall"
end

i = 'a'
while i == 'a'
    println(i)
    i += 1
end

for i in 1:2:10
    println(i)
end


(2:10).start
(2:10).stop
fieldnames(2:10)

for w in ["one","two","three"]
    println(w)
end

q = [x^2 for x in 1:10]
print(q)
print(q[1:5])

if q[1:5] in q
    "yes"
else
    "NOnono"
end

for (i,val) in enumerate(0:10:100)
    println(i,"   ",val^2)

end

println(collect(enumerate(0:10:100)))
