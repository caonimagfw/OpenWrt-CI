#!/bin/bash

if [ ! -d "./package/myapp" ];then
mkdir ./package/myapp
fi
cd ./package/myapp

echo "koolproxyR"
if [ ! -d "./koolproxyR" ];then
git clone https://github.com/tzxiaozhen88/koolproxyR.git
else
cd koolproxyR
git pull
cd ..
fi

echo "luci-app-adguardhome"
if [ ! -d "./luci-app-adguardhome" ];then
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git
else
cd luci-app-adguardhome
git pull
cd ..
fi

echo "luci-app-mentohust"
if [ ! -d "./luci-app-mentohust" ];then
git clone https://github.com/BoringCat/luci-app-mentohust.git
else
cd luci-app-mentohust
git pull
cd ..
fi

echo "luci-app-mentohust Depends"
if [ ! -d "./MentoHUST-OpenWrt-ipk" ];then
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git
else
cd MentoHUST-OpenWrt-ipk
git pull
cd ..
fi

echo "luci-theme-argon"
if [ ! -d "./luci-theme-argon" ];then
git clone https://github.com/jerrykuku/luci-theme-argon.git
else
cd luci-theme-argon
git pull
cd ..
fi

echo "luci-theme-atmaterial"
if [ ! -d "./luci-theme-atmaterial" ];then
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git
else
cd luci-theme-atmaterial
git pull
cd ..
fi

