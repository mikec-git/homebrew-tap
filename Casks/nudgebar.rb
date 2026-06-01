cask "nudgebar" do
  version "0.1.0"
  sha256 "a3f55d106d1089f5f8c042adf903bdc2b175e95040c6d6b137d5ec2df99d229c"

  url "https://github.com/mikec-git/nudgebar/releases/download/v#{version}/Nudgebar.zip"
  name "Nudgebar"
  desc "High-visibility menu-bar calendar reminders for macOS"
  homepage "https://github.com/mikec-git/nudgebar"

  depends_on macos: ">= :ventura"

  app "Nudgebar.app"

  # The app is ad-hoc signed (not yet notarized): on first launch, right-click ->
  # Open, or run `xattr -dr com.apple.quarantine "$(brew --caskroom)/nudgebar/#{version}/Nudgebar.app"`.

  zap trash: [
    "~/Library/Application Support/Nudgebar",
    "~/Library/Preferences/com.local.Nudgebar.plist",
  ]
end
