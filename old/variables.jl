function aaa()
    for (i,v) in enumerate(1:10000)
        println(i," on ",v*i)
    end
end

aaa()

print(typeof(aaa))
