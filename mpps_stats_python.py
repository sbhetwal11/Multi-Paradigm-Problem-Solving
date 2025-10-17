class StatisticsCalculator:
    def __init__(self, numbers):
        self.numbers = numbers

    def mean(self):
        return sum(self.numbers) / len(self.numbers)

    def median(self):
        sorted_nums = sorted(self.numbers)
        n = len(sorted_nums)
        mid = n // 2
        if n % 2 == 0:
            return (sorted_nums[mid - 1] + sorted_nums[mid]) / 2
        return sorted_nums[mid]

    def mode(self):
        counts = {}
        for num in self.numbers:
            counts[num] = counts.get(num, 0) + 1
        max_count = max(counts.values())
        return [num for num, count in counts.items() if count == max_count]


if __name__ == "__main__":
    nums = list(map(int, input("Enter numbers separated by space: ").split()))
    stats = StatisticsCalculator(nums)
    print("Mean:", round(stats.mean(), 2))
    print("Median:", round(stats.median(), 2))
    print("Mode:", stats.mode())
