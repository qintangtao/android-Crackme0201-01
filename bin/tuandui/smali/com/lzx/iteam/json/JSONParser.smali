.class public Lcom/lzx/iteam/json/JSONParser;
.super Ljava/lang/Object;
.source "JSONParser.java"


# static fields
.field public static final S_END:I = 0x6

.field public static final S_INIT:I = 0x0

.field public static final S_IN_ARRAY:I = 0x3

.field public static final S_IN_ERROR:I = -0x1

.field public static final S_IN_FINISHED_VALUE:I = 0x1

.field public static final S_IN_OBJECT:I = 0x2

.field public static final S_IN_PAIR_VALUE:I = 0x5

.field public static final S_PASSED_PAIR_KEY:I = 0x4


# instance fields
.field private handlerStatusStack:Ljava/util/LinkedList;

.field private lexer:Lcom/lzx/iteam/json/Yylex;

.field private status:I

.field private token:Lcom/lzx/iteam/json/Yytoken;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/lzx/iteam/json/Yylex;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/json/Yylex;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/lzx/iteam/json/JSONParser;->lexer:Lcom/lzx/iteam/json/Yylex;

    .line 33
    iput-object v1, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 21
    return-void
.end method

.method private createArrayContainer(Lcom/lzx/iteam/json/ContainerFactory;)Ljava/util/List;
    .locals 1
    .param p1, "containerFactory"    # Lcom/lzx/iteam/json/ContainerFactory;

    .prologue
    .line 283
    if-nez p1, :cond_1

    .line 284
    new-instance v0, Lcom/lzx/iteam/json/JSONArray;

    invoke-direct {v0}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    .line 289
    :cond_0
    :goto_0
    return-object v0

    .line 285
    :cond_1
    invoke-interface {p1}, Lcom/lzx/iteam/json/ContainerFactory;->creatArrayContainer()Ljava/util/List;

    move-result-object v0

    .line 287
    .local v0, "l":Ljava/util/List;
    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lcom/lzx/iteam/json/JSONArray;

    .end local v0    # "l":Ljava/util/List;
    invoke-direct {v0}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    goto :goto_0
.end method

.method private createObjectContainer(Lcom/lzx/iteam/json/ContainerFactory;)Ljava/util/Map;
    .locals 1
    .param p1, "containerFactory"    # Lcom/lzx/iteam/json/ContainerFactory;

    .prologue
    .line 273
    if-nez p1, :cond_1

    .line 274
    new-instance v0, Lcom/lzx/iteam/json/JSONObject;

    invoke-direct {v0}, Lcom/lzx/iteam/json/JSONObject;-><init>()V

    .line 279
    :cond_0
    :goto_0
    return-object v0

    .line 275
    :cond_1
    invoke-interface {p1}, Lcom/lzx/iteam/json/ContainerFactory;->createObjectContainer()Ljava/util/Map;

    move-result-object v0

    .line 277
    .local v0, "m":Ljava/util/Map;
    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/lzx/iteam/json/JSONObject;

    .end local v0    # "m":Ljava/util/Map;
    invoke-direct {v0}, Lcom/lzx/iteam/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method private nextToken()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lzx/iteam/json/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lzx/iteam/json/JSONParser;->lexer:Lcom/lzx/iteam/json/Yylex;

    invoke-virtual {v0}, Lcom/lzx/iteam/json/Yylex;->yylex()Lcom/lzx/iteam/json/Yytoken;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    .line 268
    iget-object v0, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcom/lzx/iteam/json/Yytoken;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lzx/iteam/json/Yytoken;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    .line 270
    :cond_0
    return-void
.end method

