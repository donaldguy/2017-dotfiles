function toggle_desktop() {
  shown=$(defaults read com.apple.finder CreateDesktop)
  if [ $shown = "true" ]; then
    defaults write com.apple.finder CreateDesktop 'false'
  else
    defaults write com.apple.finder CreateDesktop 'true'
  fi
  killall Finder
}
