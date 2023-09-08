#!/usr/local/bin/ruby

require 'openssl'

def encrypt(message, key)
  cipher = OpenSSL::Cipher.new('AES-256-CBC')
  cipher.encrypt
  cipher.key = key

  encrypted = cipher.update(message) + cipher.final

  return encrypted
end

def decrypt(encrypted, key)
  cipher = OpenSSL::Cipher.new('AES-256-CBC')
  cipher.decrypt
  cipher.key = key

  decrypted = cipher.update(encrypted) + cipher.final

  return decrypted
end

# encrypted message from encrypted method in ruby or javascript
encrypted_message = "84b0a0512a1676782b7d6349e077b763"

key = ENV["SECRET_KEY"]

puts "key is: #{key}"

decrypted = decrypt(encrypted_message, key)


puts "The encrypted message is: #{encrypted_message}"
puts "The decrypted message is: #{decrypted}"
