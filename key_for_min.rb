def key_for_min_value(name_hash)
    temp = []
    if name_hash.length != 0
        name_hash.each do |key, value|
            temp << value
            if value < temp[0]
                temp.shift
            elsif value > temp[0]
                temp.pop
            end
        end
        name_hash.key(temp[0])
    else
        nil
    end
end
