// Variables to store local and remote video elements
const localVideo = document.getElementById('user-1');
const remoteVideo = document.getElementById('user-2');

// Configuration for ICE servers
const iceServers = [
    { urls: 'stun:stun.l.google.com:19302' }, // Google's public STUN server
];

// Configuration for RTCPeerConnection
const peerConnectionConfig = {
    iceServers: iceServers,
};

// Create RTCPeerConnection
let peerConnection;

async function init() {
    try {
        // Get local stream (video and audio)
        const stream = await navigator.mediaDevices.getUserMedia({ video: true, audio: true });
        // Display local video stream
        localVideo.srcObject = stream;

        // Create peer connection
        peerConnection = new RTCPeerConnection(peerConnectionConfig);

        // Add local stream to peer connection
        stream.getTracks().forEach(track => peerConnection.addTrack(track, stream));

        // Handle incoming remote streams
        peerConnection.ontrack = event => {
            // Check if the remoteVideo already has a source
            if (remoteVideo.srcObject) return;

            // Display remote video stream
            remoteVideo.srcObject = event.streams[0];
        };

        console.log('Peer connection created successfully.');
    } catch (error) {
        console.error('Error accessing media devices:', error.text);
    }
}

// Call the init function to start initialization
init();
