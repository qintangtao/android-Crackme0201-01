.class public Lorg/jivesoftware/smackx/ConfigureProviderManager;
.super Ljava/lang/Object;
.source "ConfigureProviderManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureProviderManager()V
    .locals 4

    .prologue
    .line 80
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    .line 85
    .local v0, "pm":Lorg/jivesoftware/smack/provider/ProviderManager;
    const-string v1, "query"

    const-string v2, "jabber:iq:private"

    new-instance v3, Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataIQProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataIQProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    :try_start_0
    const-string v1, "query"

    const-string v2, "jabber:iq:time"

    const-string v3, "org.jivesoftware.smackx.packet.Time"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    const-string v1, "x"

    const-string v2, "jabber:x:roster"

    new-instance v3, Lorg/jivesoftware/smackx/provider/RosterExchangeProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/RosterExchangeProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v1, "x"

    const-string v2, "jabber:x:event"

    new-instance v3, Lorg/jivesoftware/smackx/provider/MessageEventProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/MessageEventProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    const-string v1, "active"

    const-string v2, "http://jabber.org/protocol/chatstates"

    new-instance v3, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string v1, "composing"

    const-string v2, "http://jabber.org/protocol/chatstates"

    new-instance v3, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    const-string v1, "paused"

    const-string v2, "http://jabber.org/protocol/chatstates"

    new-instance v3, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    const-string v1, "inactive"

    const-string v2, "http://jabber.org/protocol/chatstates"

    new-instance v3, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string v1, "gone"

    const-string v2, "http://jabber.org/protocol/chatstates"

    new-instance v3, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string v1, "html"

    const-string v2, "http://jabber.org/protocol/xhtml-im"

    new-instance v3, Lorg/jivesoftware/smackx/provider/XHTMLExtensionProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/XHTMLExtensionProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string v1, "x"

    const-string v2, "jabber:x:conference"

    new-instance v3, Lorg/jivesoftware/smackx/GroupChatInvitation$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/GroupChatInvitation$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v1, "query"

    const-string v2, "http://jabber.org/protocol/disco#items"

    new-instance v3, Lorg/jivesoftware/smackx/provider/DiscoverItemsProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/DiscoverItemsProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string v1, "query"

    const-string v2, "http://jabber.org/protocol/disco#info"

    new-instance v3, Lorg/jivesoftware/smackx/provider/DiscoverInfoProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/DiscoverInfoProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string v1, "x"

    const-string v2, "jabber:x:data"

    new-instance v3, Lorg/jivesoftware/smackx/provider/DataFormProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/DataFormProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    const-string v1, "x"

    const-string v2, "http://jabber.org/protocol/muc#user"

    new-instance v3, Lorg/jivesoftware/smackx/provider/MUCUserProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/MUCUserProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    const-string v1, "query"

    const-string v2, "http://jabber.org/protocol/muc#admin"

    new-instance v3, Lorg/jivesoftware/smackx/provider/MUCAdminProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/MUCAdminProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    const-string v1, "query"

    const-string v2, "http://jabber.org/protocol/muc#owner"

    new-instance v3, Lorg/jivesoftware/smackx/provider/MUCOwnerProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/MUCOwnerProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v1, "x"

    const-string v2, "jabber:x:delay"

    new-instance v3, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v1, "delay"

    const-string v2, "urn:xmpp:delay"

    new-instance v3, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    :try_start_1
    const-string v1, "query"

    const-string v2, "jabber:iq:version"

    const-string v3, "org.jivesoftware.smackx.packet.Version"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :goto_1
    const-string v1, "vCard"

    const-string v2, "vcard-temp"

    new-instance v3, Lorg/jivesoftware/smackx/provider/VCardProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/VCardProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v1, "offline"

    const-string v2, "http://jabber.org/protocol/offline"

    new-instance v3, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v1, "offline"

    const-string v2, "http://jabber.org/protocol/offline"

    new-instance v3, Lorg/jivesoftware/smackx/packet/OfflineMessageInfo$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/OfflineMessageInfo$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v1, "query"

    const-string v2, "jabber:iq:last"

    new-instance v3, Lorg/jivesoftware/smackx/packet/LastActivity$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/LastActivity$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    const-string v1, "query"

    const-string v2, "jabber:iq:search"

    new-instance v3, Lorg/jivesoftware/smackx/search/UserSearch$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/search/UserSearch$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    const-string v1, "sharedgroup"

    const-string v2, "http://www.jivesoftware.org/protocol/sharedgroup"

    new-instance v3, Lorg/jivesoftware/smackx/packet/SharedGroupsInfo$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/SharedGroupsInfo$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string v1, "addresses"

    const-string v2, "http://jabber.org/protocol/address"

    new-instance v3, Lorg/jivesoftware/smackx/provider/MultipleAddressesProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/MultipleAddressesProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string v1, "si"

    const-string v2, "http://jabber.org/protocol/si"

    new-instance v3, Lorg/jivesoftware/smackx/provider/StreamInitiationProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/StreamInitiationProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    const-string v1, "query"

    const-string v2, "http://jabber.org/protocol/bytestreams"

    new-instance v3, Lorg/jivesoftware/smackx/bytestreams/socks5/provider/BytestreamsProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/provider/BytestreamsProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string v1, "open"

    const-string v2, "http://jabber.org/protocol/ibb"

    new-instance v3, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/OpenIQProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/OpenIQProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    const-string v1, "data"

    const-string v2, "http://jabber.org/protocol/ibb"

    new-instance v3, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    const-string v1, "close"

    const-string v2, "http://jabber.org/protocol/ibb"

    new-instance v3, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/CloseIQProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/CloseIQProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    const-string v1, "data"

    const-string v2, "http://jabber.org/protocol/ibb"

    new-instance v3, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    const-string v1, "query"

    const-string v2, "jabber:iq:privacy"

    new-instance v3, Lorg/jivesoftware/smack/provider/PrivacyProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smack/provider/PrivacyProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    const-string v1, "headers"

    const-string v2, "http://jabber.org/protocol/shim"

    new-instance v3, Lorg/jivesoftware/smackx/provider/HeadersProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/HeadersProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    const-string v1, "header"

    const-string v2, "http://jabber.org/protocol/shim"

    new-instance v3, Lorg/jivesoftware/smackx/provider/HeaderProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/HeaderProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    const-string v1, "pubsub"

    const-string v2, "http://jabber.org/protocol/pubsub"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/PubSubProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/PubSubProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    const-string v1, "create"

    const-string v2, "http://jabber.org/protocol/pubsub"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/SimpleNodeProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/SimpleNodeProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    const-string v1, "items"

    const-string v2, "http://jabber.org/protocol/pubsub"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/ItemsProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/ItemsProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    const-string v1, "item"

    const-string v2, "http://jabber.org/protocol/pubsub"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/ItemProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/ItemProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    const-string v1, "subscriptions"

    const-string v2, "http://jabber.org/protocol/pubsub"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/SubscriptionsProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/SubscriptionsProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    const-string v1, "subscription"

    const-string v2, "http://jabber.org/protocol/pubsub"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/SubscriptionProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/SubscriptionProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    const-string v1, "affiliations"

    const-string v2, "http://jabber.org/protocol/pubsub"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/AffiliationsProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/AffiliationsProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    const-string v1, "affiliation"

    const-string v2, "http://jabber.org/protocol/pubsub"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/AffiliationProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/AffiliationProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    const-string v1, "options"

    const-string v2, "http://jabber.org/protocol/pubsub"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-string v1, "pubsub"

    const-string v2, "http://jabber.org/protocol/pubsub#owner"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/PubSubProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/PubSubProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    const-string v1, "configure"

    const-string v2, "http://jabber.org/protocol/pubsub#owner"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    const-string v1, "default"

    const-string v2, "http://jabber.org/protocol/pubsub#owner"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    const-string v1, "event"

    const-string v2, "http://jabber.org/protocol/pubsub#event"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/EventProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/EventProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-string v1, "configuration"

    const-string v2, "http://jabber.org/protocol/pubsub#event"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/ConfigEventProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/ConfigEventProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-string v1, "delete"

    const-string v2, "http://jabber.org/protocol/pubsub#event"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/SimpleNodeProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/SimpleNodeProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const-string v1, "options"

    const-string v2, "http://jabber.org/protocol/pubsub#event"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    const-string v1, "items"

    const-string v2, "http://jabber.org/protocol/pubsub#event"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/ItemsProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/ItemsProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const-string v1, "item"

    const-string v2, "http://jabber.org/protocol/pubsub#event"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/ItemProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/ItemProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    const-string v1, "retract"

    const-string v2, "http://jabber.org/protocol/pubsub#event"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/RetractEventProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/RetractEventProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    const-string v1, "purge"

    const-string v2, "http://jabber.org/protocol/pubsub#event"

    new-instance v3, Lorg/jivesoftware/smackx/pubsub/provider/SimpleNodeProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/pubsub/provider/SimpleNodeProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    const-string v1, "nick"

    const-string v2, "http://jabber.org/protocol/nick"

    new-instance v3, Lorg/jivesoftware/smackx/packet/Nick$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/Nick$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    const-string v1, "attention"

    const-string v2, "urn:xmpp:attention:0"

    new-instance v3, Lorg/jivesoftware/smackx/packet/AttentionExtension$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/AttentionExtension$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    const-string v1, "forwarded"

    const-string v2, "urn:xmpp:forward:0"

    new-instance v3, Lorg/jivesoftware/smackx/forward/Forwarded$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/forward/Forwarded$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    const-string v1, "sent"

    const-string v2, "urn:xmpp:carbons:2"

    new-instance v3, Lorg/jivesoftware/smackx/carbons/Carbon$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/carbons/Carbon$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    const-string v1, "received"

    const-string v2, "urn:xmpp:carbons:2"

    new-instance v3, Lorg/jivesoftware/smackx/carbons/Carbon$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/carbons/Carbon$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    const-string v1, "ping"

    const-string v2, "urn:xmpp:ping"

    new-instance v3, Lorg/jivesoftware/smackx/ping/provider/PingProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/ping/provider/PingProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    const-string v1, "received"

    const-string v2, "urn:xmpp:receipts"

    new-instance v3, Lorg/jivesoftware/smackx/receipts/DeliveryReceipt$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/receipts/DeliveryReceipt$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    const-string v1, "request"

    const-string v2, "urn:xmpp:receipts"

    new-instance v3, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptRequest$Provider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptRequest$Provider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    const-string v1, "c"

    const-string v2, "http://jabber.org/protocol/caps"

    new-instance v3, Lorg/jivesoftware/smackx/entitycaps/provider/CapsExtensionProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/entitycaps/provider/CapsExtensionProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    return-void

    .line 90
    :catch_0
    move-exception v1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Can\'t load class for org.jivesoftware.smackx.packet.Time"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :catch_1
    move-exception v1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Can\'t load class for org.jivesoftware.smackx.packet.Version"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
