.class public Lorg/jivesoftware/smack/ChatManager;
.super Ljava/lang/Object;
.source "ChatManager.java"


# static fields
.field private static id:J

.field private static prefix:Ljava/lang/String;


# instance fields
.field private baseJidChats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/Chat;",
            ">;"
        }
    .end annotation
.end field

.field private chatManagerListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smack/ChatManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private connection:Lorg/jivesoftware/smack/Connection;

.field private interceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketInterceptor;",
            "Lorg/jivesoftware/smack/filter/PacketFilter;",
            ">;"
        }
    .end annotation
.end field

.field private jidChats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/Chat;",
            ">;"
        }
    .end annotation
.end field

.field private threadChats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/Chat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/ChatManager;->prefix:Ljava/lang/String;

    .line 70
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/jivesoftware/smack/ChatManager;->id:J

    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 4
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v1, Lorg/jivesoftware/smack/util/collections/ReferenceMap;

    .line 76
    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/util/collections/ReferenceMap;-><init>(II)V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/ChatManager;->threadChats:Ljava/util/Map;

    .line 81
    new-instance v1, Lorg/jivesoftware/smack/util/collections/ReferenceMap;

    .line 82
    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/util/collections/ReferenceMap;-><init>(II)V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/ChatManager;->jidChats:Ljava/util/Map;

    .line 87
    new-instance v1, Lorg/jivesoftware/smack/util/collections/ReferenceMap;

    .line 88
    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/util/collections/ReferenceMap;-><init>(II)V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/ChatManager;->baseJidChats:Ljava/util/Map;

    .line 91
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lorg/jivesoftware/smack/ChatManager;->chatManagerListeners:Ljava/util/Set;

    .line 94
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lorg/jivesoftware/smack/ChatManager;->interceptors:Ljava/util/Map;

    .line 99
    iput-object p1, p0, Lorg/jivesoftware/smack/ChatManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 101
    new-instance v0, Lorg/jivesoftware/smack/ChatManager$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/ChatManager$1;-><init>(Lorg/jivesoftware/smack/ChatManager;)V

    .line 113
    .local v0, "filter":Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v1, Lorg/jivesoftware/smack/ChatManager$2;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/ChatManager$2;-><init>(Lorg/jivesoftware/smack/ChatManager;)V

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 134
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smack/ChatManager;Ljava/lang/String;)Lorg/jivesoftware/smack/Chat;
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/ChatManager;->getUserChat(Ljava/lang/String;)Lorg/jivesoftware/smack/Chat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smack/ChatManager;Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smack/Chat;
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/ChatManager;->createChat(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smack/Chat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smack/ChatManager;Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/ChatManager;->deliverMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V

    return-void
.end method

.method private createChat(Ljava/lang/String;Ljava/lang/String;Z)Lorg/jivesoftware/smack/Chat;
    .locals 4
    .param p1, "userJID"    # Ljava/lang/String;
    .param p2, "threadID"    # Ljava/lang/String;
    .param p3, "createdLocally"    # Z

    .prologue
    .line 174
    new-instance v0, Lorg/jivesoftware/smack/Chat;

    invoke-direct {v0, p0, p1, p2}, Lorg/jivesoftware/smack/Chat;-><init>(Lorg/jivesoftware/smack/ChatManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v0, "chat":Lorg/jivesoftware/smack/Chat;
    iget-object v2, p0, Lorg/jivesoftware/smack/ChatManager;->threadChats:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v2, p0, Lorg/jivesoftware/smack/ChatManager;->jidChats:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Lorg/jivesoftware/smack/ChatManager;->baseJidChats:Ljava/util/Map;

    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v2, p0, Lorg/jivesoftware/smack/ChatManager;->chatManagerListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    return-object v0

    .line 179
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ChatManagerListener;

    .line 180
    .local v1, "listener":Lorg/jivesoftware/smack/ChatManagerListener;
    invoke-interface {v1, v0, p3}, Lorg/jivesoftware/smack/ChatManagerListener;->chatCreated(Lorg/jivesoftware/smack/Chat;Z)V

    goto :goto_0
.end method

.method private createChat(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smack/Chat;
    .locals 3
    .param p1, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .prologue
    .line 187
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getThread()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "threadID":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 189
    invoke-static {}, Lorg/jivesoftware/smack/ChatManager;->nextID()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "userJID":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/jivesoftware/smack/ChatManager;->createChat(Ljava/lang/String;Ljava/lang/String;Z)Lorg/jivesoftware/smack/Chat;

    move-result-object v2

    return-object v2
.end method

.method private deliverMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 0
    .param p1, "chat"    # Lorg/jivesoftware/smack/Chat;
    .param p2, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .prologue
    .line 248
    invoke-virtual {p1, p2}, Lorg/jivesoftware/smack/Chat;->deliver(Lorg/jivesoftware/smack/packet/Message;)V

    .line 249
    return-void
.end method

.method private getUserChat(Ljava/lang/String;)Lorg/jivesoftware/smack/Chat;
    .locals 3
    .param p1, "userJID"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v1, p0, Lorg/jivesoftware/smack/ChatManager;->jidChats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Chat;

    .line 207
    .local v0, "match":Lorg/jivesoftware/smack/Chat;
    if-nez v0, :cond_0

    .line 208
    iget-object v1, p0, Lorg/jivesoftware/smack/ChatManager;->baseJidChats:Ljava/util/Map;

    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "match":Lorg/jivesoftware/smack/Chat;
    check-cast v0, Lorg/jivesoftware/smack/Chat;

    .line 210
    .restart local v0    # "match":Lorg/jivesoftware/smack/Chat;
    :cond_0
    return-object v0
.end method

.method private static declared-synchronized nextID()Ljava/lang/String;
    .locals 6

    .prologue
    .line 58
    const-class v1, Lorg/jivesoftware/smack/ChatManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/jivesoftware/smack/ChatManager;->prefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lorg/jivesoftware/smack/ChatManager;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lorg/jivesoftware/smack/ChatManager;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addChatListener(Lorg/jivesoftware/smack/ChatManagerListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/ChatManagerListener;

    .prologue
    .line 223
    iget-object v0, p0, Lorg/jivesoftware/smack/ChatManager;->chatManagerListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public addOutgoingMessageInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;)V
    .locals 1
    .param p1, "packetInterceptor"    # Lorg/jivesoftware/smack/PacketInterceptor;

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/ChatManager;->addOutgoingMessageInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 277
    return-void
.end method

.method public addOutgoingMessageInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 1
    .param p1, "packetInterceptor"    # Lorg/jivesoftware/smack/PacketInterceptor;
    .param p2, "filter"    # Lorg/jivesoftware/smack/filter/PacketFilter;

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 281
    iget-object v0, p0, Lorg/jivesoftware/smack/ChatManager;->interceptors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_0
    return-void
.end method

.method public createChat(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/MessageListener;)Lorg/jivesoftware/smack/Chat;
    .locals 3
    .param p1, "userJID"    # Ljava/lang/String;
    .param p2, "thread"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/jivesoftware/smack/MessageListener;

    .prologue
    .line 161
    if-nez p2, :cond_0

    .line 162
    invoke-static {}, Lorg/jivesoftware/smack/ChatManager;->nextID()Ljava/lang/String;

    move-result-object p2

    .line 164
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/ChatManager;->threadChats:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Chat;

    .line 165
    .local v0, "chat":Lorg/jivesoftware/smack/Chat;
    if-eqz v0, :cond_1

    .line 166
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ThreadID is already used"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lorg/jivesoftware/smack/ChatManager;->createChat(Ljava/lang/String;Ljava/lang/String;Z)Lorg/jivesoftware/smack/Chat;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smack/Chat;->addMessageListener(Lorg/jivesoftware/smack/MessageListener;)V

    .line 170
    return-object v0
.end method

.method public createChat(Ljava/lang/String;Lorg/jivesoftware/smack/MessageListener;)Lorg/jivesoftware/smack/Chat;
    .locals 2
    .param p1, "userJID"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/jivesoftware/smack/MessageListener;

    .prologue
    .line 146
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smack/ChatManager;->nextID()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "threadID":Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/ChatManager;->threadChats:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {p0, p1, v0, p2}, Lorg/jivesoftware/smack/ChatManager;->createChat(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/MessageListener;)Lorg/jivesoftware/smack/Chat;

    move-result-object v1

    return-object v1
.end method

.method createPacketCollector(Lorg/jivesoftware/smack/Chat;)Lorg/jivesoftware/smack/PacketCollector;
    .locals 6
    .param p1, "chat"    # Lorg/jivesoftware/smack/Chat;

    .prologue
    .line 266
    iget-object v0, p0, Lorg/jivesoftware/smack/ChatManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v3, 0x0

    new-instance v4, Lorg/jivesoftware/smack/filter/ThreadFilter;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/Chat;->getThreadID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/ThreadFilter;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 267
    new-instance v4, Lorg/jivesoftware/smack/filter/FromContainsFilter;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/Chat;->getParticipant()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/FromContainsFilter;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 266
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    return-object v0
.end method

.method public getChatListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/ChatManagerListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lorg/jivesoftware/smack/ChatManager;->chatManagerListeners:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getThreadChat(Ljava/lang/String;)Lorg/jivesoftware/smack/Chat;
    .locals 1
    .param p1, "thread"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Lorg/jivesoftware/smack/ChatManager;->threadChats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Chat;

    return-object v0
.end method

.method public removeChatListener(Lorg/jivesoftware/smack/ChatManagerListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/ChatManagerListener;

    .prologue
    .line 232
    iget-object v0, p0, Lorg/jivesoftware/smack/ChatManager;->chatManagerListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method sendMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 4
    .param p1, "chat"    # Lorg/jivesoftware/smack/Chat;
    .param p2, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .prologue
    .line 252
    iget-object v2, p0, Lorg/jivesoftware/smack/ChatManager;->interceptors:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 259
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 260
    iget-object v2, p0, Lorg/jivesoftware/smack/ChatManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jivesoftware/smack/packet/Message;->setFrom(Ljava/lang/String;)V

    .line 262
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smack/ChatManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, p2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 263
    return-void

    .line 252
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 253
    .local v1, "interceptor":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 254
    .local v0, "filter":Lorg/jivesoftware/smack/filter/PacketFilter;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/PacketInterceptor;

    invoke-interface {v2, p2}, Lorg/jivesoftware/smack/PacketInterceptor;->interceptPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method
