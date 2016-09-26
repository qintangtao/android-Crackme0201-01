.class public Lcom/koushikdutta/async/util/HashList;
.super Ljava/lang/Object;
.source "HashList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/util/HashList$TaggedList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field internal:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/util/HashList",
            "<TT;>.Tagged",
            "List",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    .line 17
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/HashList;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 58
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-nez v1, :cond_0

    .line 59
    new-instance v0, Lcom/koushikdutta/async/util/HashList$TaggedList;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/util/HashList$TaggedList;-><init>(Lcom/koushikdutta/async/util/HashList;)V

    .line 60
    .local v0, "put":Lcom/koushikdutta/async/util/HashList$TaggedList;, "Lcom/koushikdutta/async/util/HashList<TT;>.TaggedList<TT;>;"
    move-object v1, v0

    .line 61
    iget-object v2, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .end local v0    # "put":Lcom/koushikdutta/async/util/HashList$TaggedList;, "Lcom/koushikdutta/async/util/HashList<TT;>.TaggedList<TT;>;"
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 57
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 52
    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/HashList;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 53
    .local v0, "check":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 52
    .end local v0    # "check":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized pop(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    const/4 v1, 0x0

    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/util/HashList$TaggedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .local v0, "values":Lcom/koushikdutta/async/util/HashList$TaggedList;, "Lcom/koushikdutta/async/util/HashList<TT;>.TaggedList<TT;>;"
    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 70
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/koushikdutta/async/util/HashList$TaggedList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/koushikdutta/async/util/HashList$TaggedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/HashList$TaggedList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 67
    .end local v0    # "values":Lcom/koushikdutta/async/util/HashList$TaggedList;, "Lcom/koushikdutta/async/util/HashList<TT;>.TaggedList<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeItem(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/util/HashList$TaggedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .local v0, "values":Lcom/koushikdutta/async/util/HashList$TaggedList;, "Lcom/koushikdutta/async/util/HashList<TT;>.TaggedList<TT;>;"
    if-nez v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 80
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/util/HashList$TaggedList;->remove(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v0}, Lcom/koushikdutta/async/util/HashList$TaggedList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "values":Lcom/koushikdutta/async/util/HashList$TaggedList;, "Lcom/koushikdutta/async/util/HashList<TT;>.TaggedList<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tag(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/util/HashList$TaggedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .local v0, "list":Lcom/koushikdutta/async/util/HashList$TaggedList;, "Lcom/koushikdutta/async/util/HashList<TT;>.TaggedList<TT;>;"
    if-nez v0, :cond_0

    .line 26
    const/4 v1, 0x0

    .line 27
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/koushikdutta/async/util/HashList$TaggedList;->tag:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    .end local v0    # "list":Lcom/koushikdutta/async/util/HashList$TaggedList;, "Lcom/koushikdutta/async/util/HashList<TT;>.TaggedList<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized tag(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    .local p2, "tag":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/util/HashList$TaggedList;

    .line 32
    .local v0, "list":Lcom/koushikdutta/async/util/HashList$TaggedList;, "Lcom/koushikdutta/async/util/HashList<TT;>.TaggedList<TT;>;"
    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/koushikdutta/async/util/HashList$TaggedList;

    .end local v0    # "list":Lcom/koushikdutta/async/util/HashList$TaggedList;, "Lcom/koushikdutta/async/util/HashList<TT;>.TaggedList<TT;>;"
    invoke-direct {v0, p0}, Lcom/koushikdutta/async/util/HashList$TaggedList;-><init>(Lcom/koushikdutta/async/util/HashList;)V

    .line 34
    .restart local v0    # "list":Lcom/koushikdutta/async/util/HashList$TaggedList;, "Lcom/koushikdutta/async/util/HashList<TT;>.TaggedList<TT;>;"
    iget-object v1, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    iput-object p2, v0, Lcom/koushikdutta/async/util/HashList$TaggedList;->tag:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 31
    .end local v0    # "list":Lcom/koushikdutta/async/util/HashList$TaggedList;, "Lcom/koushikdutta/async/util/HashList<TT;>.TaggedList<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
