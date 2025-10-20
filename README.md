# ☕ Coffee Commit Tracker

Every commit = one coffee.  
This repo tracks my caffeine intake and turns my GitHub contribution graph into a record of my productivity (and addiction) ⚡

---

## 💡 Concept

Each time I drink a coffee, I run a script that:
1. Creates a folder for the current year, month, and day.
2. Saves a file named with the exact time.
3. Commits and pushes the change.

Each cup becomes a dot on my GitHub contribution graph — one sip at a time.

---

## 📂 Repo Structure

```
coffee-commit/
│
├── coffees/
│   └── 2025/
│       └── 10/
│           └── 20/
│               ├── 08-45-12.txt
│               ├── 14-32-05.txt
│               └── 19-10-07.txt
│
├── scripts/
│   └── commit_coffee.sh
│
└── README.md
```

---

## ⚙️ How to Use

### 1. Create the repo
```bash
git init coffee-commit
cd coffee-commit
mkdir -p coffees scripts
```

### 2. Add the commit script
Create `scripts/commit_coffee.sh`:

```bash
#!/bin/bash

# Get current date and time
YEAR=$(date +"%Y")
MONTH=$(date +"%m")
DAY=$(date +"%d")
TIME=$(date +"%H-%M-%S")

# Create directory structure: coffees/YYYY/MM/DD
DIR="coffees/${YEAR}/${MONTH}/${DAY}"
mkdir -p "$DIR"

# File name for this coffee
FILE="${DIR}/${TIME}.txt"

# Write a fun message
echo "☕ Coffee logged on $(date)" > "$FILE"

# Commit and push
git add "$FILE"
git commit -m "Coffee at ${YEAR}-${MONTH}-${DAY} ${TIME}"
git push
```

Make it executable:
```bash
chmod +x scripts/commit_coffee.sh
```

### 3. Drink & Commit!
Each time you have a coffee:
```bash
./scripts/commit_coffee.sh
```

You’ll get a structure like:
```
coffees/2025/10/20/08-45-12.txt
```

## ☕ Rules

1. One commit = one real coffee.  
2. No fake commits.  
3. Decaf doesn’t count (sorry).  
4. Be proud of your caffeine consumption graph!

## 🫶 Support

If you like this project, star the repo and start your own caffeine-tracking journey ☕💻

---
