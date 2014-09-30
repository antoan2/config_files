sessions=$(tmux list-sessions)
if [[ $sessions = *Reminiz* ]]
then
      echo "has value"
fi
