.class Lorg/jivesoftware/smackx/Gateway$GatewayPresenceListener;
.super Ljava/lang/Object;
.source "Gateway.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/Gateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GatewayPresenceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/Gateway;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/Gateway;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lorg/jivesoftware/smackx/Gateway$GatewayPresenceListener;->this$0:Lorg/jivesoftware/smackx/Gateway;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/Gateway;Lorg/jivesoftware/smackx/Gateway$GatewayPresenceListener;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/Gateway$GatewayPresenceListener;-><init>(Lorg/jivesoftware/smackx/Gateway;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 318
    instance-of v2, p1, Lorg/jivesoftware/smack/packet/Presence;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 319
    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    .line 320
    .local v0, "presence":Lorg/jivesoftware/smack/packet/Presence;
    iget-object v2, p0, Lorg/jivesoftware/smackx/Gateway$GatewayPresenceListener;->this$0:Lorg/jivesoftware/smackx/Gateway;

    # getter for: Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;
    invoke-static {v2}, Lorg/jivesoftware/smackx/Gateway;->access$0(Lorg/jivesoftware/smackx/Gateway;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lorg/jivesoftware/smackx/Gateway$GatewayPresenceListener;->this$0:Lorg/jivesoftware/smackx/Gateway;

    # getter for: Lorg/jivesoftware/smackx/Gateway;->roster:Lorg/jivesoftware/smack/Roster;
    invoke-static {v2}, Lorg/jivesoftware/smackx/Gateway;->access$1(Lorg/jivesoftware/smackx/Gateway;)Lorg/jivesoftware/smack/Roster;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/Roster;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/Presence$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 324
    .local v1, "response":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lorg/jivesoftware/smackx/Gateway$GatewayPresenceListener;->this$0:Lorg/jivesoftware/smackx/Gateway;

    # getter for: Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v2}, Lorg/jivesoftware/smackx/Gateway;->access$2(Lorg/jivesoftware/smackx/Gateway;)Lorg/jivesoftware/smack/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lorg/jivesoftware/smackx/Gateway$GatewayPresenceListener;->this$0:Lorg/jivesoftware/smackx/Gateway;

    # getter for: Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v2}, Lorg/jivesoftware/smackx/Gateway;->access$2(Lorg/jivesoftware/smackx/Gateway;)Lorg/jivesoftware/smack/Connection;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 330
    .end local v0    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    .end local v1    # "response":Lorg/jivesoftware/smack/packet/Presence;
    :cond_0
    return-void
.end method
