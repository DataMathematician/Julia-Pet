f(x) = 2x + 1
print(f(33))

"Find area radius 'r' of circle" area_c(r) = 2π*r^2

print(area_c(112))

r -> 2π*r^2


a = map(r-> 2π*r^2, 1:5)
q = []
for i in a
    i = round(i,digits=5)
    append!(q,i)
end
print(q)

"Any documentation here.
Give some 'x'" func(x) = 5x-2
t = []
for i in 1:10
    append!(t,func(i))
end

a = map(func,0:10:100)
print(a)
