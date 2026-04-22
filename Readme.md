# 🚦 Kampala Traffic Predictor - AI Warning System

A web-based AI-powered traffic prediction and management system for Kampala, Uganda.

🌐 **Live Demo:** [https://kampalatrafficaiwarningsystem.ugprice.com/](https://kampalatrafficaiwarningsystem.ugprice.com/)

📘 **Full Project Manual:** Download the `Project_Manual.pdf` included in this repository.

---

## 📥 Installation Guide (XAMPP Local Server)

Follow these step-by-step instructions to run the system on your local machine using XAMPP.

### Prerequisites

- [XAMPP](https://www.apachefriends.org/) installed on your computer
- Web browser (Chrome, Firefox, Edge, etc.)

---

### Step 1: Download and Extract the Project

1. Download the project ZIP file from this repository
2. Extract the ZIP file to your computer
3. You should see a folder named `kampala-traffic-predictor` or similar

---

### Step 2: Move Project to XAMPP

1. Open your XAMPP installation directory (usually `C:\xampp` on Windows)
2. Navigate to the `htdocs` folder
3. Copy the extracted project folder into `htdocs`
4. Rename the folder to `traffic-predictor` (or any name you prefer)

**Folder structure should look like:**
C:\xampp\htdocs\traffic-predictor
├── api
├── assets
├── config
├── database
├── includes
├── index.php
├── login.php
└── ... (other files)

text

---

### Step 3: Start XAMPP Services

1. Open **XAMPP Control Panel**
2. Click **Start** button for **Apache**
3. Click **Start** button for **MySQL**
4. Both services should show green "Running" status

---

### Step 4: Import the Database

1. Open your web browser and go to: `http://localhost/phpmyadmin`
2. Click **New** on the left sidebar to create a new database
3. Name the database: `stpaulsss_ai_warning_system`
4. Click **Create**
5. Click on the newly created database (left sidebar)
6. Click the **Import** tab at the top
7. Click **Choose File** and select the SQL file from your project folder:
   - Navigate to: `traffic-predictor/database/`
   - Select: `stpaulsss_ai_warning_system (8).sql`
8. Scroll down and click **Go** (Import button at bottom)
9. You should see a success message: "Import has been successfully finished"

---

### Step 5: Configure Database Connection

1. Open your project folder: `C:\xampp\htdocs\traffic-predictor\`
2. Navigate to the `config` folder
3. Open `database.php` with any text editor (Notepad, VS Code, etc.)
4. Update the database credentials:

```php
<?php
$host = 'localhost';
$username = 'root';        // Default XAMPP username
$password = '';            // Default XAMPP password is empty
$database = 'stpaulsss_ai_warning_system';
?>
Save the file

Step 6: Configure Google Maps API (Optional)
For the traffic map to work properly:

Open traffic_map.php in your project root folder

Find this line:

html
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY"></script>
Replace YOUR_API_KEY with your Google Maps API key

Get a free key at: Google Cloud Console

Save the file

Note: The map will still work with limited functionality without an API key.

Step 7: Access the Application
Open your web browser

Go to: http://localhost/traffic-predictor/

You will be redirected to the login page

🔑 Demo Login Credentials
Use these credentials to test the system:

Role	Email	Password
Admin	snipersystemanalysis@gmail.com	Secret@1234$$
User	john@example.com	password
Note for Localhost: Email verification is auto-disabled on XAMPP. Accounts are automatically verified upon registration.

📁 Project Structure
text
traffic-predictor/
├── api/                    # API endpoints
├── assets/                 # CSS, JavaScript files
│   ├── css/
│   └── js/
├── config/                 # Configuration files
│   └── database.php        # Database connection
├── database/               # SQL database files
│   └── stpaulsss_ai_warning_system (8).sql
├── emailphp/               # PHPMailer library for emails
├── images/                 # Image assets
├── includes/               # Reusable PHP components
├── index.php               # Entry point
├── login.php               # Login page
├── dashboard.php           # User dashboard
├── Project_Manual.pdf      # Full documentation
└── README.md               # This file
❗ Troubleshooting
"Database connection failed" error
Make sure MySQL is running in XAMPP Control Panel

Verify database name in config/database.php matches exactly: stpaulsss_ai_warning_system

Check that username is root and password is blank ''

"404 Not Found" error
Make sure the project folder is inside C:\xampp\htdocs\

Check the folder name matches the URL: http://localhost/folder-name/

Map not loading
Ensure you have an internet connection (Google Maps requires internet)

Check your Google Maps API key is valid

Try without API key first - limited functionality is fine for testing

CSS not loading / Page looks broken
Right-click on page → Inspect → Console tab

Look for any error messages

Clear browser cache: Ctrl + Shift + Delete → Clear cached images and files

Login not working with demo credentials
Make sure you imported the database correctly

Check if the admin user exists in the users table via phpMyAdmin

Verify the email and password match exactly (case-sensitive)

📞 Support
For issues or questions:

Check the Project_Manual.pdf included in this repository

Contact the system developer for more information

KAKANYERO DEOGRACIOUS +256 755 684998
NGOROK EMMANUEL MORGAN +256 0705015316
