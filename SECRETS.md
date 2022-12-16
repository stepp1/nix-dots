## GPG and Git-Crypt

**Store the keys in a safe place.**

- **GPG key generation**
```bash
# Generate a new key
gpg --full-generate-key 
# List keys
gpg --list-secret-keys 
# Export the public key
gpg --output ../public.gpg --armor --export sfaragg@gmail.com
# Export the private key
gpg --output ../private.gpg --armor --export-secret-keys sfaragg@gmail.com
# Trust the key
gpg --edit-key # Trust level 5
```

- **Git-Crypt key generation**
```bash
# Generate a new key
git-crypt init
# Add the key to the repo
git-crypt add-gpg-user sfaragg@gmail.com
# Export the key
git-crypt export-key ../git-crypt.key
```

- **Committing + Lock and Unlock**
```bash
# Unlock before commiting
git-crypt unlock 

# Do some stuff
touch  file1 file2

# git add some files
git add file1 file2

# Lock before commiting <--- IMPORTANT
git-crypt lock 
git commit -m "..."
```