.class public Lcom/lzx/iteam/json/JSONArray;
.super Ljava/util/ArrayList;
.source "JSONArray.java"

# interfaces
.implements Ljava/util/List;
.implements Lcom/lzx/iteam/json/JSONAware;
.implements Lcom/lzx/iteam/json/JSONStreamAware;


# static fields
.field private static final serialVersionUID:J = 0x36ed996451b68eedL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static toJSONString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    const-string v4, "null"

    .line 92
    :goto_0
    return-object v4

    .line 73
    :cond_0
    const/4 v0, 0x1

    .line 74
    .local v0, "first":Z
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 77
    .local v1, "iter":Ljava/util/Iterator;
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 91
    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 79
    :cond_1
    if-eqz v0, :cond_2

    .line 80
    const/4 v0, 0x0

    .line 84
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 85
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 86
    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 82
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 89
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    invoke-static {v3}, Lcom/lzx/iteam/json/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static writeJSONString(Ljava/util/List;Ljava/io/Writer;)V
    .locals 4
    .param p0, "list"    # Ljava/util/List;
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x1

    .line 36
    .local v0, "first":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 38
    .local v1, "iter":Ljava/util/Iterator;
    const/16 v3, 0x5b

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 39
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    const/16 v3, 0x5d

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 40
    :cond_1
    if-eqz v0, :cond_2

    .line 41
    const/4 v0, 0x0

    .line 45
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 46
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 47
    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 43
    .end local v2    # "value":Ljava/lang/Object;
    :cond_2
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 51
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_3
    invoke-static {v2, p1}, Lcom/lzx/iteam/json/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    goto :goto_1
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-static {p0}, Lcom/lzx/iteam/json/JSONArray;->toJSONString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/lzx/iteam/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeJSONString(Ljava/io/Writer;)V
    .locals 0
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/lzx/iteam/json/JSONArray;->writeJSONString(Ljava/util/List;Ljava/io/Writer;)V

    .line 58
    return-void
.end method
