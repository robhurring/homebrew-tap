cask "leaf" do
  version "0.1.1"
  sha256 "427b708bd3ca6b767658e3ef93a1e9f8ca045863d1c15ec7a4b8820b0bdcb172"

  url "https://github.com/robhurring/leaf/releases/download/v#{version}/leaf-#{version}-macos-universal.zip"
  name "leaf"
  desc "Markdown reader for folders of notes and docs"
  homepage "https://github.com/robhurring/leaf"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "leaf reader.app"
  binary "#{appdir}/leaf reader.app/Contents/MacOS/leaf"

  zap trash: "~/.config/leaf"
end
