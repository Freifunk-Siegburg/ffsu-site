GLUON_SITE_PACKAGES := \
    gluon-mesh-batman-adv-15 \
    gluon-respondd \
    gluon-neighbour-info \
    gluon-autoupdater \
    gluon-setup-mode \
    gluon-config-mode-core \
    gluon-config-mode-autoupdater \
    gluon-config-mode-hostname \
    gluon-config-mode-geo-location \
    gluon-config-mode-contact-info \
    gluon-config-mode-tunneldigger \
    gluon-ebtables-filter-multicast \
    gluon-ebtables-filter-ra-dhcp \
    gluon-luci-admin \
    gluon-luci-autoupdater \
    gluon-luci-portconfig \
    gluon-luci-private-wifi \
    gluon-luci-node-role \
    gluon-next-node \
    gluon-mesh-vpn-tunneldigger \
    gluon-tunneldigger-watchdog \
    gluon-authorized-keys \
    gluon-radvd \
    gluon-status-page \
    gluon-check-mesh \
    gluon-check-client-mesh \
    iwinfo \
    iptables \
    haveged \
    gluon-ssid-changer \
    gluon-banner \
    rsk-nightswitch \
    gluon-rsk-config \
    gluon-treatment

DEFAULT_GLUON_RELEASE := 2016.2.6-stable-2.8.1
# Allow overriding the release number from the command line

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
GLUON_PRIORITY ?= 0
GLUON_LANGS ?= en de
GLUON_REGION ?= eu
# Build ATH10K images
GLUON_ATH10K_MESH ?= 11s
