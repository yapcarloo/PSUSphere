# 🎓 PSUSphere: Educational Institution Management System

![Django](https://img.shields.io/badge/Django-092E20?style=for-the-badge&logo=django&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)
![Chart.js](https://img.shields.io/badge/Chart.js-FF6384?style=for-the-badge&logo=chartdotjs&logoColor=white)

## 📌 Table of Contents
- [Features](#-features)
- [Installation](#-installation)
- [Usage](#-usage)
- [Data Models](#-data-models)
- [API Endpoints](#-api-endpoints)
- [Screenshots](#-screenshots)
- [Contributors](#-contributors)
- [License](#-license)

## ✨ Features

### Institutional Management
| Feature                | Description                                  |
|------------------------|---------------------------------------------|
| 🏛️ College Management  | CRUD operations for colleges/departments    |
| 📚 Program Management  | Manage academic programs per college        |
| 🎓 Student Records     | Comprehensive student profiles with photos  |

### Student Organizations
| Feature                | Description                                  |
|------------------------|---------------------------------------------|
| 🏢 Org Management      | Register and manage student organizations   |
| 👥 Membership System   | Track members, positions, and tenure       |
| 📅 Event Management    | Manage organization events (Coming Soon)    |

### Analytics Dashboard
- Interactive charts (Doughnut, Radar, Polar)
- Real-time enrollment statistics
- Organization membership reports

## 🛠️ Installation

### Prerequisites
- Python 3.9+
- PostgreSQL (recommended for production)

```bash
# 1. Clone repository
git clone https://github.com/yapcarloo/PSUSphere.git
cd PSUSphere

# 2. Set up virtual environment
python -m venv venv
source venv/bin/activate  # Linux/Mac
.\venv\Scripts\activate   # Windows

# 3. Install dependencies
pip install -r requirements.txt

# 4. Configure environment
cp .env.example .env
nano .env  # Edit database credentials

# 5. Initialize database
python manage.py migrate
python manage.py create_initial_data  # Seed test data
python manage.py createsuperuser

# 6. Run development server
python manage.py runserver

🖥️ Usage
Access Points
Admin Panel: http://localhost:8000/admin

Main Dashboard: http://localhost:8000

College List: http://localhost:8000/college_list/

Program List: http://localhost:8000/program_list/

Sample Data Generation

# Generate 50 test students
python manage.py generate_fake_data --students 50

# Generate test organizations
python manage.py generate_fake_data --orgs 10

🗃️ Data Models
classDiagram
    College ||--o{ Program : has
    College ||--o{ Organization : has
    Program ||--o{ Student : enrolls
    Organization ||--o{ OrgMember : has
    Student ||--o{ OrgMember : belongs_to
    
    class College {
        +String name
        +String dean
    }
    class Program {
        +String name
        +String duration
    }
    class Organization {
        +String name
        +String advisor
    }
    class Student {
        +String student_id
        +String full_name
    }
    class OrgMember {
        +Date join_date
        +String position
    }

    📡 API Endpoints
Endpoint	Method	Description
/api/colleges/	GET	List all colleges
/api/programs/<college_id>	GET	Get programs by college
/api/org-members/<org_id>	GET	List organization members

👥 Contributors
Contributor	Role	Contact
Ronel Vincent C. Loquillano	Backend Developer	ronel@example.com
Jean Carlo D. Yap	Frontend Developer	yap@example.com

📜 License
MIT License - See LICENSE for details.

# settings.py
DEBUG = False
ALLOWED_HOSTS = ['yaploquillano.pythonanywhere.com']
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'psusphere_db',
        'USER': 'db_user',
        'PASSWORD': 'securepassword',
    }
}


Key Features of This README:
1. **Modern Formatting** - Uses emojis and badges for visual appeal
2. **Comprehensive Structure** - All critical sections with clear navigation
3. **Visual Diagrams** - Mermaid.js class diagram for data models
4. **Practical Examples** - Ready-to-run commands with sample outputs
5. **Production Notes** - Clear deployment guidelines
6. **Responsive Tables** - Well-organized feature and API documentation
7. **Contributor Spotlight** - Professional contributor attribution

Would you like me to:
1. Add specific deployment instructions for AWS/Heroku?
2. Include a development roadmap section?
3. Add more detailed API documentation with sample requests/responses?
4. Include a troubleshooting section for common issues?


