# Church Register

## Description
A Flask web app for managing church student registration and attendance. Uses SQLite (no setup required).

## Requirements
- Python 3.10+
- The packages listed in `requirements.txt`

## Setup

1. **Install dependencies:**
   ```
   pip install -r requirements.txt
   ```

2. **Run the app:**
   ```
   python3 app.py
   ```

3. **Login credentials:**
   - Admin: `admin@church.org` / `admin123`
   - Teacher: `teacher@church.org` / `teacher123`

## Features

- Register new students with parent and contact info
- Automatic class assignment based on age
- Mark weekly attendance for each student
- Request and approve student deletions (teacher/admin roles)
- Edit student details (admin only)
- View all students by class
- View attendance reports
- Secure login for admin and teacher roles

## Notes
- The database (`church_register.db`) is created automatically.
- No MySQL or external database

## Run locally (Windows & Linux)

These instructions will help contributors and maintainers run the app on both Windows and Linux.

1. Clone the repository and change into the project directory:

   ```bash
   git clone <repo-url>
   cd CCL_Register
   ```

2. Create a virtual environment (recommended default name: `myenv`).

   Linux / macOS:

   ```bash
   python3 -m venv myenv
   source myenv/bin/activate
   pip install -r requirements.txt
   ```

   Windows (PowerShell / CMD):

   ```powershell
   python -m venv myenv
   myenv\Scripts\activate
   pip install -r requirements.txt
   ```

3. Start the app (development server):

   Linux/macOS:

   ```bash
   ./run.sh
   ```

   Windows:

   ```cmd
   run.bat
   ```

   Alternatively you can run directly:

   ```bash
   python app.py
   ```

Notes:
- The provided `run.sh` and `run.bat` scripts will create the `myenv` virtual environment if it does not exist and install the pinned `requirements.txt`.
- For development the built-in Flask server is used. Do not use it for production.

## Production notes

If you deploy to a Linux server, it's common to use `gunicorn` as the WSGI server. Add `gunicorn` to your environment (e.g. `pip install gunicorn`) and use the included `Procfile`:

```
web: gunicorn app:app
```

On Windows you can use `waitress` as the WSGI server:

```powershell
pip install waitress
waitress-serve --port=8000 app:app
```

If you'd like, I can add `gunicorn` and `waitress` to `requirements.txt` for you.

## Contributing

Contributions are welcome! To contribute:

1. Fork this repository
2. Create a new branch (`git checkout -b feature-branch`)
3. Make your changes
4. Commit and push (`git commit -am 'Add new feature'`)
5. Open a pull request

**Reporting Bugs / Requesting Features**

- Open an issue on GitHub with a clear description.
- For feature requests, describe the use case and possible implementation.
- For bugs, include steps to reproduce and any error messages.

Thank you for helping improve this project!
