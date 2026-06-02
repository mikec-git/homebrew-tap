cask "nudgebar" do
  version "0.1.1"
  sha256 "2f818cd3c8e82139a02bb35354f512f6c9449742ff1d0a7ab2e970954bd5becf"

  url "https://github.com/mikec-git/nudgebar/releases/download/v#{version}/Nudgebar.zip"
  name "Nudgebar"
  desc "High-visibility menu-bar calendar reminders for macOS"
  homepage "https://github.com/mikec-git/nudgebar"

  depends_on macos: ">= :ventura"

  app "Nudgebar.app"

  # The app is ad-hoc signed (not yet notarized). Strip the quarantine flag Homebrew
  # sets so it launches without a Gatekeeper "right-click -> Open". Remove this once
  # the app is notarized with a Developer ID.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Nudgebar.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Nudgebar",
    "~/Library/Preferences/com.local.Nudgebar.plist",
  ]
end