.method private peekStatus(Ljava/util/LinkedList;)I
    .locals 2
    .param p1, "statusStack"    # Ljava/util/LinkedList;

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 38
    const/4 v1, -0x1

    .line 40
    :goto_0
    return v1

    .line 39
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 40
    .local v0, "status":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/json/JSONParser;->lexer:Lcom/lzx/iteam/json/Yylex;

    invoke-virtual {v0}, Lcom/lzx/iteam/json/Yylex;->getPosition()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lzx/iteam/json/ParseException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/io/Reader;Lcom/lzx/iteam/json/ContainerFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/Reader;Lcom/lzx/iteam/json/ContainerFactory;)Ljava/lang/Object;
    .locals 12
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "containerFactory"    # Lcom/lzx/iteam/json/ContainerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lzx/iteam/json/ParseException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 110
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/json/JSONParser;->reset(Ljava/io/Reader;)V

    .line 111
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 112
    .local v5, "statusStack":Ljava/util/LinkedList;
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 116
    .local v7, "valueStack":Ljava/util/LinkedList;
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lzx/iteam/json/JSONParser;->nextToken()V

    .line 117
    iget v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    packed-switch v8, :pswitch_data_0

    .line 254
    :goto_0
    :pswitch_0
    iget v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    if-ne v8, v10, :cond_5

    .line 255
    new-instance v8, Lcom/lzx/iteam/json/ParseException;

    invoke-virtual {p0}, Lcom/lzx/iteam/json/JSONParser;->getPosition()I

    move-result v9

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    invoke-direct {v8, v9, v10, v11}, Lcom/lzx/iteam/json/ParseException;-><init>(IILjava/lang/Object;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "ie":Ljava/io/IOException;
    throw v0

    .line 119
    .end local v0    # "ie":Ljava/io/IOException;
    :pswitch_1
    :try_start_1
    iget-object v8, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget v8, v8, Lcom/lzx/iteam/json/Yytoken;->type:I

    packed-switch v8, :pswitch_data_1

    .line 136
    :pswitch_2
    const/4 v8, -0x1

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    goto :goto_0

    .line 121
    :pswitch_3
    const/4 v8, 0x1

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 122
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 123
    iget-object v8, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget-object v8, v8, Lcom/lzx/iteam/json/Yytoken;->value:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    :pswitch_4
    const/4 v8, 0x2

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 127
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 128
    invoke-direct {p0, p2}, Lcom/lzx/iteam/json/JSONParser;->createObjectContainer(Lcom/lzx/iteam/json/ContainerFactory;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :pswitch_5
    const/4 v8, 0x3

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 132
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 133
    invoke-direct {p0, p2}, Lcom/lzx/iteam/json/JSONParser;->createArrayContainer(Lcom/lzx/iteam/json/ContainerFactory;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :pswitch_6
    iget-object v8, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget v8, v8, Lcom/lzx/iteam/json/Yytoken;->type:I

    if-ne v8, v10, :cond_1

    .line 142
    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 144
    :cond_1
    new-instance v8, Lcom/lzx/iteam/json/ParseException;

    invoke-virtual {p0}, Lcom/lzx/iteam/json/JSONParser;->getPosition()I

    move-result v9

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    invoke-direct {v8, v9, v10, v11}, Lcom/lzx/iteam/json/ParseException;-><init>(IILjava/lang/Object;)V

    throw v8

    .line 147
    :pswitch_7
    iget-object v8, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget v8, v8, Lcom/lzx/iteam/json/Yytoken;->type:I

    packed-switch v8, :pswitch_data_2

    .line 172
    :pswitch_8
    const/4 v8, -0x1

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    goto :goto_0

    .line 151
    :pswitch_9
    iget-object v8, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget-object v8, v8, Lcom/lzx/iteam/json/Yytoken;->value:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 152
    iget-object v8, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget-object v1, v8, Lcom/lzx/iteam/json/Yytoken;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 153
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 154
    const/4 v8, 0x4

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 155
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 158
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    const/4 v8, -0x1

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    goto/16 :goto_0

    .line 162
    :pswitch_a
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-le v8, v11, :cond_3

    .line 163
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 164
    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 165
    invoke-direct {p0, v5}, Lcom/lzx/iteam/json/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v8

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    goto/16 :goto_0

    .line 168
    :cond_3
    const/4 v8, 0x1

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    goto/16 :goto_0

    .line 178
    :pswitch_b
    iget-object v8, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget v8, v8, Lcom/lzx/iteam/json/Yytoken;->type:I

    packed-switch v8, :pswitch_data_3

    .line 209
    :pswitch_c
    const/4 v8, -0x1

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    goto/16 :goto_0

    .line 182
    :pswitch_d
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 183
    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 185
    .local v4, "parent":Ljava/util/Map;
    iget-object v8, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget-object v8, v8, Lcom/lzx/iteam/json/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v4, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-direct {p0, v5}, Lcom/lzx/iteam/json/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v8

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    goto/16 :goto_0

    .line 189
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "parent":Ljava/util/Map;
    :pswitch_e
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 190
    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 192
    .restart local v4    # "parent":Ljava/util/Map;
    invoke-direct {p0, p2}, Lcom/lzx/iteam/json/JSONParser;->createArrayContainer(Lcom/lzx/iteam/json/ContainerFactory;)Ljava/util/List;

    move-result-object v2

    .line 193
    .local v2, "newArray":Ljava/util/List;
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/4 v8, 0x3

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 195
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 196
    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 199
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newArray":Ljava/util/List;
    .end local v4    # "parent":Ljava/util/Map;
    :pswitch_f
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 200
    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 202
    .restart local v4    # "parent":Ljava/util/Map;
    invoke-direct {p0, p2}, Lcom/lzx/iteam/json/JSONParser;->createObjectContainer(Lcom/lzx/iteam/json/ContainerFactory;)Ljava/util/Map;

    move-result-object v3

    .line 203
    .local v3, "newObject":Ljava/util/Map;
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/4 v8, 0x2

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 205
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 214
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "newObject":Ljava/util/Map;
    .end local v4    # "parent":Ljava/util/Map;
    :pswitch_10
    iget-object v8, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget v8, v8, Lcom/lzx/iteam/json/Yytoken;->type:I

    packed-switch v8, :pswitch_data_4

    .line 248
    :pswitch_11
    const/4 v8, -0x1

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    goto/16 :goto_0

    .line 218
    :pswitch_12
    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 219
    .local v6, "val":Ljava/util/List;
    iget-object v8, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget-object v8, v8, Lcom/lzx/iteam/json/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 222
    .end local v6    # "val":Ljava/util/List;
    :pswitch_13
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-le v8, v11, :cond_4

    .line 223
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 224
    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 225
    invoke-direct {p0, v5}, Lcom/lzx/iteam/json/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v8

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    goto/16 :goto_0

    .line 228
    :cond_4
    const/4 v8, 0x1

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    goto/16 :goto_0

    .line 232
    :pswitch_14
    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 233
    .restart local v6    # "val":Ljava/util/List;
    invoke-direct {p0, p2}, Lcom/lzx/iteam/json/JSONParser;->createObjectContainer(Lcom/lzx/iteam/json/ContainerFactory;)Ljava/util/Map;

    move-result-object v3

    .line 234
    .restart local v3    # "newObject":Ljava/util/Map;
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    const/4 v8, 0x2

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 236
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 240
    .end local v3    # "newObject":Ljava/util/Map;
    .end local v6    # "val":Ljava/util/List;
    :pswitch_15
    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 241
    .restart local v6    # "val":Ljava/util/List;
    invoke-direct {p0, p2}, Lcom/lzx/iteam/json/JSONParser;->createArrayContainer(Lcom/lzx/iteam/json/ContainerFactory;)Ljava/util/List;

    move-result-object v2

    .line 242
    .restart local v2    # "newArray":Ljava/util/List;
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    const/4 v8, 0x3

    iput v8, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 244
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 252
    .end local v2    # "newArray":Ljava/util/List;
    .end local v6    # "val":Ljava/util/List;
    :pswitch_16
    new-instance v8, Lcom/lzx/iteam/json/ParseException;

    invoke-virtual {p0}, Lcom/lzx/iteam/json/JSONParser;->getPosition()I

    move-result v9

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    invoke-direct {v8, v9, v10, v11}, Lcom/lzx/iteam/json/ParseException;-><init>(IILjava/lang/Object;)V

    throw v8

    .line 257
    :cond_5
    iget-object v8, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget v8, v8, Lcom/lzx/iteam/json/Yytoken;->type:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v8, v10, :cond_0

    .line 263
    new-instance v8, Lcom/lzx/iteam/json/ParseException;

    invoke-virtual {p0}, Lcom/lzx/iteam/json/JSONParser;->getPosition()I

    move-result v9

    iget-object v10, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    invoke-direct {v8, v9, v11, v10}, Lcom/lzx/iteam/json/ParseException;-><init>(IILjava/lang/Object;)V

    throw v8

    .line 117
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_16
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_10
        :pswitch_b
    .end packed-switch

    .line 119
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 147
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_0
    .end packed-switch

    .line 178
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_0
    .end packed-switch

    .line 214
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_12
        :pswitch_14
        :pswitch_11
        :pswitch_15
        :pswitch_13
        :pswitch_0
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lzx/iteam/json/ParseException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/lang/String;Lcom/lzx/iteam/json/ContainerFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Lcom/lzx/iteam/json/ContainerFactory;)Ljava/lang/Object;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "containerFactory"    # Lcom/lzx/iteam/json/ContainerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lzx/iteam/json/ParseException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "in":Ljava/io/StringReader;
    :try_start_0
    invoke-virtual {p0, v1, p2}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/io/Reader;Lcom/lzx/iteam/json/ContainerFactory;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 81
    :catch_0
    move-exception v0

    .line 85
    .local v0, "ie":Ljava/io/IOException;
    new-instance v2, Lcom/lzx/iteam/json/ParseException;

    const/4 v3, -0x1

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v0}, Lcom/lzx/iteam/json/ParseException;-><init>(IILjava/lang/Object;)V

    throw v2
.end method

.method public parse(Ljava/io/Reader;Lcom/lzx/iteam/json/ContentHandler;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "contentHandler"    # Lcom/lzx/iteam/json/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lzx/iteam/json/ParseException;
        }
    .end annotation

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/io/Reader;Lcom/lzx/iteam/json/ContentHandler;Z)V

    .line 311
    return-void
