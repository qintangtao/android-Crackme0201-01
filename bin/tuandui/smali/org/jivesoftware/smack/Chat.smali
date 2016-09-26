.class public Lorg/jivesoftware/smack/Chat;
.super Ljava/lang/Object;
.source "Chat.java"


# instance fields
.field private chatManager:Lorg/jivesoftware/smack/ChatManager;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smack/MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private participant:Ljava/lang/String;

.field private threadID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/ChatManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "chatManager"    # Lorg/jivesoftware/smack/ChatManager;
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "threadID"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Chat;->listeners:Ljava/util/Set;

    .line 55
    iput-object p1, p0, Lorg/jivesoftware/smack/Chat;->chatManager:Lorg/jivesoftware/smack/ChatManager;

    .line 56
    iput-object p2, p0, Lorg/jivesoftware/smack/Chat;->participant:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lorg/jivesoftware/smack/Chat;->threadID:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public addMessageListener(Lorg/jivesoftware/smack/MessageListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/MessageListener;

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createCollector()Lorg/jivesoftware/smack/PacketCollector;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->chatManager:Lorg/jivesoftware/smack/ChatManager;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/ChatManager;->createPacketCollector(Lorg/jivesoftware/smack/Chat;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    return-object v0
.end method

.method deliver(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 3
    .param p1, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .prologue
    .line 168
    iget-object v1, p0, Lorg/jivesoftware/smack/Chat;->threadID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/packet/Message;->setThread(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lorg/jivesoftware/smack/Chat;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    return-void

    .line 170
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/MessageListener;

    .line 171
    .local v0, "listener":Lorg/jivesoftware/smack/MessageListener;
    invoke-interface {v0, p0, p1}, Lorg/jivesoftware/smack/MessageListener;->processMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 178
    instance-of v0, p1, Lorg/jivesoftware/smack/Chat;

    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lorg/jivesoftware/smack/Chat;->threadID:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/Chat;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Chat;->getThreadID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->participant:Ljava/lang/String;

    check-cast p1, Lorg/jivesoftware/smack/Chat;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/Chat;->getParticipant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/MessageListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->listeners:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getParticipant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->participant:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->threadID:Ljava/lang/String;

    return-object v0
.end method

.method public removeMessageListener(Lorg/jivesoftware/smack/MessageListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/MessageListener;

    .prologue
    .line 133
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    iget-object v1, p0, Lorg/jivesoftware/smack/Chat;->participant:Ljava/lang/String;

    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->chat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 95
    .local v0, "message":Lorg/jivesoftware/smack/packet/Message;
    iget-object v1, p0, Lorg/jivesoftware/smack/Chat;->threadID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Message;->setThread(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lorg/jivesoftware/smack/Chat;->chatManager:Lorg/jivesoftware/smack/ChatManager;

    invoke-virtual {v1, p0, v0}, Lorg/jivesoftware/smack/ChatManager;->sendMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V

    .line 98
    return-void
.end method

.method public sendMessage(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 1
    .param p1, "message"    # Lorg/jivesoftware/smack/packet/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 115
    iget-object v0, p0, Lorg/jivesoftware/smack/Chat;->chatManager:Lorg/jivesoftware/smack/ChatManager;

    invoke-virtual {v0, p0, p1}, Lorg/jivesoftware/smack/ChatManager;->sendMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V

    .line 116
    return-void
.end method
