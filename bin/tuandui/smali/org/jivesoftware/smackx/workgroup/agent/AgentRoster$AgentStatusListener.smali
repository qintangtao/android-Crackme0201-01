.class Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;
.super Ljava/lang/Object;
.source "AgentRoster.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AgentStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 8
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    const/4 v7, 0x1

    .line 359
    instance-of v5, p1, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;

    if-eqz v5, :cond_0

    move-object v4, p1

    .line 360
    check-cast v4, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;

    .line 361
    .local v4, "statusRequest":Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;->getAgents()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 382
    iget-object v5, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    iput-boolean v7, v5, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->rosterInitialized:Z

    .line 384
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;>;"
    .end local v4    # "statusRequest":Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;
    :cond_0
    return-void

    .line 362
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;>;"
    .restart local v4    # "statusRequest":Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;

    .line 363
    .local v2, "item":Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;->getJID()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "agentJID":Ljava/lang/String;
    const-string v5, "remove"

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 369
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 368
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jivesoftware/smack/util/StringUtils;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    # getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;
    invoke-static {v5}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$2(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v5, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    # invokes: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->fireEvent(ILjava/lang/Object;)V
    invoke-static {v5, v7, v0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$4(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;ILjava/lang/Object;)V

    goto :goto_0

    .line 375
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    # getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;
    invoke-static {v5}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$3(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v5, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    const/4 v6, 0x0

    # invokes: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->fireEvent(ILjava/lang/Object;)V
    invoke-static {v5, v6, v0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$4(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;ILjava/lang/Object;)V

    goto :goto_0
.end method