.end method

.method public parse(Ljava/io/Reader;Lcom/lzx/iteam/json/ContentHandler;Z)V
    .locals 11
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "contentHandler"    # Lcom/lzx/iteam/json/ContentHandler;
    .param p3, "isResume"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lzx/iteam/json/ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, -0x1

    .line 328
    if-nez p3, :cond_3

    .line 329
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/json/JSONParser;->reset(Ljava/io/Reader;)V

    .line 330
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/lzx/iteam/json/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    .line 340
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/lzx/iteam/json/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    .line 344
    .local v5, "statusStack":Ljava/util/LinkedList;
    :cond_1
    :try_start_0
    iget v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    packed-switch v6, :pswitch_data_0

    .line 506
    :cond_2
    :goto_1
    :pswitch_0
    iget v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    if-ne v6, v10, :cond_9

    .line 507
    new-instance v6, Lcom/lzx/iteam/json/ParseException;

    invoke-virtual {p0}, Lcom/lzx/iteam/json/JSONParser;->getPosition()I

    move-result v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    invoke-direct {v6, v7, v8, v9}, Lcom/lzx/iteam/json/ParseException;-><init>(IILjava/lang/Object;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lzx/iteam/json/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    .line 511
    :catch_0
    move-exception v1

    .line 512
    .local v1, "ie":Ljava/io/IOException;
    iput v10, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 513
    throw v1

    .line 333
    .end local v1    # "ie":Ljava/io/IOException;
    .end local v5    # "statusStack":Ljava/util/LinkedList;
    :cond_3
    iget-object v6, p0, Lcom/lzx/iteam/json/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    if-nez v6, :cond_0

    .line 334
    const/4 p3, 0x0

    .line 335
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/json/JSONParser;->reset(Ljava/io/Reader;)V

    .line 336
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/lzx/iteam/json/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    goto :goto_0

    .line 346
    .restart local v5    # "statusStack":Ljava/util/LinkedList;
    :pswitch_1
    :try_start_1
    invoke-interface {p2}, Lcom/lzx/iteam/json/ContentHandler;->startJSON()V

    .line 347
    invoke-direct {p0}, Lcom/lzx/iteam/json/JSONParser;->nextToken()V

    .line 348
    iget-object v6, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget v6, v6, Lcom/lzx/iteam/json/Yytoken;->type:I

    packed-switch v6, :pswitch_data_1

    .line 368
    :pswitch_2
    const/4 v6, -0x1

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/lzx/iteam/json/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 515
    :catch_1
    move-exception v3

    .line 516
    .local v3, "pe":Lcom/lzx/iteam/json/ParseException;
    iput v10, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 517
    throw v3

    .line 350
    .end local v3    # "pe":Lcom/lzx/iteam/json/ParseException;
    :pswitch_3
    const/4 v6, 0x1

    :try_start_2
    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 351
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 352
    iget-object v6, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget-object v6, v6, Lcom/lzx/iteam/json/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v6}, Lcom/lzx/iteam/json/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 501
    :cond_4
    :goto_2
    :pswitch_4
    return-void

    .line 356
    :pswitch_5
    const/4 v6, 0x2

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 357
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 358
    invoke-interface {p2}, Lcom/lzx/iteam/json/ContentHandler;->startObject()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 362
    :pswitch_6
    const/4 v6, 0x3

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 363
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 364
    invoke-interface {p2}, Lcom/lzx/iteam/json/ContentHandler;->startArray()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 373
    :pswitch_7
    invoke-direct {p0}, Lcom/lzx/iteam/json/JSONParser;->nextToken()V

    .line 374
    iget-object v6, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget v6, v6, Lcom/lzx/iteam/json/Yytoken;->type:I

    if-ne v6, v10, :cond_5

    .line 375
    invoke-interface {p2}, Lcom/lzx/iteam/json/ContentHandler;->endJSON()V

    .line 376
    const/4 v6, 0x6

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/lzx/iteam/json/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 519
    :catch_2
    move-exception v4

    .line 520
    .local v4, "re":Ljava/lang/RuntimeException;
    iput v10, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 521
    throw v4

    .line 380
    .end local v4    # "re":Ljava/lang/RuntimeException;
    :cond_5
    const/4 v6, -0x1

    :try_start_3
    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 381
    new-instance v6, Lcom/lzx/iteam/json/ParseException;

    invoke-virtual {p0}, Lcom/lzx/iteam/json/JSONParser;->getPosition()I

    move-result v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    invoke-direct {v6, v7, v8, v9}, Lcom/lzx/iteam/json/ParseException;-><init>(IILjava/lang/Object;)V

    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/lzx/iteam/json/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    .line 523
    :catch_3
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Error;
    iput v10, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 525
    throw v0

    .line 385
    .end local v0    # "e":Ljava/lang/Error;
    :pswitch_8
    :try_start_4
    invoke-direct {p0}, Lcom/lzx/iteam/json/JSONParser;->nextToken()V

    .line 386
    iget-object v6, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget v6, v6, Lcom/lzx/iteam/json/Yytoken;->type:I

    packed-switch v6, :pswitch_data_2

    .line 413
    :pswitch_9
    const/4 v6, -0x1

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    goto/16 :goto_1

    .line 390
    :pswitch_a
    iget-object v6, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget-object v6, v6, Lcom/lzx/iteam/json/Yytoken;->value:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 391
    iget-object v6, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget-object v2, v6, Lcom/lzx/iteam/json/Yytoken;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 392
    .local v2, "key":Ljava/lang/String;
    const/4 v6, 0x4

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 393
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 394
    invoke-interface {p2, v2}, Lcom/lzx/iteam/json/ContentHandler;->startObjectEntry(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 398
    .end local v2    # "key":Ljava/lang/String;
    :cond_6
    const/4 v6, -0x1

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    goto/16 :goto_1

    .line 402
    :pswitch_b
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-le v6, v9, :cond_7

    .line 403
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 404
    invoke-direct {p0, v5}, Lcom/lzx/iteam/json/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v6

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 409
    :goto_3
    invoke-interface {p2}, Lcom/lzx/iteam/json/ContentHandler;->endObject()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 407
    :cond_7
    const/4 v6, 0x1

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    goto :goto_3

    .line 419
    :pswitch_c
    invoke-direct {p0}, Lcom/lzx/iteam/json/JSONParser;->nextToken()V

    .line 420
    iget-object v6, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget v6, v6, Lcom/lzx/iteam/json/Yytoken;->type:I

    packed-switch v6, :pswitch_data_3

    .line 448
    :pswitch_d
    const/4 v6, -0x1

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    goto/16 :goto_1

    .line 424
    :pswitch_e
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 425
    invoke-direct {p0, v5}, Lcom/lzx/iteam/json/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v6

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 426
    iget-object v6, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget-object v6, v6, Lcom/lzx/iteam/json/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v6}, Lcom/lzx/iteam/json/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 428
    invoke-interface {p2}, Lcom/lzx/iteam/json/ContentHandler;->endObjectEntry()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 432
    :pswitch_f
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 433
    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 434
    const/4 v6, 0x3

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 435
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 436
    invoke-interface {p2}, Lcom/lzx/iteam/json/ContentHandler;->startArray()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 440
    :pswitch_10
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 441
    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 442
    const/4 v6, 0x2

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 443
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 444
    invoke-interface {p2}, Lcom/lzx/iteam/json/ContentHandler;->startObject()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 457
    :pswitch_11
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 458
    invoke-direct {p0, v5}, Lcom/lzx/iteam/json/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v6

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 459
    invoke-interface {p2}, Lcom/lzx/iteam/json/ContentHandler;->endObjectEntry()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 464
    :pswitch_12
    invoke-direct {p0}, Lcom/lzx/iteam/json/JSONParser;->nextToken()V

    .line 465
    iget-object v6, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget v6, v6, Lcom/lzx/iteam/json/Yytoken;->type:I

    packed-switch v6, :pswitch_data_4

    .line 496
    :pswitch_13
    const/4 v6, -0x1

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    goto/16 :goto_1

    .line 469
    :pswitch_14
    iget-object v6, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget-object v6, v6, Lcom/lzx/iteam/json/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v6}, Lcom/lzx/iteam/json/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 473
    :pswitch_15
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-le v6, v9, :cond_8

    .line 474
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 475
    invoke-direct {p0, v5}, Lcom/lzx/iteam/json/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v6

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 480
    :goto_4
    invoke-interface {p2}, Lcom/lzx/iteam/json/ContentHandler;->endArray()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 478
    :cond_8
    const/4 v6, 0x1

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    goto :goto_4

    .line 484
    :pswitch_16
    const/4 v6, 0x2

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 485
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 486
    invoke-interface {p2}, Lcom/lzx/iteam/json/ContentHandler;->startObject()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 490
    :pswitch_17
    const/4 v6, 0x3

    iput v6, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 491
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 492
    invoke-interface {p2}, Lcom/lzx/iteam/json/ContentHandler;->startArray()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 504
    :pswitch_18
    new-instance v6, Lcom/lzx/iteam/json/ParseException;

    invoke-virtual {p0}, Lcom/lzx/iteam/json/JSONParser;->getPosition()I

    move-result v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    invoke-direct {v6, v7, v8, v9}, Lcom/lzx/iteam/json/ParseException;-><init>(IILjava/lang/Object;)V

    throw v6

    .line 509
    :cond_9
    iget-object v6, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    iget v6, v6, Lcom/lzx/iteam/json/Yytoken;->type:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/lzx/iteam/json/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    if-ne v6, v10, :cond_1

    .line 528
    iput v10, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 529
    new-instance v6, Lcom/lzx/iteam/json/ParseException;

    invoke-virtual {p0}, Lcom/lzx/iteam/json/JSONParser;->getPosition()I

    move-result v7

    iget-object v8, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    invoke-direct {v6, v7, v9, v8}, Lcom/lzx/iteam/json/ParseException;-><init>(IILjava/lang/Object;)V

    throw v6

    .line 344
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_18
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_12
        :pswitch_c
        :pswitch_11
        :pswitch_4
    .end packed-switch

    .line 348
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 386
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_0
    .end packed-switch

    .line 420
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_10
        :pswitch_d
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_0
    .end packed-switch

    .line 465
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_14
        :pswitch_16
        :pswitch_13
        :pswitch_17
        :pswitch_15
        :pswitch_0
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;Lcom/lzx/iteam/json/ContentHandler;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "contentHandler"    # Lcom/lzx/iteam/json/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lzx/iteam/json/ParseException;
        }
    .end annotation

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/lang/String;Lcom/lzx/iteam/json/ContentHandler;Z)V

    .line 294
    return-void
