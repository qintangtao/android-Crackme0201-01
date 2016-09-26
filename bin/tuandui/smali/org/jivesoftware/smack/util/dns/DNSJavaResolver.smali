.class public Lorg/jivesoftware/smack/util/dns/DNSJavaResolver;
.super Ljava/lang/Object;
.source "DNSJavaResolver.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/dns/DNSResolver;


# static fields
.field private static instance:Lorg/jivesoftware/smack/util/dns/DNSJavaResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lorg/jivesoftware/smack/util/dns/DNSJavaResolver;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/dns/DNSJavaResolver;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/dns/DNSJavaResolver;->instance:Lorg/jivesoftware/smack/util/dns/DNSJavaResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getInstance()Lorg/jivesoftware/smack/util/dns/DNSResolver;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/jivesoftware/smack/util/dns/DNSJavaResolver;->instance:Lorg/jivesoftware/smack/util/dns/DNSJavaResolver;

    return-object v0
.end method


# virtual methods
.method public lookupSRVRecords(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/util/dns/SRVRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v8, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    :try_start_0
    new-instance v2, Lorg/xbill/DNS/Lookup;

    const/16 v11, 0x21

    invoke-direct {v2, p1, v11}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    .line 47
    .local v2, "lookup":Lorg/xbill/DNS/Lookup;
    invoke-virtual {v2}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v7

    .line 48
    .local v7, "recs":[Lorg/xbill/DNS/Record;
    if-nez v7, :cond_1

    .line 71
    .end local v2    # "lookup":Lorg/xbill/DNS/Lookup;
    .end local v7    # "recs":[Lorg/xbill/DNS/Record;
    :cond_0
    :goto_0
    return-object v8

    .line 51
    .restart local v2    # "lookup":Lorg/xbill/DNS/Lookup;
    .restart local v7    # "recs":[Lorg/xbill/DNS/Record;
    :cond_1
    array-length v12, v7

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_0

    aget-object v6, v7, v11

    .line 52
    .local v6, "record":Lorg/xbill/DNS/Record;
    move-object v0, v6

    check-cast v0, Lorg/xbill/DNS/SRVRecord;

    move-object v9, v0

    .line 53
    .local v9, "srvRecord":Lorg/xbill/DNS/SRVRecord;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 54
    invoke-virtual {v9}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v13

    invoke-virtual {v13}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v9}, Lorg/xbill/DNS/SRVRecord;->getPort()I

    move-result v3

    .line 56
    .local v3, "port":I
    invoke-virtual {v9}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v4

    .line 57
    .local v4, "priority":I
    invoke-virtual {v9}, Lorg/xbill/DNS/SRVRecord;->getWeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 61
    .local v10, "weight":I
    :try_start_1
    new-instance v5, Lorg/jivesoftware/smack/util/dns/SRVRecord;

    invoke-direct {v5, v1, v3, v4, v10}, Lorg/jivesoftware/smack/util/dns/SRVRecord;-><init>(Ljava/lang/String;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    .local v5, "r":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    :try_start_2
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 51
    .end local v1    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "priority":I
    .end local v5    # "r":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    .end local v10    # "weight":I
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v2    # "lookup":Lorg/xbill/DNS/Lookup;
    .end local v6    # "record":Lorg/xbill/DNS/Record;
    .end local v7    # "recs":[Lorg/xbill/DNS/Record;
    .end local v9    # "srvRecord":Lorg/xbill/DNS/SRVRecord;
    :catch_0
    move-exception v11

    goto :goto_0

    .line 63
    .restart local v1    # "host":Ljava/lang/String;
    .restart local v2    # "lookup":Lorg/xbill/DNS/Lookup;
    .restart local v3    # "port":I
    .restart local v4    # "priority":I
    .restart local v6    # "record":Lorg/xbill/DNS/Record;
    .restart local v7    # "recs":[Lorg/xbill/DNS/Record;
    .restart local v9    # "srvRecord":Lorg/xbill/DNS/SRVRecord;
    .restart local v10    # "weight":I
    :catch_1
    move-exception v13

    goto :goto_2
.end method
