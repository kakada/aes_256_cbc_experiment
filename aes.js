const crypto = require("crypto");
const key = ENV["SECRET_KEY"];
const iv = crypto.randomBytes(16);

const message = "This is the message to be encrypted";
const cipher = crypto.createCipheriv("AES-256-CBC", key, iv);

const encrypted = cipher.update(message) + cipher.final();
const encryptedString = encrypted.toString("hex");

console.log("Key is: " + key);
console.log("The iv is: " + iv);
console.log("cipher.final is: " + ciper.final);
console.log("The encrypted message is: " + encryptedString);
