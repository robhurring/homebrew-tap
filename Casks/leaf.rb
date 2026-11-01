cask "leaf" do
  version "0.1.0"
  sha256 "d0612ad003d89ec9094f1cad843ea41c581a8a7246ec76e0478dfd8925df95c1"

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
