def combine_anagrams(words)

    anagrams = words.group_by { |word| word.chars.sort }.values #sorting all the words and grouping them together
    # [["cars, scar, racs], ["for"], ["four"], ["scream", "creams"]

end

gets
p combine_anagrams(%w(cards scar four for creams scream racs))