.end method

.method public parse(Ljava/lang/String;Lcom/lzx/iteam/json/ContentHandler;Z)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "contentHandler"    # Lcom/lzx/iteam/json/ContentHandler;
    .param p3, "isResume"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lzx/iteam/json/ParseException;
        }
    .end annotation

    .prologue
    .line 297
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, "in":Ljava/io/StringReader;
    :try_start_0
    invoke-virtual {p0, v1, p2, p3}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/io/Reader;Lcom/lzx/iteam/json/ContentHandler;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 305
    .local v0, "ie":Ljava/io/IOException;
    new-instance v2, Lcom/lzx/iteam/json/ParseException;

    const/4 v3, -0x1

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v0}, Lcom/lzx/iteam/json/ParseException;-><init>(IILjava/lang/Object;)V

    throw v2
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/lzx/iteam/json/JSONParser;->token:Lcom/lzx/iteam/json/Yytoken;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/json/JSONParser;->status:I

    .line 50
    iput-object v1, p0, Lcom/lzx/iteam/json/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    .line 51
    return-void
.end method

.method public reset(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/json/JSONParser;->lexer:Lcom/lzx/iteam/json/Yylex;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/json/Yylex;->yyreset(Ljava/io/Reader;)V

    .line 62
    invoke-virtual {p0}, Lcom/lzx/iteam/json/JSONParser;->reset()V

    .line 63
    return-void
.end method
