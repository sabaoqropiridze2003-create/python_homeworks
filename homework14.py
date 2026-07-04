# პირველი ამოცანა

# counter = 1

# with open("users.txt", "w") as file:
#     while True:
#         first_name = input("Enter your name: ").strip()

#         if first_name.lower() == "stop":
#             print("program stoped")
#             break

#         last_name = input("enter your last name: ").strip()

#         file.write(f"{counter}. {first_name} {last_name}\n")

#         counter += 1


# მეორე ამოცანა

# with open("persons.txt", "r") as source:
#     with open("under_50.txt", "w") as young_file:
#         with open("over_50.txt", "w") as old_file:

#             for line in source:

#                 if not line.strip():
#                     continue

#                 parts = line.split(",")

#                 age = int(parts[1].strip())

#                 if age < 50:
#                     young_file.write(line)
#                 elif age > 50:
#                     old_file.write(line)

# მესამე ამოცანა

# import csv


# def save_users_to_csv(number_of_users):
#     fieldnames = ["ID", "first_name", "last_name", "age"]
#     with open("users.csv", "w") as file:
#         writer = csv.DictWriter(file, fieldnames=fieldnames)

#         writer.writeheader()

#         for i in range(1, number_of_users + 1):
#             print(f"\nenter information for user number {i}")

#             first_name = input("enter first name: ").strip()
#             last_name = input("enter last name: ").strip()

#             while True:
#                 age_input = input("enter age: ").strip()
#                 try:
#                     age = int(age_input)
#                     break
#                 except ValueError:
#                     print("enter only number for age!!")

#             user_data = {
#                 'ID': i,
#                 "first_name": first_name,
#                 "last_name": last_name,
#                 "age": age
#             }

#             writer.writerow(user_data)
#     print("data was sucsesfyly writen in: users.csv ")


# save_users_to_csv(3)

# ამოცანა 4

import csv


def filter_students():

    passed_students = []
    failed_students = []

    with open("students.csv", "r") as file:
        reader = csv.DictReader(file)

        fieldnames = reader.fieldnames

        for row in reader:
            grade = int(row["Grade"])
            if grade < 50:
                failed_students.append(row)
            else:
                passed_students.append(row)

    with open("failed_students.csv", "w") as file:
        writer = csv.DictWriter(file, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(failed_students)

    with open("passed_students.csv", "w") as file:
        writer = csv.DictWriter(file, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(passed_students)


filter_students()
