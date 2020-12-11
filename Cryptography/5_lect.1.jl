#Lab work 5
# 1 bin  string() || parse()
a = 0b10101100  #10101100
b = 0b11001010  #11001010
ans = xor(a,b)                      # сложение по модулю 2 ⊻
a = string(a,base = 10)             # переводит bin в dec
b = string(b,base = 10)
ans_1 = string(ans,base = 2)        # переводит ответ в bin
ans_2 = string(ans,base = 10)

#dec
a = 15
b = 10
a = string(a,base = 2)
b = string(b,base = 2)
a = parse(Int,a)
b = parse(Int,b)
ans = xor(a,b)
ans_1 = string(ans,base = 2)
ans_2 = string(ans,base = 10)

#hex
a = 0x0B5
b = 0x37
a = string(a,base = 2)
b = string(b,base = 2)
a = parse(Int,a)
b = parse(Int,b)
ans = xor(a,b)
ans_1 = string(ans,base = 2)
ans_2 = string(ans,base = 10)

# ========================================================================================
# 2
a = 0b10101100  #10101100
b = 0b11001010  #11001010
ans = xor(a,b)
ans = rem(ans,2^8)
ans = parse(Int128 ,string(ans,base = 2))
ans = string(rem(ans,2^8),base = 2) #остаток от деления результата на 2 в 8 степени.
length(ans)

#dec
a = 155
b = 100
a = string(a,base = 2)
b = string(b,base = 2)
a = parse(Int,a)
b = parse(Int,b)
ans = xor(a,b)
ans = parse(Int128 ,string(ans,base = 2))
ans = string(rem(ans,2^8),base = 2)
length(ans)

#hex
a = 0x0B5
b = 0x37
a = string(a,base = 2)
b = string(b,base = 2)
a = parse(Int,a)
b = parse(Int,b)
ans = xor(a,b)
ans = parse(Int128 ,string(ans,base = 2))
ans = string(rem(ans,2^8),base = 2)
length(ans)
# ========================================================================================
#3
a1 = 0b10101100
a1 = string(a1,base = 2)

a2 = 0x9E
a2 = string(a2,base = 2)

a3 = 0x55
a3 = string(a3,base = 2)

function Δshift(a, shift, shift_num)
    if shift == "left"
        emp = []
        for i in a
            append!(emp,i)
        end
        println(emp)

        for i in 1:shift_num
            p = popfirst!(emp)
            append!(emp,p)
        end
        println(emp)

        str = ""
        for i in emp
            str *= i
        end

        println("Original:            ",a)
        println("$(shift_num)-bit left-shifted : ",str)

    else
        emp = []
        for i in a
            append!(emp,i)
        end
        println(emp)

        for i in 1:shift_num
            p = pop!(emp)
            insert!(emp,1,p)
        end
        println(emp)

        str = ""
        for i in emp
            str*=i
        end

        println("Original:             ",a)
        println("$(shift_num)-bit right-shifted : ",str)
    end
end

Δshift(a1,"left",5)
Δshift(a3,"right",2)

#=
1.	Сложите по модулю 2:
o	двоичные числа 10101100 и 11001010 ;
o	десятичные числа 15 и 10 ;
o	шестнадцатеричные числа 0В5 и 37.
Примечание: десятичные и шестнадцатеричные числа необходимо сначала перевести в двоичный вид.
2.	Сложите по модулю 2^8:
o	двоичные числа 10101100 и 11001010 ;
o	десятичные числа 155 и 100 ;
o	шестнадцатеричные числа 0В5 и 37.
Примечание: десятичные числа необходимо сначала перевести в двоичный вид.
3.	Выполните операцию циклического сдвига:
o	влево на 5 разрядов для двоичного числа 10101100 ;
o	вправо на 4 разряда для шестнадцатеричного числа 9E ;
o	вправо на 2 разряда для шестнадцатеричного числа 55.
Примечание: шестнадцатеричные числа необходимо сначала перевести в двоичный вид.

Переводишь результат в двоичный вид
 и оставляешь в нём только 32 младших разряда.
 Либо - что тоже самое -
 берёшь остаток от деления результата на 2 в 32 степени.

=#
