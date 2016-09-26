.class Lorg/jivesoftware/smackx/MessageEventManager$1;
.super Ljava/lang/Object;
.source "MessageEventManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/MessageEventManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/MessageEventManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/MessageEventManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/MessageEventManager$1;->this$0:Lorg/jivesoftware/smackx/MessageEventManager;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 8
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 204
    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smack/packet/Message;

    .line 206
    .local v1, "message":Lorg/jivesoftware/smack/packet/Message;
    const-string v3, "x"

    const-string v4, "jabber:x:event"

    invoke-virtual {v1, v3, v4}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/packet/MessageEvent;

    .line 207
    .local v2, "messageEvent":Lorg/jivesoftware/smackx/packet/MessageEvent;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->isMessageEventRequest()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->getEventTypes()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 222
    :cond_0
    return-void

    .line 210
    :cond_1
    iget-object v4, p0, Lorg/jivesoftware/smackx/MessageEventManager$1;->this$0:Lorg/jivesoftware/smackx/MessageEventManager;

    .line 211
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "NotificationRequested"

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    # invokes: Lorg/jivesoftware/smackx/MessageEventManager;->fireMessageEventRequestListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6, v3}, Lorg/jivesoftware/smackx/MessageEventManager;->access$0(Lorg/jivesoftware/smackx/MessageEventManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->getEventTypes()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    iget-object v4, p0, Lorg/jivesoftware/smackx/MessageEventManager$1;->this$0:Lorg/jivesoftware/smackx/MessageEventManager;

    .line 218
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v5

    .line 219
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MessageEvent;->getPacketID()Ljava/lang/String;

    move-result-object v6

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "Notification"

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    # invokes: Lorg/jivesoftware/smackx/MessageEventManager;->fireMessageEventNotificationListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6, v3}, Lorg/jivesoftware/smackx/MessageEventManager;->access$1(Lorg/jivesoftware/smackx/MessageEventManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
