GLUON_SITE_PACKAGES := \
    gluon-alfred \
    gluon-autoupdater \
    gluon-config-mode-autoupdater \
    gluon-config-mode-contact-info \
    gluon-config-mode-core \
    gluon-config-mode-geo-location \
    gluon-config-mode-hostname \
    gluon-banner \
    gluon-check-client-mesh \
    gluon-check-mesh \
    gluon-config-mode-tunneldigger \
    gluon-ebtables-filter-multicast \
    gluon-ebtables-filter-ra-dhcp \
    gluon-ebtables-source-filter \
    gluon-web-admin \
    gluon-web-autoupdater \
    gluon-web-network \
    gluon-web-private-wifi \
    gluon-web-wifi-config \
    gluon-mesh-batman-adv-15 \
    gluon-mesh-vpn-tunneldigger \
    gluon-neighbour-info \
    gluon-next-node \
    gluon-radvd \
    gluon-respondd \
    gluon-setup-mode \
    gluon-ssid-changer \
    gluon-status-page \
    gluon-tunneldigger-watchdog \
    haveged \
    iptables \
    iwinfo \
    rsk-nightswitch \
    gluon-rsk-config \
    gluon-treatment


DEFAULT_GLUON_RELEASE := 2017.1-stable-2.9
# Allow overriding the release number from the command line

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
GLUON_PRIORITY ?= 0
GLUON_LANGS ?= en de
GLUON_REGION ?= eu
# Build ATH10K images
GLUON_ATH10K_MESH ?= 11s
