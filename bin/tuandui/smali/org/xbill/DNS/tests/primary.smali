.class public Lorg/xbill/DNS/tests/primary;
.super Ljava/lang/Object;
.source "primary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 22
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    const/4 v13, 0x0

    .line 19
    .local v13, "time":Z
    const/4 v6, 0x0

    .line 20
    .local v6, "axfr":Z
    const/4 v11, 0x0

    .line 21
    .local v11, "iterator":Z
    const/4 v4, 0x0

    .line 23
    .local v4, "arg":I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 24
    invoke-static {}, Lorg/xbill/DNS/tests/primary;->usage()V

    .line 26
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    sub-int v17, v17, v4

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_3

    .line 36
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "arg":I
    .local v5, "arg":I
    aget-object v17, p0, v4

    sget-object v18, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static/range {v17 .. v18}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v12

    .line 37
    .local v12, "origin":Lorg/xbill/DNS/Name;
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "arg":I
    .restart local v4    # "arg":I
    aget-object v7, p0, v5

    .line 39
    .local v7, "file":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 40
    .local v14, "start":J
    new-instance v16, Lorg/xbill/DNS/Zone;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v7}, Lorg/xbill/DNS/Zone;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 41
    .local v16, "zone":Lorg/xbill/DNS/Zone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 42
    .local v8, "end":J
    if-eqz v6, :cond_8

    .line 43
    invoke-virtual/range {v16 .. v16}, Lorg/xbill/DNS/Zone;->AXFR()Ljava/util/Iterator;

    move-result-object v10

    .line 44
    .local v10, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_7

    .line 55
    .end local v10    # "it":Ljava/util/Iterator;
    :cond_1
    :goto_2
    if-eqz v13, :cond_2

    .line 56
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "; Load time: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v20, v8, v14

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    :cond_2
    return-void

    .line 27
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "end":J
    .end local v12    # "origin":Lorg/xbill/DNS/Name;
    .end local v14    # "start":J
    .end local v16    # "zone":Lorg/xbill/DNS/Zone;
    :cond_3
    const/16 v17, 0x0

    aget-object v17, p0, v17

    const-string v18, "-t"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 28
    const/4 v13, 0x1

    .line 33
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 29
    :cond_5
    const/16 v17, 0x0

    aget-object v17, p0, v17

    const-string v18, "-a"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 30
    const/4 v6, 0x1

    goto :goto_3

    .line 31
    :cond_6
    const/16 v17, 0x0

    aget-object v17, p0, v17

    const-string v18, "-i"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 32
    const/4 v11, 0x1

    goto :goto_3

    .line 45
    .restart local v7    # "file":Ljava/lang/String;
    .restart local v8    # "end":J
    .restart local v10    # "it":Ljava/util/Iterator;
    .restart local v12    # "origin":Lorg/xbill/DNS/Name;
    .restart local v14    # "start":J
    .restart local v16    # "zone":Lorg/xbill/DNS/Zone;
    :cond_7
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 47
    .end local v10    # "it":Ljava/util/Iterator;
    :cond_8
    if-eqz v11, :cond_9

    .line 48
    invoke-virtual/range {v16 .. v16}, Lorg/xbill/DNS/Zone;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 49
    .restart local v10    # "it":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 50
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_4

    .line 53
    .end local v10    # "it":Ljava/util/Iterator;
    :cond_9
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static usage()V
    .locals 2

    .prologue
    .line 12
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: primary [-t] [-a | -i] origin file"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 14
    return-void
.end method
