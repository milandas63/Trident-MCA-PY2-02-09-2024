def count_vowels(input):
    vowels = "aeiouAEIOU"
    count = 0
    for char in input:
        if char in vowels:
            count += 1
    return count

input = "Srikant Behera"
print("Number of vowels:", count_vowels(input))