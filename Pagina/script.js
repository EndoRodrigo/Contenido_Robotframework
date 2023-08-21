document.addEventListener('DOMContentLoaded', function () {
    const loginForm = document.getElementById('login-form');
    const usernameInput = document.getElementById('username');
    const passwordInput = document.getElementById('password');
    const usernameError = document.getElementById('username-error');
    const passwordError = document.getElementById('password-error');
    const loginError = document.getElementById('login-error');

    loginForm.addEventListener('submit', function (event) {
        event.preventDefault();

        // Reset error messages
        usernameError.textContent = '';
        passwordError.textContent = '';
        loginError.textContent = '';

        // Simulated user data (username and password)
        const users = [
            { username: 'user', password: 'password1' },
            { username: 'user2', password: 'password2' },
            // Add more users as needed
        ];

        const username = usernameInput.value.trim();
        const password = passwordInput.value.trim();

        if (username === '') {
            usernameError.textContent = 'Por favor, ingresa un usuario.';
            return;
        }

        if (!/^[a-zA-Z]+$/.test(username)) {
            usernameError.textContent = 'El usuario solo debe contener letras.';
            return;
        }

        if (password === '') {
            passwordError.textContent = 'Por favor, ingresa una contraseña.';
            return;
        }

        if (/[^a-zA-Z0-9]/.test(password)) {
            passwordError.textContent = 'La contraseña no puede contener caracteres especiales.';
            return;
        }

        // Aquí puedes agregar más validaciones, como verificar el usuario en una base de datos simulada.
        const user = users.find(u => u.username === username && u.password === password);
        if (user) {
            window.location.href = 'Principal.html';
        } else {
            loginError.textContent = 'Usuario y/o contraseña incorrectos.';
        }

    });
});
