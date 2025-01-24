document.getElementById('loginForm').addEventListener('submit', async (e) => {
    e.preventDefault();

    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;

    const response = await fetch('/login', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ email, password }),
    });

    const result = await response.json();

    if (response.status === 200) {
        alert(result.message);
        // Redirect to dashboard or next page
        window.location.href = '/dashboard';
    } else {
        document.getElementById('error-message').style.display = 'block';
    }
});
