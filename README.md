Conecta is a simple Customer Relationship Management (CRM) application built with Ruby on Rails 7.2.2.1.  
It allows users to create, view, edit, and delete customer records, as well as search and filter customer lists.

This is my personal learning project, developed as part of my journey to become a Ruby on Rails developer.

---

## ✨ Features

- Dashboard overview
- Customer CRUD (Create, Read, Update, Delete)
- Customer search functionality
- Status filtering
- Basic authentication (in progress)
- Clear and simple UI

---

## 🛠️ Technologies Used

- Ruby 3.3.7
- Ruby on Rails 7.2.2.1
- PostgreSQL
- Hotwire (Turbo/Stimulus) (planned)
- TailwindCSS (planned)

---

## 🚧 Project Status

This is a Minimum Viable Product (MVP) version.  
Planned improvements include:

- Authentication with Devise
- Deployment to Fly.io
- UI/UX improvements with TailwindCSS
- Adding validations and error handling
- Adding user accounts and permissions

---

## 📷 Demo

👉 [View the repository on GitHub](https://github.com/lukaszmad/conecta)

(Deployment planned soon!)

---

## 📋 Setup Instructions

To run this project locally:

```bash
git clone https://github.com/lukaszmad/conecta.git
cd conecta
bundle install
rails db:create db:migrate
rails server