using Printf
a = 20
b = 6
c = a/b
c = a%b
c = div(a,b)
c = rem(a,b)

numerator(c)
denominator(c)

d = parse(Float64,"2424234")
print(typeof(d))

a = 3^d
print(a)

string('s')
string(12,"wer","ewr3")
isempty("")
length("") == 0

🎪 = "I have $(a)he has $b apples"

print(🎪)

s = @sprintf("1/3 is about %f",1/3)
@printf("Hello %d\n", 5)
print(s)

@printf("%f %F %f %F\n", Inf, Inf, NaN, NaN)

stringer = "Mama Here PoP"
stringer[5:end]
s = stringer[1:2:end]
s = b"Mama Here PoP"
maped = map(BitArray, b"Mama Here PoP")


Int8[1,2,4]
a =['2',"23",123]

s = ones(Int16,3,3)
s[1:end]

typeof(a)
a = ['2',"23",123]
range(1, 12)
collect(Float16,1:2:5)

s[:]

pop!(a)
a

push!(a,a)
print(a)

append!(a,a)

r = [1,2,3]
t = [10,20,30]
t .* r
t .// r
t .+ r
