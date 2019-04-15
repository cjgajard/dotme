git config --global user.name 'Carlos Gajardo'
echo -n 'Insert your email: '; read email
git config --global user.email $email
git config --global alias.ap 'add --patch'
git config --global alias.co 'checkout'
git config --global alias.cob 'checkout -b'
git config --global alias.cof 'checkout --'
git config --global alias.logx 'log --graph --oneline'
git config --global alias.st 'status'
ln -s $CARLSH/git/gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore
