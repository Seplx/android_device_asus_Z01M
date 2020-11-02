# W.I.P.

# Device Tree for ASUS Zenfone 4 Selfie Pro (ZD552KL)

Testing repo for the Z01M Device Tree

Building for MSM8953 Models Only.

The ZenFone 4 Selfie Pro (codenamed "ZD552KL"/"Z01M"/"Phoenix") is a mid-range smartphone from ASUS. It was released on October 2017.

Feature   | Specification
-------:|:-------------------------
CPU     | Octa-core 2.0 GHz Cortex-A53
Chipset | Qualcomm MSM8953 Snapdragon 625
GPU     | Adreno 506
Memory  | 3/4 GB RAM
Shipped Android Version | 7.1.1
Storage | 64 GB
MicroSD | Up to 256 GB
Battery | Li-Ion 3000mAh battery
Display | 1080 x 1920 pixels, 5.5 inches (~401 ppi pixel density)
Camera Back | IMX351 16 MP, 26mm (wide), dual pixel PDAF, 4K@30fps, 1080p@30/60fps, 720p@120fps
Camera Front |2x IMX362 12 MP, f/1.8, 25mm (wide), 1/2.55", 1.4µm8 MP, 12mm, LED flash, panorama, HDR, 4K@30fps


## GPLv3 Requirements

Copies of the original software MUST be distributed with the software (This is done automatically if you fork this repository or include the unchanged source code as the first commit with git.

Instructions to obtain copies MUST be distributed with the software.

The original copyright must be retained.

# How to build
### Follow LineageOS setup instructions [here](https://wiki.lineageos.org/devices/i9305/build)
Skip everything after "Initialize the LineageOS source repository".

# Download the LineageOS source

#### initialize a shallow clone instead of a full one
    cd ~/android/lineage
    repo init -u https://github.com/LineageOS/android.git -b cm-14.1 --depth 1

#### sync up
    repo sync

# Getting the device sources

### Download the device tree and kernel
Make sure that you are inside the LineageOS source code root.

#### Clone the device tree, kernel and vendor
    git clone https://github.com/2003Frost/android_device_asus_Z01M.git -b cm-14.1 --depth 1 device/asus/Z01M_Kernel
    git clone https://github.com/2003Frost/android_kernel_asus_Z01M.git --depth 1 kernel/asus/Z01M

# Prepare the build environment
    source build/envsetup.sh

#### Select one of these build variants
    lineage_Z01M-userdebug
    lineage_Z01M-user
    lineage_Z01M-eng

If you don't know which one to pick, [see](https://source.android.com/setup/build/building#choose-a-target)
I'm choosing the userdebug one so I do.

    lunch lineage_Z01M-userdebug

#### And build
    brunch

You can also use the -j option (eg. -j1 or -j4) to specify how much parallel tasks you want to use.
If you don't provide a -j argument, the build system automatically selects a parallel task count that it thinks is optimal for your system.

So an example of that looks like.

    brunch -j3

### The build should be located somewhere in out/target/product/Z01M/ in The LineageOS code root.

#### The build zip can be installed with TWRP
