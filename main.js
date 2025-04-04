const express = require('express');
const app = express();

const PORT = process.env.PORT || 8000;

app.get('/', (req, res) => {
    return res.json({ message: 'Hello, I am a Node.js container V1.0' });
});

app.listen(PORT, () => console.log(`Server started on PORT: ${PORT}`));