echo "luci-theme-argon-mc"
if [ ! -d "./luci-theme-argon-mc" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/lienol/luci-theme-argon-mc
else
cd luci-theme-argon-mc
svn update
cd ..
fi


echo "luci-theme-rosy"
if [ ! -d "./luci-theme-rosy" ];then
git clone https://github.com/rosywrt/luci-theme-rosy.git
else
cd luci-theme-rosy
git pull
cd ..
fi

echo "luci-theme-opentomcat"
if [ ! -d "./luci-theme-opentomcat" ];then
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git
else
cd luci-theme-opentomcat
git pull
cd ..
fi

echo "luci-theme-darkmatter"
if [ ! -d "./luci-theme-darkmatter" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/luci-theme-darkmatter
else
cd luci-theme-darkmatter
svn update
cd ..
fi

echo "luci-app-serverchan"
if [ ! -d "./luci-app-serverchan" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/luci-app-serverchan
else
cd luci-app-serverchan
svn update
cd ..
fi

echo "openwrt-mwol"
if [ ! -d "./openwrt-mwol" ];then
git clone https://github.com/Mleaf/openwrt-mwol.git
else
cd openwrt-mwol
git pull
cd ..
fi

echo "luci-app-ngrokc"
if [ ! -d "./luci-app-ngrokc" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/jsda/luci-app-ngrokc
else
cd luci-app-serverchan
svn update
cd ..
fi

echo "luci-app-ngrokc Depends"
if [ ! -d "./ngrokc" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/jsda/ngrokc
else
cd ngrokc
svn update
cd ..
fi

echo "luci-app-aliddns"
if [ ! -d "./luci-app-aliddns" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/jsda/luci-app-aliddns
else
cd luci-app-aliddns
svn update
cd ..
fi

echo "luci-app-unblockneteasemusic"
if [ ! -d "./luci-app-unblockneteasemusic" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/luci-app-unblockneteasemusic
else
cd luci-app-unblockneteasemusic
svn update
cd ..
fi


echo "luci-app-openclash"
if [ ! -d "./OpenClash" ];then
mkdir ./OpenClash
cd ./OpenClash
git init
git remote add -f origin https://github.com/vernesong/OpenClash.git
git config core.sparsecheckout true
echo "luci-app-openclash" >> .git/info/sparse-checkout
git pull origin master
git branch --set-upstream-to=origin/master master
cd ..
else
cd ./OpenClash/luci-app-openclash
git pull origin master
cd ..
cd ..
fi

# ssr-plus-Jo软件及依赖
if [ ! -d "./ssr-plus-Jo" ];then
mkdir ./ssr-plus-Jo
fi
cd ./ssr-plus-Jo
echo " "
echo "luci-app-ssr-plus-Jo"
if [ ! -d "./luci-app-ssr-plus-Jo" ];then
git clone https://github.com/Leo-Jo-My/luci-app-ssr-plus-Jo.git
cd luci-app-ssr-plus-Jo
sed -i 's/+PACKAGE_$(PKG_NAME)_INCLUDE_dnsforwarder:dnsforwarder/+PACKAGE_$(PKG_NAME)_INCLUDE_dnsforwarder:openwrt-dnsforwarder/g' ./Makefile
cd ..
else
cd luci-app-ssr-plus-Jo
git pull
sed -i 's/+PACKAGE_$(PKG_NAME)_INCLUDE_dnsforwarder:dnsforwarder/+PACKAGE_$(PKG_NAME)_INCLUDE_dnsforwarder:openwrt-dnsforwarder/g' ./Makefile
cd ..
fi

echo "#########################"
echo "#  ssr-plus-Jo Depends  #"
echo "#########################"
echo "openwrt-dnsforwarder"
if [ ! -d "./openwrt-dnsforwarder" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/jsda/openwrt-dnsforwarder
else
cd openwrt-dnsforwarder
svn update
cd ..
fi

echo "openwrt-udp2raw"
if [ ! -d "./openwrt-udp2raw" ];then
svn checkout https://github.com/Leo-Jo-My/packages2/trunk/my/openwrt-udp2raw
else
cd openwrt-udp2raw
svn update
cd ..
fi

echo "chinadns"
if [ ! -d "./chinadns" ];then
svn checkout https://github.com/Leo-Jo-My/openwrt18.06/trunk/package/my/chinadns
else
cd chinadns
svn update
cd ..
fi

echo "dnscrypt-proxy-full"
if [ ! -d "./dnscrypt-proxy-full" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/jsda/dnscrypt-proxy-full
else
cd dnscrypt-proxy-full
svn update
cd ..
fi

echo "GoQuiet"
if [ ! -d "./GoQuiet" ];then
svn checkout https://github.com/Leo-Jo-My/openwrt18.06/trunk/package/my/GoQuiet
else
cd GoQuiet
svn update
cd ..
fi

echo "openwrt-simple-obfs"
if [ ! -d "./openwrt-simple-obfs" ];then
svn checkout https://github.com/Leo-Jo-My/openwrt18.06/trunk/package/my/openwrt-simple-obfs
else
cd openwrt-simple-obfs
svn update
cd ..
fi

echo "openwrt-udp2raw-speeder"
if [ ! -d "./openwrt-udp2raw-speeder" ];then
svn checkout https://github.com/Leo-Jo-My/openwrt18.06/trunk/package/my/openwrt-udp2raw-speeder
else
cd openwrt-udp2raw-speeder
svn update
cd ..
fi

echo "speederv2-tunnel"
if [ ! -d "./speederv2-tunnel" ];then
svn checkout https://github.com/Leo-Jo-My/openwrt18.06/trunk/package/my/speederv2-tunnel
else
cd speederv2-tunnel
svn update
cd ..
fi

# 返回到myapp文件夹
cd ..

# passwall软件及依赖
if [ ! -d "./passwall" ];then
mkdir ./passwall
fi
cd ./passwall
echo " "
echo "luci-app-passwall"
if [ ! -d "./luci-app-passwall" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-passwall
else
cd luci-app-passwall
svn update
cd ..
fi

echo "######################"
echo "#  passwall Depends  #"
echo "######################"
echo "tcping"
if [ ! -d "./tcping" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/package/tcping
else
cd tcping
svn update
cd ..
fi
echo "chinadns-ng"
if [ ! -d "./chinadns-ng" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/package/chinadns-ng
else
cd chinadns-ng
svn update
cd ..
fi
echo "dns2socks"
if [ ! -d "./dns2socks" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/package/dns2socks
else
cd dns2socks
svn update
cd ..
fi
echo "brook"
if [ ! -d "./brook" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/package/brook
else
cd brook
svn update
cd ..
fi

echo "v2ray-plugin"
if [ ! -d "./v2ray-plugin" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/package/v2ray-plugin
else
cd v2ray-plugin
svn update
cd ..
fi

# 返回到myapp文件夹
cd ..

pwd




