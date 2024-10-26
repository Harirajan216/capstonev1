import React from 'react';
import './App.css';
import ReactLogo from './ReactLogo'; // Import the ReactLogo component

function App() {
    return (
        <div className="App">
            <header className="App-header">
                <ReactLogo /> {/* Use the React logo component */}
                <h1>Login Page</h1>
                <form className="login-form">
                    <input type="text" placeholder="Username" required />
                    <input type="password" placeholder="Password" required />
                    <button type="submit">Login</button>
                </form>
            </header>
        </div>
    );
}

export default App;
