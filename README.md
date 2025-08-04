# 📱 BMI Calculator App

A **simple BMI (Body Mass Index) Calculator** built in Flutter.  
This app lets users enter their height and weight, calculates the BMI, and shows the BMI category with dynamic color.

---

## ✨ Features
✅ Calculate BMI based on user input  
✅ Display BMI rounded to 1 decimal place  
✅ Show BMI status:
- Underweight
- Normal
- Overweight
- Obese

✅ Change status text color dynamically

✅ Clean and responsive UI

---

## 🧮 BMI Formula

\[
\text{BMI} = \frac{\text{weight (kg)}}{(\text{height (m)})^2}
\]

For example, if:
- Weight = 70 kg
- Height = 1.75 m

Then:
\[
BMI = \frac{70}{1.75 \times 1.75} = 22.9
\]

---

## 📊 BMI Categories

| BMI Range            | Category      |
|---------------------:|--------------:|
| BMI < 18.5           | Underweight   |
| 18.5 ≤ BMI < 25      | Normal        |
| 25 ≤ BMI < 30        | Overweight    |
| BMI ≥ 30             | Obese         |

---
## Screenshots are in the repo:_

## 🚀 How to run this project

Make sure you have [Flutter SDK](https://flutter.dev/docs/get-started/install) installed.

```bash
# Clone the repository (replace with your repo if needed)
git clone 

# Go into the project directory
cd

# Get dependencies
flutter pub get

# Run on an emulator or real device
flutter run
