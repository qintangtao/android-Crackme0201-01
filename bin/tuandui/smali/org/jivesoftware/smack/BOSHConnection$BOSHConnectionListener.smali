.class Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;
.super Ljava/lang/Object;
.source "BOSHConnection.java"

# interfaces
.implements Lcom/kenai/jbosh/BOSHClientConnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/BOSHConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BOSHConnectionListener"
.end annotation


# instance fields
.field private final connection:Lorg/jivesoftware/smack/BOSHConnection;

.field final synthetic this$0:Lorg/jivesoftware/smack/BOSHConnection;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/BOSHConnection;Lorg/jivesoftware/smack/BOSHConnection;)V
    .locals 0
    .param p2, "connection"    # Lorg/jivesoftware/smack/BOSHConnection;

    .prologue
    .line 685
    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput-object p2, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    .line 687
    return-void
.end method


# virtual methods
.method public connectionEvent(Lcom/kenai/jbosh/BOSHClientConnEvent;)V
    .locals 6
    .param p1, "connEvent"    # Lcom/kenai/jbosh/BOSHClientConnEvent;

    .prologue
    .line 696
    :try_start_0
    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHClientConnEvent;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 697
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/jivesoftware/smack/BOSHConnection;->access$0(Lorg/jivesoftware/smack/BOSHConnection;Z)V

    .line 698
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    # getter for: Lorg/jivesoftware/smack/BOSHConnection;->isFirstInitialization:Z
    invoke-static {v2}, Lorg/jivesoftware/smack/BOSHConnection;->access$1(Lorg/jivesoftware/smack/BOSHConnection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 699
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/jivesoftware/smack/BOSHConnection;->access$2(Lorg/jivesoftware/smack/BOSHConnection;Z)V

    .line 700
    invoke-static {}, Lorg/jivesoftware/smack/BOSHConnection;->getConnectionCreationListeners()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 736
    :cond_0
    :goto_1
    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    monitor-enter v3

    .line 737
    :try_start_1
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 736
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 740
    return-void

    .line 700
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionCreationListener;

    .line 701
    .local v1, "listener":Lorg/jivesoftware/smack/ConnectionCreationListener;
    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-interface {v1, v3}, Lorg/jivesoftware/smack/ConnectionCreationListener;->connectionCreated(Lorg/jivesoftware/smack/Connection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 735
    .end local v1    # "listener":Lorg/jivesoftware/smack/ConnectionCreationListener;
    :catchall_0
    move-exception v2

    .line 736
    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    monitor-enter v3

    .line 737
    :try_start_3
    iget-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 736
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 739
    throw v2

    .line 706
    :cond_2
    :try_start_4
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    # getter for: Lorg/jivesoftware/smack/BOSHConnection;->wasAuthenticated:Z
    invoke-static {v2}, Lorg/jivesoftware/smack/BOSHConnection;->access$3(Lorg/jivesoftware/smack/BOSHConnection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 707
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    .line 708
    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    # getter for: Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;
    invoke-static {v3}, Lorg/jivesoftware/smack/BOSHConnection;->access$4(Lorg/jivesoftware/smack/BOSHConnection;)Lorg/jivesoftware/smack/BOSHConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/BOSHConfiguration;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 709
    iget-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    # getter for: Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;
    invoke-static {v4}, Lorg/jivesoftware/smack/BOSHConnection;->access$4(Lorg/jivesoftware/smack/BOSHConnection;)Lorg/jivesoftware/smack/BOSHConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/BOSHConfiguration;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 710
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    # getter for: Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;
    invoke-static {v5}, Lorg/jivesoftware/smack/BOSHConnection;->access$4(Lorg/jivesoftware/smack/BOSHConnection;)Lorg/jivesoftware/smack/BOSHConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jivesoftware/smack/BOSHConfiguration;->getResource()Ljava/lang/String;

    move-result-object v5

    .line 707
    invoke-virtual {v2, v3, v4, v5}, Lorg/jivesoftware/smack/BOSHConnection;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :cond_3
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/BOSHConnection;->getConnectionListeners()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionListener;

    .line 713
    .local v1, "listener":Lorg/jivesoftware/smack/ConnectionListener;
    invoke-interface {v1}, Lorg/jivesoftware/smack/ConnectionListener;->reconnectionSuccessful()V
    :try_end_4
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 716
    .end local v1    # "listener":Lorg/jivesoftware/smack/ConnectionListener;
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Lorg/jivesoftware/smack/XMPPException;
    :try_start_5
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/BOSHConnection;->getConnectionListeners()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionListener;

    .line 718
    .restart local v1    # "listener":Lorg/jivesoftware/smack/ConnectionListener;
    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/ConnectionListener;->reconnectionFailed(Ljava/lang/Exception;)V

    goto :goto_3

    .line 724
    .end local v0    # "e":Lorg/jivesoftware/smack/XMPPException;
    .end local v1    # "listener":Lorg/jivesoftware/smack/ConnectionListener;
    :cond_4
    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHClientConnEvent;->isError()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    .line 726
    :try_start_6
    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHClientConnEvent;->getCause()Ljava/lang/Throwable;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 732
    :cond_5
    :goto_4
    :try_start_7
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/jivesoftware/smack/BOSHConnection;->access$0(Lorg/jivesoftware/smack/BOSHConnection;Z)V

    goto/16 :goto_1

    .line 728
    :catch_1
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/BOSHConnection;->notifyConnectionError(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 736
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    :catchall_2
    move-exception v2

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v2
.end method
