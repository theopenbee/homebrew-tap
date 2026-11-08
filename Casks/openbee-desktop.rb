cask "openbee-desktop" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1"
  sha256 arm:   "e0c92e1134734370d0451bd40c9792928a48bb19af1276c05c242c4e56857495",
         intel: "962496b77547c4763c771852a4fadfccb94be4bf7f559bf819a1413be4c9772a"

  url "https://github.com/theopenbee/openbee/releases/download/v1.0.1/openbee-desktop-1.0.1-darwin-#{arch}.zip"
  name "OpenBee"
  desc "Desktop app with the OpenBee server built in"
  homepage "https://github.com/theopenbee/openbee"

  livecheck do
    skip "Auto-generated on release."
  end

  depends_on :macos

  app "OpenBee.app"

  zap trash: [
    "~/Library/Application Support/OpenBee",
    "~/Library/Caches/OpenBee",
    "~/Library/Logs/OpenBee",
  ]

  caveats <<~EOS
    OpenBee is not notarized yet. If macOS refuses to open it, run:
      xattr -dr com.apple.quarantine "#{appdir}/OpenBee.app"
  EOS
end
