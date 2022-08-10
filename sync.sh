GITHUB_TOKEN=
cd ..
pwd
echo "Initializing the PARANOID ANDROID MANIFEST"
repo init --depth=1 --no-repo-verify -u https://github.com/AOSPA/manifest -b sapphire -g default,-mips,-darwin,-notdefault
echo "Cloning local manifest"
git clone https://github.com/AOSPA-X00TD/local_manifests --depth 1 -b main .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j16
git clone https://wanderlusttt2:$GITHUB_TOKEN@github.com/AOSPA-X00TD/android_device_asus_X00TD -b sapphire device/asus/X00TD
git clone https://wanderlusttt2:$GITHUB_TOKEN@github.com/AOSPA-X00TD/android_vendor_asus_X00TD -b sapphire vendor/asus/X00TD
