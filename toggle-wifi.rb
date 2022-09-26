class ToggleWifi < Formula

  desc "Toggle Wifi On/Off if ethernet is dis-/connected."
  homepage ""
  url "https://github.com/mietzen/toggle-wifi/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "bf3fe5df4f2e49e95e523b42162efb6b59d4d6f11c16d6f544f8026bc179657b"
  license "MIT"

  depends_on "python@3.10"
  
  def install
    inreplace "service.plist", "$TOGGLE-WIFI-PATH$", "#{HOMEBREW_PREFIX}/bin/toggle-wifi"
    bin.install "toggle-wifi" 
    prefix.install "toggle-wifi.py"
    prefix.install Dir["notifier"]    
    prefix.install "README.md"
    prefix.install "LICENSE"
    prefix.install "service.plist"
    prefix.install_symlink "service.plist" => "#{plist_name}.plist"
  end

  test do
    system "false"
  end
end
