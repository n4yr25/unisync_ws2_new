// server.js
const express = require('express');
const http = require('http');
const socketIo = require('socket.io');

const PORT = process.env.PORT || 3000;

const app = express();
const server = http.createServer(app);
const io = socketIo(server);

io.on('connection', socket => {
    console.log('User connected: ', socket.id);

    // Handle signaling messages
    socket.on('offer', (offer, roomName) => {
        socket.to(roomName).emit('offer', offer);
    });

    socket.on('answer', (answer, roomName) => {
        socket.to(roomName).emit('answer', answer);
    });

    socket.on('iceCandidate', (candidate, roomName) => {
        socket.to(roomName).emit('iceCandidate', candidate);
    });

    // Handle room joining
    socket.on('joinRoom', (roomName) => {
        socket.join(roomName);
        console.log(`User ${socket.id} joined room ${roomName}`);
    });

    // Handle user disconnection
    socket.on('disconnect', () => {
        console.log('User disconnected: ', socket.id);
    });
});

server.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
