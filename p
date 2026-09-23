import csv
APP="Instagaram"
#instagram_minutes=[95,120,80,140,60,170,110]
#print(sum(instagram_minutes))
#755
#print(sum(instagram_minutes)/len(instagram_minutes))
#110.71428571428571
minutes = []
with open("digital_behaviour.csv", "r", encoding="utf-8") as f:
    reader = csv.DictReader(f)
    for row in reader:
        minutes.append(int(row["Instagram_Minutes"]))
        if len(minutes) == 7:
            break
total = sum(minutes)
average = total / len(minutes)
highest = max(minutes)
lowest = min(minutes)
count = 0
for minute in minutes:
    if minute > average:
        count += 1
print(f"App Name: {APP}")
print(f"Total Minutes: {total}")
print(f"Average Minutes: {average:.2f}")
print(f"Highest Minutes: {highest}")
print(f"Lowest Minutes: {lowest}")
print(f"Days Above Average: {count}")
