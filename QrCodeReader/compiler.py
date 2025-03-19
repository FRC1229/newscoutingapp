
import glob
import cv2 as cv
import pathlib
import csv
import os
count = 0
total = 0
print("Compile")
mNumber = input("Input Match Number: ")
team1 = input("Input Team 1: ")
# team2 = input("Input Team 2: ")
# team3 = input("Input Team 3: ")
# team4 = input("Input Team 4: ")
# team5 = input("Input Team 5: ")
teamlist = [team1]
if(not (os.path.exists("Compile"))):
    os.mkdir("Compile")

Teams = {}
for team in teamlist:
    Teams[team] = {
        f"ScouterName": "",
    f"team": 0,
    f"MatchNumber": 0,
    f"Starting Position": "",
    f"Auto Coral L1": 0,
    f"Auto Coral L2": 0,
    f"Auto Coral L3": 0,
    f"Auto Coral L4": 0,
    f"Leave": "",
    f"Remove Algae #": 0,
    f"Teleop Coral L1": 0,
    f"Teleop Coral L2": 0,
    f"Teleop Coral L3": 0,
    f"Teleop Coral L4": 0,
    f"Miss #": 0,
    f"Processor #": 0,
    f"Net #": 0,
    f"Defense Slider": "",
    f"Climb": "",
    f"Comments": "",
    }


if((os.path.exists("Teams"))):
    for i in teamlist:
        if((os.path.exists(f"Teams\\{i}.csv"))):
             with open(f"Teams\\{i}.csv", "r", encoding='UTF8') as r:
                print("hello")
                data = list(csv.reader(r, delimiter=","))
                for row in data:
                    
                    try:
                        
                        Teams[i]["ScouterName"] += str(row[0])
                        Teams[i]["team"] += int(row[1])
                        Teams[i]["MatchNumber"] += int(row[2])
                        Teams[i]["Starting Position"] += str(row[3])
                        Teams[i]["Auto Coral L1"] += int(row[4])
                        Teams[i]["Auto Coral L2"] += int(row[5])
                        Teams[i]["Auto Coral L3"] += int(row[6])
                        Teams[i]["Auto Coral L4"] += int(row[7])
                        Teams[i]["Leave"] += str(row[8])
                        Teams[i]["Remove Algae #"] += int(row[9])
                        Teams[i]["Teleop Coral L1"] += int(row[10])
                        Teams[i]["Teleop Coral L2"] += int(row[11])
                        Teams[i]["Teleop Coral L3"] += int(row[12])
                        Teams[i]["Teleop Coral L4"] += int(row[13])
                        Teams[i]["Miss #"] += int(row[14])
                        Teams[i]["Processor #"] += int(row[15])
                        Teams[i]["Net #"] += int(row[16])
                        Teams[i]["Defense Slider"] += str(row[17])
                        Teams[i]["Climb"] += str(row[18])
                        Teams[i]["Comments"] += str(row[19])

                        
                        
                        
                        
                    except:
                        # print("")
                        pass
                        # print(total)
                        # print(count)
                # Teams[i]["Auto Coral L1"] /= count
                # Teams[i]["Auto Coral L2"] /= count
                # Teams[i]["Auto Coral L3"] /= count
                # Teams[i]["Auto Coral L4"] /= count
                # Teams[i]["Teleop Coral L1"] /= count
                # Teams[i]["Teleop Coral L2"] /= count
                # Teams[i]["Teleop Coral L3"] /= count
                # Teams[i]["Teleop Coral L4"] /= count
                # Teams[i]["Auto Remove Algae #"] /= count
                # Teams[i]["Missed #"] /= count
                # Teams[i]["Processor #"] /= count
                # Teams[i]["Net #"] /= count
                # Teams[i]["Algae left in reef"] /= count
else:          
    print("ERROR: No Teams Folder found")

print(Teams)

if(not (os.path.exists("Compile"))):
    os.mkdir("Compile")


sn = "ScouterName"
tn = "team"
mn = "MatchNumber"
sp = "Starting Position"
ac1 = "Auto Coral L1"
ac2 = "Auto Coral L2"
ac3 = "Auto Coral L3"
ac4 = "Auto Coral L4"
l = "Leave"
ara = "Remove Algae #"
tc1 = "Teleop Coral L1"
tc2 = "Teleop Coral L2"
tc3 = "Teleop Coral L3"
tc4 = "Teleop Coral L4"
atra = "Miss #"
ac = "Processor #"
p = "Net #"
ns = "Defense Slider"
m = "Climb"
ds = "Comments"


open(f"Compile\\{mNumber}.csv", "a").close()
with open(f"Compile\\{mNumber}.csv", "a", encoding='UTF8') as f:
    w = csv.writer(f)
    w.writerow(["Teams", sn, tn, mn, sp, ac1, ac2, ac3, ac4, l, ara, tc1, tc2, tc3, tc4, atra, ac, p, ns, m, ds])
    for i in teamlist:
        w.writerow([f"{i}", f"{Teams[i][sn]}", f"{Teams[i][tn]}" , f"{Teams[i][mn]}", f"{Teams[i][sp]}", f"{Teams[i][ac1]}", f"{Teams[i][ac2]}", f"{Teams[i][ac3]}", f"{Teams[i][ac4]}", f"{Teams[i][l]}", f"{Teams[i][ara]}", f"{Teams[i][tc1]}", f"{Teams[i][tc2]}", f"{Teams[i][tc3]}", f"{Teams[i][tc4]}", f"{Teams[i][atra]}", f"{Teams[i][ac]}", f"{Teams[i][p]}", f"{Teams[i][ns]}", f"{Teams[i][m]}", f"{Teams[i][ds]}"])
print("Done")




