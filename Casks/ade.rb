cask "ade" do
  version "0.9.0"

  on_arm do
    url "https://github.com/better-ade/ade-terminal/releases/download/v#{version}/Better.Terminal_#{version}_aarch64.dmg"
    sha256 "e6db6400929263635c894c4a6478cd7743fb6e519da3e50bbd3fdee2789667a0"
  end

  on_intel do
    url "https://github.com/better-ade/ade-terminal/releases/download/v#{version}/Better.Terminal_#{version}_x64.dmg"
    sha256 "1441ef62339a6ae10620beb757d80af862332bc1f4f623b6bbfc549adca3afb9"
  end

  name "ADE"
  desc "Agentic Development Environment — a modern terminal built for AI development"
  homepage "https://github.com/better-ade/ade-terminal"

  app "Better Terminal.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Better Terminal.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.betterterminal.dev.plist",
    "~/Library/Saved Application State/com.betterterminal.dev.savedState",
  ]
end
