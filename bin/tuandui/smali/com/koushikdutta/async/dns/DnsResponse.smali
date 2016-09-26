.class public Lcom/koushikdutta/async/dns/DnsResponse;
.super Ljava/lang/Object;
.source "DnsResponse.java"


# instance fields
.field public addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public names:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public source:Ljava/net/InetSocketAddress;

.field public txt:Lcom/koushikdutta/async/http/Multimap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/dns/DnsResponse;->addresses:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/dns/DnsResponse;->names:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/dns/DnsResponse;->txt:Lcom/koushikdutta/async/http/Multimap;

    .line 18
    return-void
.end method

.method public static parse(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/dns/DnsResponse;
    .locals 14
    .param p0, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    const/16 v13, 0x10

    .line 53
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getAll()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 54
    .local v3, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    .line 56
    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v11}, Lcom/koushikdutta/async/ByteBufferList;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    .line 59
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    .line 61
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    .line 64
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    move-result v7

    .line 66
    .local v7, "questions":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    move-result v1

    .line 68
    .local v1, "answers":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    move-result v2

    .line 70
    .local v2, "authorities":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    move-result v0

    .line 72
    .local v0, "additionals":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v7, :cond_0

    .line 80
    new-instance v8, Lcom/koushikdutta/async/dns/DnsResponse;

    invoke-direct {v8}, Lcom/koushikdutta/async/dns/DnsResponse;-><init>()V

    .line 81
    .local v8, "response":Lcom/koushikdutta/async/dns/DnsResponse;
    const/4 v5, 0x0

    :goto_1
    if-lt v5, v1, :cond_1

    .line 116
    const/4 v5, 0x0

    :goto_2
    if-lt v5, v2, :cond_5

    .line 135
    const/4 v5, 0x0

    :goto_3
    if-lt v5, v0, :cond_6

    .line 160
    return-object v8

    .line 73
    .end local v8    # "response":Lcom/koushikdutta/async/dns/DnsResponse;
    :cond_0
    invoke-static {p0, v3}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    .line 77
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    .line 72
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 82
    .restart local v8    # "response":Lcom/koushikdutta/async/dns/DnsResponse;
    :cond_1
    invoke-static {p0, v3}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    move-result v10

    .line 86
    .local v10, "type":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    .line 88
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    .line 90
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    move-result v6

    .line 92
    .local v6, "length":I
    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 94
    :try_start_0
    new-array v4, v6, [B

    .line 95
    .local v4, "data":[B
    invoke-virtual {p0, v4}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 96
    iget-object v11, v8, Lcom/koushikdutta/async/dns/DnsResponse;->addresses:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v4    # "data":[B
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 98
    :cond_2
    const/16 v11, 0xc

    if-ne v10, v11, :cond_3

    .line 99
    iget-object v11, v8, Lcom/koushikdutta/async/dns/DnsResponse;->names:Ljava/util/ArrayList;

    invoke-static {p0, v3}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_0
    move-exception v11

    goto :goto_4

    .line 101
    :cond_3
    if-ne v10, v13, :cond_4

    .line 102
    new-instance v9, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v9}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 103
    .local v9, "txt":Lcom/koushikdutta/async/ByteBufferList;
    invoke-virtual {p0, v9, v6}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 104
    invoke-virtual {v8, v9}, Lcom/koushikdutta/async/dns/DnsResponse;->parseTxt(Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_4

    .line 107
    .end local v9    # "txt":Lcom/koushikdutta/async/ByteBufferList;
    :cond_4
    new-array v11, v6, [B

    invoke-virtual {p0, v11}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 117
    .end local v6    # "length":I
    .end local v10    # "type":I
    :cond_5
    invoke-static {p0, v3}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    .line 121
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    .line 123
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    .line 125
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    move-result v6

    .line 127
    .restart local v6    # "length":I
    :try_start_1
    new-array v11, v6, [B

    invoke-virtual {p0, v11}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 116
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 136
    .end local v6    # "length":I
    :cond_6
    invoke-static {p0, v3}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    move-result v10

    .line 140
    .restart local v10    # "type":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    .line 142
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    .line 144
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    move-result v6

    .line 146
    .restart local v6    # "length":I
    if-ne v10, v13, :cond_7

    .line 147
    :try_start_2
    new-instance v9, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v9}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 148
    .restart local v9    # "txt":Lcom/koushikdutta/async/ByteBufferList;
    invoke-virtual {p0, v9, v6}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 149
    invoke-virtual {v8, v9}, Lcom/koushikdutta/async/dns/DnsResponse;->parseTxt(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 135
    .end local v9    # "txt":Lcom/koushikdutta/async/ByteBufferList;
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 152
    :cond_7
    new-array v11, v6, [B

    invoke-virtual {p0, v11}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v11

    goto :goto_6

    .end local v10    # "type":I
    :catch_2
    move-exception v11

    goto :goto_5
.end method

.method private static parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 8
    .param p0, "bb"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p1, "backReference"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 25
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v6}, Lcom/koushikdutta/async/ByteBufferList;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    .line 26
    const-string v4, ""

    .line 29
    .local v4, "ret":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v6

    and-int/lit16 v2, v6, 0xff

    .local v2, "len":I
    if-nez v2, :cond_0

    move-object v6, v4

    .line 49
    :goto_1
    return-object v6

    .line 31
    :cond_0
    and-int/lit16 v6, v2, 0xc0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_2

    .line 32
    and-int/lit8 v6, v2, 0x3f

    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    or-int v3, v6, v7

    .line 33
    .local v3, "offset":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 34
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 35
    :cond_1
    new-instance v5, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v5}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 36
    .local v5, "sub":Lcom/koushikdutta/async/ByteBufferList;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 37
    .local v1, "duplicate":Ljava/nio/ByteBuffer;
    new-array v6, v3, [B

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v5, v1}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 42
    .end local v1    # "duplicate":Ljava/nio/ByteBuffer;
    .end local v3    # "offset":I
    .end local v5    # "sub":Lcom/koushikdutta/async/ByteBufferList;
    :cond_2
    new-array v0, v2, [B

    .line 43
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 44
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method


# virtual methods
.method parseTxt(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 7
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 164
    :goto_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_0

    .line 172
    return-void

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v4

    and-int/lit16 v1, v4, 0xff

    .line 166
    .local v1, "length":I
    new-array v0, v1, [B

    .line 167
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 168
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 169
    .local v3, "string":Ljava/lang/String;
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "pair":[Ljava/lang/String;
    iget-object v4, p0, Lcom/koushikdutta/async/dns/DnsResponse;->txt:Lcom/koushikdutta/async/http/Multimap;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v4, v5, v6}, Lcom/koushikdutta/async/http/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 176
    const-string v2, "addresses:\n"

    .line 177
    .local v2, "ret":Ljava/lang/String;
    iget-object v3, p0, Lcom/koushikdutta/async/dns/DnsResponse;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "names:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    iget-object v3, p0, Lcom/koushikdutta/async/dns/DnsResponse;->names:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 182
    return-object v2

    .line 177
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 178
    .local v0, "address":Ljava/net/InetAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 180
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    .local v1, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
