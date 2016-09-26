.class public Lorg/xbill/DNS/ResolverConfig;
.super Ljava/lang/Object;
.source "ResolverConfig.java"


# static fields
.field private static currentConfig:Lorg/xbill/DNS/ResolverConfig;


# instance fields
.field private ndots:I

.field private searchlist:[Lorg/xbill/DNS/Name;

.field private servers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 43
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->refresh()V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v2, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    .line 38
    iput v3, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    .line 48
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findProperty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findSunJVM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    iget-object v2, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    if-nez v2, :cond_0

    .line 53
    :cond_2
    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "OS":Ljava/lang/String;
    const-string v2, "java.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "vendor":Ljava/lang/String;
    const-string v2, "Windows"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 56
    const-string v2, "95"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 57
    const-string v2, "98"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 58
    const-string v2, "ME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 59
    :cond_3
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->find95()V

    goto :goto_0

    .line 61
    :cond_4
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findNT()V

    goto :goto_0

    .line 62
    :cond_5
    const-string v2, "NetWare"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_6

    .line 63
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findNetware()V

    goto :goto_0

    .line 64
    :cond_6
    const-string v2, "Android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_7

    .line 65
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findAndroid()V

    goto :goto_0

    .line 67
    :cond_7
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findUnix()V

    goto :goto_0
.end method

.method private addSearch(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "search"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;

    .prologue
    .line 84
    const-string v1, "verbose"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adding search "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    :cond_0
    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    .end local v0    # "name":Lorg/xbill/DNS/Name;
    :goto_0
    return-void

    .line 94
    .restart local v0    # "name":Lorg/xbill/DNS/Name;
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    .end local v0    # "name":Lorg/xbill/DNS/Name;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private addServer(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;

    .prologue
    .line 74
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adding server "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private configureFromLists(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "lserver"    # Ljava/util/List;
    .param p2, "lsearch"    # Ljava/util/List;

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 118
    new-array v0, v1, [Lorg/xbill/DNS/Name;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    .line 119
    :cond_1
    return-void
.end method

.method private configureNdots(I)V
    .locals 1
    .param p1, "lndots"    # I

    .prologue
    .line 123
    iget v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 124
    iput p1, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    .line 125
    :cond_0
    return-void
.end method

.method private find95()V
    .locals 6

    .prologue
    .line 393
    const-string v2, "winipcfg.out"

    .line 396
    .local v2, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "winipcfg /all /batch "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 397
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 398
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v3}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;)V

    .line 400
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "p":Ljava/lang/Process;
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private findAndroid()V
    .locals 12

    .prologue
    .line 436
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v4, "lserver":Ljava/util/ArrayList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v3, "lsearch":Ljava/util/ArrayList;
    :try_start_0
    const-string v8, "android.os.SystemProperties"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 442
    .local v0, "SystemProperties":Ljava/lang/Class;
    const-string v8, "get"

    .line 443
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    .line 442
    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 444
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x4

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "net.dns1"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "net.dns2"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    .line 445
    const-string v9, "net.dns3"

    aput-object v9, v6, v8

    const/4 v8, 0x3

    const-string v9, "net.dns4"

    aput-object v9, v6, v8

    .line 446
    .local v6, "netdns":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v8, :cond_0

    .line 457
    .end local v0    # "SystemProperties":Ljava/lang/Class;
    .end local v2    # "i":I
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "netdns":[Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v4, v3}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 458
    return-void

    .line 447
    .restart local v0    # "SystemProperties":Ljava/lang/Class;
    .restart local v2    # "i":I
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    .restart local v6    # "netdns":[Ljava/lang/String;
    :cond_0
    const/4 v8, 0x1

    :try_start_1
    new-array v1, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v9, v6, v2

    aput-object v9, v1, v8

    .line 448
    .local v1, "args":[Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 449
    .local v7, "v":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 450
    const-string v8, "^\\d+(\\.\\d+){3}$"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 451
    :cond_1
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 452
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 446
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "SystemProperties":Ljava/lang/Class;
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "netdns":[Ljava/lang/String;
    .end local v7    # "v":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private findNT()V
    .locals 3

    .prologue
    .line 414
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "ipconfig /all"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 415
    .local v0, "p":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;)V

    .line 416
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v0    # "p":Ljava/lang/Process;
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private findNetware()V
    .locals 1

    .prologue
    .line 280
    const-string v0, "sys:/etc/resolv.cfg"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ResolverConfig;->findResolvConf(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method private findProperty()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v1, "lserver":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v0, "lsearch":Ljava/util/List;
    const-string v5, "dns.server"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "prop":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 141
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .local v3, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_3

    .line 146
    .end local v3    # "st":Ljava/util/StringTokenizer;
    :cond_0
    const-string v5, "dns.search"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_1

    .line 148
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .restart local v3    # "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_4

    .line 152
    .end local v3    # "st":Ljava/util/StringTokenizer;
    :cond_1
    invoke-direct {p0, v1, v0}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 153
    iget-object v5, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4

    .line 143
    .restart local v3    # "st":Ljava/util/StringTokenizer;
    :cond_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 150
    :cond_4
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1
.end method

.method private findResolvConf(Ljava/lang/String;)V
    .locals 11
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 217
    const/4 v1, 0x0

    .line 219
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    .end local v1    # "in":Ljava/io/InputStream;
    .local v2, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 225
    .local v3, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 226
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .local v7, "lserver":Ljava/util/List;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    .local v6, "lsearch":Ljava/util/List;
    const/4 v5, -0x1

    .line 231
    .local v5, "lndots":I
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 264
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    .end local v4    # "line":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v7, v6}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 270
    invoke-direct {p0, v5}, Lorg/xbill/DNS/ResolverConfig;->configureNdots(I)V

    move-object v1, v2

    .line 271
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "lndots":I
    .end local v6    # "lsearch":Ljava/util/List;
    .end local v7    # "lserver":Ljava/util/List;
    .restart local v1    # "in":Ljava/io/InputStream;
    :goto_2
    return-void

    .line 232
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "lndots":I
    .restart local v6    # "lsearch":Ljava/util/List;
    .restart local v7    # "lserver":Ljava/util/List;
    :cond_1
    :try_start_2
    const-string v10, "nameserver"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 233
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 234
    .local v8, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 235
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v7}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .end local v4    # "line":Ljava/lang/String;
    .end local v8    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v10

    goto :goto_1

    .line 237
    .restart local v4    # "line":Ljava/lang/String;
    :cond_2
    const-string v10, "domain"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 238
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 239
    .restart local v8    # "st":Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 240
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 242
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 243
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 245
    .end local v8    # "st":Ljava/util/StringTokenizer;
    :cond_3
    const-string v10, "search"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 246
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 247
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 248
    :cond_4
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 249
    .restart local v8    # "st":Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 250
    :goto_3
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 251
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 253
    .end local v8    # "st":Ljava/util/StringTokenizer;
    :cond_5
    const-string v10, "options"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 254
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v8    # "st":Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 256
    :cond_6
    :goto_4
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 257
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 258
    .local v9, "token":Ljava/lang/String;
    const-string v10, "ndots:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 259
    invoke-direct {p0, v9}, Lorg/xbill/DNS/ResolverConfig;->parseNdots(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    goto :goto_4

    .line 222
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "lndots":I
    .end local v6    # "lsearch":Ljava/util/List;
    .end local v7    # "lserver":Ljava/util/List;
    .end local v8    # "st":Ljava/util/StringTokenizer;
    .end local v9    # "token":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v10

    goto/16 :goto_2
.end method

.method private findSunJVM()Z
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    .local v3, "lserver":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v1, "lsearch":Ljava/util/List;
    const/4 v14, 0x0

    :try_start_0
    new-array v6, v14, [Ljava/lang/Class;

    .line 169
    .local v6, "noClasses":[Ljava/lang/Class;
    const/4 v14, 0x0

    new-array v7, v14, [Ljava/lang/Object;

    .line 170
    .local v7, "noObjects":[Ljava/lang/Object;
    const-string v11, "sun.net.dns.ResolverConfiguration"

    .line 171
    .local v11, "resConfName":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 175
    .local v10, "resConfClass":Ljava/lang/Class;
    const-string v14, "open"

    invoke-virtual {v10, v14, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 176
    .local v8, "open":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    invoke-virtual {v8, v14, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 179
    .local v9, "resConf":Ljava/lang/Object;
    const-string v14, "nameservers"

    invoke-virtual {v10, v14, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 181
    .local v5, "nameservers":Ljava/lang/reflect/Method;
    invoke-virtual {v5, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 184
    .local v4, "lserver_tmp":Ljava/util/List;
    const-string v14, "searchlist"

    invoke-virtual {v10, v14, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 186
    .local v12, "searchlist":Ljava/lang/reflect/Method;
    invoke-virtual {v12, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .local v2, "lsearch_tmp":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_0

    .line 207
    .end local v2    # "lsearch_tmp":Ljava/util/List;
    .end local v4    # "lserver_tmp":Ljava/util/List;
    .end local v5    # "nameservers":Ljava/lang/reflect/Method;
    .end local v6    # "noClasses":[Ljava/lang/Class;
    .end local v7    # "noObjects":[Ljava/lang/Object;
    .end local v8    # "open":Ljava/lang/reflect/Method;
    .end local v9    # "resConf":Ljava/lang/Object;
    .end local v10    # "resConfClass":Ljava/lang/Class;
    .end local v11    # "resConfName":Ljava/lang/String;
    .end local v12    # "searchlist":Ljava/lang/reflect/Method;
    :goto_0
    return v13

    .line 195
    .restart local v2    # "lsearch_tmp":Ljava/util/List;
    .restart local v4    # "lserver_tmp":Ljava/util/List;
    .restart local v5    # "nameservers":Ljava/lang/reflect/Method;
    .restart local v6    # "noClasses":[Ljava/lang/Class;
    .restart local v7    # "noObjects":[Ljava/lang/Object;
    .restart local v8    # "open":Ljava/lang/reflect/Method;
    .restart local v9    # "resConf":Ljava/lang/Object;
    .restart local v10    # "resConfClass":Ljava/lang/Class;
    .restart local v11    # "resConfName":Ljava/lang/String;
    .restart local v12    # "searchlist":Ljava/lang/reflect/Method;
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_1

    .line 196
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 197
    .local v0, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 201
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 202
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 203
    .restart local v0    # "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_4

    .line 206
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0, v3, v1}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 207
    const/4 v13, 0x1

    goto :goto_0

    .line 198
    .restart local v0    # "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13, v3}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 204
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13, v1}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 189
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v2    # "lsearch_tmp":Ljava/util/List;
    .end local v4    # "lserver_tmp":Ljava/util/List;
    .end local v5    # "nameservers":Ljava/lang/reflect/Method;
    .end local v6    # "noClasses":[Ljava/lang/Class;
    .end local v7    # "noObjects":[Ljava/lang/Object;
    .end local v8    # "open":Ljava/lang/reflect/Method;
    .end local v9    # "resConf":Ljava/lang/Object;
    .end local v10    # "resConfClass":Ljava/lang/Class;
    .end local v11    # "resConfName":Ljava/lang/String;
    .end local v12    # "searchlist":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v14

    goto :goto_0
.end method

.method private findUnix()V
    .locals 1

    .prologue
    .line 275
    const-string v0, "/etc/resolv.conf"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ResolverConfig;->findResolvConf(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private findWin(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 371
    const-string v2, "org.xbill.DNS.windows.parse.buffer"

    .line 373
    .local v2, "property":Ljava/lang/String;
    const/16 v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 374
    .local v1, "bufSize":I
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 375
    .local v0, "b":Ljava/io/BufferedInputStream;
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 376
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;Ljava/util/Locale;)V

    .line 377
    iget-object v3, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 379
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    new-instance v3, Ljava/util/Locale;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;Ljava/util/Locale;)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private findWin(Ljava/io/InputStream;Ljava/util/Locale;)V
    .locals 20
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 288
    const-class v18, Lorg/xbill/DNS/ResolverConfig;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v10

    .line 289
    .local v10, "packageName":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".windows.DNSServer"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 291
    .local v15, "resPackageName":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 292
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v14

    .line 296
    .local v14, "res":Ljava/util/ResourceBundle;
    :goto_0
    const-string v18, "host_name"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, "host_name":Ljava/lang/String;
    const-string v18, "primary_dns_suffix"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 298
    .local v11, "primary_dns_suffix":Ljava/lang/String;
    const-string v18, "dns_suffix"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "dns_suffix":Ljava/lang/String;
    const-string v18, "dns_servers"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "dns_servers":Ljava/lang/String;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 303
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v8, "lserver":Ljava/util/List;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v7, "lsearch":Ljava/util/List;
    const/4 v6, 0x0

    .line 306
    .local v6, "line":Ljava/lang/String;
    const/4 v13, 0x0

    .line 307
    .local v13, "readingServers":Z
    const/4 v12, 0x0

    .line 308
    .local v12, "readingSearches":Z
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 362
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "lsearch":Ljava/util/List;
    .end local v8    # "lserver":Ljava/util/List;
    .end local v12    # "readingSearches":Z
    .end local v13    # "readingServers":Z
    :goto_2
    return-void

    .line 294
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "dns_servers":Ljava/lang/String;
    .end local v4    # "dns_suffix":Ljava/lang/String;
    .end local v5    # "host_name":Ljava/lang/String;
    .end local v11    # "primary_dns_suffix":Ljava/lang/String;
    .end local v14    # "res":Ljava/util/ResourceBundle;
    :cond_1
    invoke-static {v15}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v14

    .restart local v14    # "res":Ljava/util/ResourceBundle;
    goto :goto_0

    .line 309
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "dns_servers":Ljava/lang/String;
    .restart local v4    # "dns_suffix":Ljava/lang/String;
    .restart local v5    # "host_name":Ljava/lang/String;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "lsearch":Ljava/util/List;
    .restart local v8    # "lserver":Ljava/util/List;
    .restart local v11    # "primary_dns_suffix":Ljava/lang/String;
    .restart local v12    # "readingSearches":Z
    .restart local v13    # "readingServers":Z
    :cond_2
    :try_start_1
    new-instance v17, Ljava/util/StringTokenizer;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 310
    .local v17, "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-nez v18, :cond_3

    .line 311
    const/4 v13, 0x0

    .line 312
    const/4 v12, 0x0

    .line 313
    goto :goto_1

    .line 315
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 316
    .local v16, "s":Ljava/lang/String;
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 317
    const/4 v13, 0x0

    .line 318
    const/4 v12, 0x0

    .line 321
    :cond_4
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 322
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v18

    if-nez v18, :cond_5

    .line 326
    const/16 v18, 0x0

    :try_start_2
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_2
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    .line 331
    .local v9, "name":Lorg/xbill/DNS/Name;
    :try_start_3
    invoke-virtual {v9}, Lorg/xbill/DNS/Name;->labels()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 333
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v7}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "lsearch":Ljava/util/List;
    .end local v8    # "lserver":Ljava/util/List;
    .end local v9    # "name":Lorg/xbill/DNS/Name;
    .end local v12    # "readingSearches":Z
    .end local v13    # "readingServers":Z
    .end local v16    # "s":Ljava/lang/String;
    .end local v17    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v18

    goto :goto_2

    .line 323
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "lsearch":Ljava/util/List;
    .restart local v8    # "lserver":Ljava/util/List;
    .restart local v12    # "readingSearches":Z
    .restart local v13    # "readingServers":Z
    .restart local v16    # "s":Ljava/lang/String;
    .restart local v17    # "st":Ljava/util/StringTokenizer;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    .line 334
    :cond_6
    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 335
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-nez v18, :cond_7

    .line 337
    const-string v18, ":"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 339
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v7}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    .line 340
    const/4 v12, 0x1

    .line 341
    goto/16 :goto_1

    .line 336
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    .line 341
    :cond_8
    if-nez v12, :cond_9

    .line 342
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 344
    :cond_9
    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-nez v18, :cond_a

    .line 346
    const-string v18, ":"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v7}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    .line 349
    const/4 v12, 0x1

    .line 350
    goto/16 :goto_1

    .line 345
    :cond_a
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    goto :goto_5

    .line 350
    :cond_b
    if-nez v13, :cond_c

    .line 351
    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 353
    :cond_c
    :goto_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-nez v18, :cond_d

    .line 355
    const-string v18, ":"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v8}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    .line 358
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 354
    :cond_d
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v16

    goto :goto_6

    .line 329
    :catch_1
    move-exception v18

    goto/16 :goto_1
.end method

.method public static declared-synchronized getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;
    .locals 2

    .prologue
    .line 496
    const-class v0, Lorg/xbill/DNS/ResolverConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->currentConfig:Lorg/xbill/DNS/ResolverConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private parseNdots(Ljava/lang/String;)I
    .locals 4
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 101
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, "ndots":I
    if-ltz v0, :cond_1

    .line 103
    const-string v1, "verbose"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setting ndots "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0    # "ndots":I
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static refresh()V
    .locals 3

    .prologue
    .line 502
    new-instance v0, Lorg/xbill/DNS/ResolverConfig;

    invoke-direct {v0}, Lorg/xbill/DNS/ResolverConfig;-><init>()V

    .line 503
    .local v0, "newConfig":Lorg/xbill/DNS/ResolverConfig;
    const-class v2, Lorg/xbill/DNS/ResolverConfig;

    monitor-enter v2

    .line 504
    :try_start_0
    sput-object v0, Lorg/xbill/DNS/ResolverConfig;->currentConfig:Lorg/xbill/DNS/ResolverConfig;

    .line 503
    monitor-exit v2

    .line 506
    return-void

    .line 503
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public ndots()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    if-gez v0, :cond_0

    .line 489
    const/4 v0, 0x1

    .line 490
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    goto :goto_0
.end method

.method public searchPath()[Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public server()Ljava/lang/String;
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 470
    const/4 v0, 0x0

    .line 471
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public servers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    return-object v0
.end method
