# Spring Boot Maven App with AWS Elastic Beanstalk

## 🚀 Project Overview
This is a **Spring Boot application** built with **Maven**, designed to run on **AWS Elastic Beanstalk**. 
It is configured to use **Java 17 (Corretto)** and supports **automatic deployment via GitHub Actions**.

---

## 🔧 Prerequisites
Ensure the following are installed on your system:

- **Java 17** (OpenJDK or Corretto 17)
- **Maven** (for building and running the app)
- **AWS CLI** (for AWS Elastic Beanstalk management)
- **EB CLI** (for managing Beanstalk environments)
- **cURL** (for API testing)

---

## 🚀 Running the Application Locally

### 1️⃣ Clone the Repository
```sh
git clone https://github.com/ArthuR1CP/python-flask-ga.git
cd your-repo-name
```

### 2️⃣ Build the Project with Maven
```sh
mvn clean package
```

### 3️⃣ Run the Application
By default, the application runs on **port 8001**:
```sh
mvn spring-boot:run
```

### 4️⃣ Test the API Locally Using cURL

#### ✅ Create a User (POST)
```sh
curl -X POST http://localhost:8001/users      -H "Content-Type: application/json"      -d '{"name": "Artur Cepuc", "email": "arturcepuc@gmail.com"}'
```

#### ✅ Get All Users (GET)
```sh
curl -X GET http://localhost:8001/users
```

#### ✅ Get User by ID (GET)
```sh
curl -X GET http://localhost:8001/users/1
```

#### ✅ Delete a User (DELETE)
```sh
curl -X DELETE http://localhost:8001/users/1
```

---

## 🌍 Testing on AWS Elastic Beanstalk

Once deployed, replace `your-app-name` with your **AWS Elastic Beanstalk app URL**:

```sh
curl http://your-app-name.eu-west-3.elasticbeanstalk.com/users
```

---

## 🚀 Deploying to AWS Elastic Beanstalk

### 1️⃣ Set AWS Credentials in GitHub Secrets
Go to **GitHub → Your Repo → Settings → Secrets → Actions**, then add:
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

### 2️⃣ Push Code to GitHub
Pushing to the `main` branch triggers **GitHub Actions** to deploy the app:
```sh
git add .
git commit -m "Deploy app to AWS Elastic Beanstalk"
git push origin main
```

### 3️⃣ Monitor Deployment in GitHub Actions
Check **GitHub → Actions** for the deployment status.

---



## 📘 Summary
- ✅ **Run Locally**: `mvn spring-boot:run` & test with `curl`
- ✅ **AWS Deployment**: GitHub Actions deploys the app automatically.
- ✅ **Test API**: Use `curl` to interact with the API locally or on AWS.

🚀 Now you're ready to **build, test, and deploy** your Spring Boot app! 🎉
