.class public Lcom/lzx/iteam/json/JSONValue;
.super Ljava/lang/Object;
.source "JSONValue.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 211
    const/4 v1, 0x0

    .line 214
    :goto_0
    return-object v1

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 213
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0, v0}, Lcom/lzx/iteam/json/JSONValue;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 222
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 264
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 224
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    .line 251
    if-ltz v0, :cond_1

    const/16 v4, 0x1f

    if-le v0, v4, :cond_3

    :cond_1
    const/16 v4, 0x7f

    if-lt v0, v4, :cond_2

    const/16 v4, 0x9f

    if-le v0, v4, :cond_3

    :cond_2
    const/16 v4, 0x2000

    if-lt v0, v4, :cond_5

    const/16 v4, 0x20ff

    if-gt v0, v4, :cond_5

    .line 252
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "ss":Ljava/lang/String;
    const-string v4, "\\u"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-lt v2, v4, :cond_4

    .line 257
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    .end local v2    # "k":I
    .end local v3    # "ss":Ljava/lang/String;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :sswitch_0
    const-string v4, "\\\""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 229
    :sswitch_1
    const-string v4, "\\\\"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 232
    :sswitch_2
    const-string v4, "\\b"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 235
    :sswitch_3
    const-string v4, "\\f"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 238
    :sswitch_4
    const-string v4, "\\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 241
    :sswitch_5
    const-string v4, "\\r"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 244
    :sswitch_6
    const-string v4, "\\t"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 247
    :sswitch_7
    const-string v4, "\\/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 255
    .restart local v2    # "k":I
    .restart local v3    # "ss":Ljava/lang/String;
    :cond_4
    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 260
    .end local v2    # "k":I
    .end local v3    # "ss":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 224
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_6
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_5
        0x22 -> :sswitch_0
        0x2f -> :sswitch_7
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public static parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .param p0, "in"    # Ljava/io/Reader;

    .prologue
    .line 35
    :try_start_0
    new-instance v0, Lcom/lzx/iteam/json/JSONParser;

    invoke-direct {v0}, Lcom/lzx/iteam/json/JSONParser;-><init>()V

    .line 36
    .local v0, "parser":Lcom/lzx/iteam/json/JSONParser;
    invoke-virtual {v0, p0}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 39
    .end local v0    # "parser":Lcom/lzx/iteam/json/JSONParser;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "in":Ljava/io/StringReader;
    invoke-static {v0}, Lcom/lzx/iteam/json/JSONValue;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static parseWithException(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .param p0, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lzx/iteam/json/ParseException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/lzx/iteam/json/JSONParser;

    invoke-direct {v0}, Lcom/lzx/iteam/json/JSONParser;-><init>()V

    .line 67
    .local v0, "parser":Lcom/lzx/iteam/json/JSONParser;
    invoke-virtual {v0, p0}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static parseWithException(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lzx/iteam/json/ParseException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/lzx/iteam/json/JSONParser;

    invoke-direct {v0}, Lcom/lzx/iteam/json/JSONParser;-><init>()V

    .line 72
    .local v0, "parser":Lcom/lzx/iteam/json/JSONParser;
    invoke-virtual {v0, p0}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 166
    if-nez p0, :cond_0

    .line 167
    const-string v0, "null"

    .line 201
    :goto_0
    return-object v0

    .line 169
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/lzx/iteam/json/JSONValue;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    move-object v0, p0

    .line 173
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    :cond_2
    const-string v0, "null"

    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_7

    move-object v0, p0

    .line 180
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 181
    :cond_5
    const-string v0, "null"

    goto :goto_0

    .line 183
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_7
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_8

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_8
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_9
    instance-of v0, p0, Lcom/lzx/iteam/json/JSONAware;

    if-eqz v0, :cond_a

    .line 193
    check-cast p0, Lcom/lzx/iteam/json/JSONAware;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/lzx/iteam/json/JSONAware;->toJSONString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 196
    check-cast p0, Ljava/util/Map;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/lzx/iteam/json/JSONObject;->toJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 198
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_c

    .line 199
    check-cast p0, Ljava/util/List;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/lzx/iteam/json/JSONArray;->toJSONString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 201
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x22

    .line 90
    if-nez p0, :cond_0

    .line 91
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 149
    .end local p0    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 95
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 97
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/lzx/iteam/json/JSONValue;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 102
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    move-object v0, p0

    .line 103
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    :cond_2
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_7

    move-object v0, p0

    .line 111
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    :cond_5
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_7
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_8

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_8
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_9
    instance-of v0, p0, Lcom/lzx/iteam/json/JSONStreamAware;

    if-eqz v0, :cond_a

    .line 129
    check-cast p0, Lcom/lzx/iteam/json/JSONStreamAware;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0, p1}, Lcom/lzx/iteam/json/JSONStreamAware;->writeJSONString(Ljava/io/Writer;)V

    goto :goto_0

    .line 133
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v0, p0, Lcom/lzx/iteam/json/JSONAware;

    if-eqz v0, :cond_b

    .line 134
    check-cast p0, Lcom/lzx/iteam/json/JSONAware;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/lzx/iteam/json/JSONAware;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 139
    check-cast p0, Ljava/util/Map;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/lzx/iteam/json/JSONObject;->writeJSONString(Ljava/util/Map;Ljava/io/Writer;)V

    goto/16 :goto_0

    .line 143
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_d

    .line 144
    check-cast p0, Ljava/util/List;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/lzx/iteam/json/JSONArray;->writeJSONString(Ljava/util/List;Ljava/io/Writer;)V

    goto/16 :goto_0

    .line 148
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
