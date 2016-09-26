.class Lorg/jivesoftware/smackx/ChatStateManager$IncomingMessageInterceptor;
.super Ljava/lang/Object;
.source "ChatStateManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ChatManagerListener;
.implements Lorg/jivesoftware/smack/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/ChatStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingMessageInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/ChatStateManager;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/ChatStateManager;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lorg/jivesoftware/smackx/ChatStateManager$IncomingMessageInterceptor;->this$0:Lorg/jivesoftware/smackx/ChatStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/ChatStateManager;Lorg/jivesoftware/smackx/ChatStateManager$IncomingMessageInterceptor;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/ChatStateManager$IncomingMessageInterceptor;-><init>(Lorg/jivesoftware/smackx/ChatStateManager;)V

    return-void
.end method


# virtual methods
.method public chatCreated(Lorg/jivesoftware/smack/Chat;Z)V
    .locals 0
    .param p1, "chat"    # Lorg/jivesoftware/smack/Chat;
    .param p2, "createdLocally"    # Z

    .prologue
    .line 179
    invoke-virtual {p1, p0}, Lorg/jivesoftware/smack/Chat;->addMessageListener(Lorg/jivesoftware/smack/MessageListener;)V

    .line 180
    return-void
.end method

.method public processMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 3
    .param p1, "chat"    # Lorg/jivesoftware/smack/Chat;
    .param p2, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .prologue
    .line 184
    const-string v2, "http://jabber.org/protocol/chatstates"

    invoke-virtual {p2, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    .line 185
    .local v0, "extension":Lorg/jivesoftware/smack/packet/PacketExtension;
    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 191
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lorg/jivesoftware/smack/packet/PacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smackx/ChatState;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/ChatState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 197
    .local v1, "state":Lorg/jivesoftware/smackx/ChatState;
    iget-object v2, p0, Lorg/jivesoftware/smackx/ChatStateManager$IncomingMessageInterceptor;->this$0:Lorg/jivesoftware/smackx/ChatStateManager;

    # invokes: Lorg/jivesoftware/smackx/ChatStateManager;->fireNewChatState(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smackx/ChatState;)V
    invoke-static {v2, p1, v1}, Lorg/jivesoftware/smackx/ChatStateManager;->access$2(Lorg/jivesoftware/smackx/ChatStateManager;Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smackx/ChatState;)V

    goto :goto_0

    .line 194
    .end local v1    # "state":Lorg/jivesoftware/smackx/ChatState;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
