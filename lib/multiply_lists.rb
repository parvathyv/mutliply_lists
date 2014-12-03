def multiply_lists(lists)
    res=[]
    
    ctr=lists.split(' ').index('|')
    
    lists=lists.scan(/\w+/).map(&:to_i)
    n=lists.length/2
    if n==ctr
        0.upto(n-1) do|i|
            res.push(lists[i] * lists[i+n])
        end
        else
        return 'Lists must be same length'
    end
    res.join(' ')
end
