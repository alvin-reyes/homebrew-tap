cask "ade" do
  version "0.3.0"

  on_arm do
    url "https://github.com/alvin-reyes/better-agentic-ide/releases/download/v#{version}/Better.Terminal_#{version}_aarch64.dmg"
    sha256 "145492fffbffa1736fc91e5182fd620ba394df4a2211cb8e8e853830d2e2fef9"
  end

  on_intel do
    url "https://github.com/alvin-reyes/better-agentic-ide/releases/download/v#{version}/Better.Terminal_#{version}_x64.dmg"
    sha256 "d86e0c52e9bb5b43c32711a6a035ac8bbdc1775fa6c6abde54ce2af909ed523c"
  end

  name "ADE"
  desc "Agentic Development Environment — a modern terminal built for AI development"
  homepage "https://github.com/alvin-reyes/better-agentic-ide"

  app "Better Terminal.app"

  zap trash: [
    "~/Library/Preferences/com.betterterminal.dev.plist",
    "~/Library/Saved Application State/com.betterterminal.dev.savedState",
  ]
end
