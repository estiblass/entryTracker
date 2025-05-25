# שלב 1: בסיס על פייתון 3.10
FROM python:3.10-slim

# הגדרת משתנים
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# הגדרת תיקיית העבודה
WORKDIR /app

# התקנת תלויות
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# העתקת קוד המקור
COPY . .

# פתיחת הפורט
EXPOSE 5000

# פקודת ההרצה
CMD ["python", "app.py"]


