.class Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;
.super Ljava/lang/Object;
.source "MultiUserChat.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvitationsMonitor"
.end annotation


# static fields
.field private static final monitors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private invitationFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private invitationPacketListener:Lorg/jivesoftware/smack/PacketListener;

.field private final invitationsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/muc/InvitationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2583
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 2582
    sput-object v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->monitors:Ljava/util/Map;

    .line 2583
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 2619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    .line 2620
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->connection:Lorg/jivesoftware/smack/Connection;

    .line 2621
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 0

    .prologue
    .line 2671
    invoke-direct/range {p0 .. p5}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->fireInvitationListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message;)V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 2738
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationPacketListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 2739
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/Connection;->removeConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 2740
    return-void
.end method

.method private fireInvitationListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 10
    .param p1, "room"    # Ljava/lang/String;
    .param p2, "inviter"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .prologue
    .line 2674
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    monitor-enter v2

    .line 2675
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [Lorg/jivesoftware/smackx/muc/InvitationListener;

    .line 2676
    .local v7, "listeners":[Lorg/jivesoftware/smackx/muc/InvitationListener;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2674
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2678
    array-length v9, v7

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-lt v8, v9, :cond_0

    .line 2681
    return-void

    .line 2674
    .end local v7    # "listeners":[Lorg/jivesoftware/smackx/muc/InvitationListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2678
    .restart local v7    # "listeners":[Lorg/jivesoftware/smackx/muc/InvitationListener;
    :cond_0
    aget-object v0, v7, v8

    .line 2679
    .local v0, "listener":Lorg/jivesoftware/smackx/muc/InvitationListener;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->connection:Lorg/jivesoftware/smack/Connection;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/jivesoftware/smackx/muc/InvitationListener;->invitationReceived(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message;)V

    .line 2678
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_0
.end method

.method public static getInvitationsMonitor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;
    .locals 4
    .param p0, "conn"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 2599
    sget-object v2, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->monitors:Ljava/util/Map;

    monitor-enter v2

    .line 2600
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->monitors:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->monitors:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2604
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 2605
    .local v0, "ivm":Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;
    sget-object v1, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->monitors:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2606
    monitor-exit v2

    move-object v1, v0

    .line 2609
    .end local v0    # "ivm":Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;
    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->monitors:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;

    monitor-exit v2

    goto :goto_0

    .line 2599
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 2712
    .line 2713
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    const-string v1, "x"

    const-string v2, "http://jabber.org/protocol/muc#user"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 2714
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor$1;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationPacketListener:Lorg/jivesoftware/smack/PacketListener;

    .line 2728
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationPacketListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 2731
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 2732
    return-void
.end method


# virtual methods
.method public addInvitationListener(Lorg/jivesoftware/smackx/muc/InvitationListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/jivesoftware/smackx/muc/InvitationListener;

    .prologue
    .line 2633
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    monitor-enter v1

    .line 2636
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2637
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->init()V

    .line 2639
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2640
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2633
    :cond_1
    monitor-exit v1

    .line 2643
    return-void

    .line 2633
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectionClosed()V
    .locals 0

    .prologue
    .line 2684
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->cancel()V

    .line 2685
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2689
    return-void
.end method

.method public reconnectingIn(I)V
    .locals 0
    .param p1, "seconds"    # I

    .prologue
    .line 2693
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2701
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 0

    .prologue
    .line 2697
    return-void
.end method

.method public removeInvitationListener(Lorg/jivesoftware/smackx/muc/InvitationListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/jivesoftware/smackx/muc/InvitationListener;

    .prologue
    .line 2656
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    monitor-enter v1

    .line 2657
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2658
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2662
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2663
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->cancel()V

    .line 2656
    :cond_1
    monitor-exit v1

    .line 2666
    return-void

    .line 2656
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
