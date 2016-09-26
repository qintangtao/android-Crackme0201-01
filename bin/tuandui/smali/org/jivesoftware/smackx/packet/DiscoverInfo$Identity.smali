.class public Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
.super Ljava/lang/Object;
.source "DiscoverInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/DiscoverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Identity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;",
        ">;"
    }
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    .line 276
    iput-object p2, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category and type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    .line 293
    iput-object p2, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    .line 294
    iput-object p3, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    .line 295
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->compareTo(Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;)I
    .locals 6
    .param p1, "other"    # Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .prologue
    .line 437
    iget-object v4, p1, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v0, ""

    .line 438
    .local v0, "otherLang":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v2, ""

    .line 441
    .local v2, "thisLang":Ljava/lang/String;
    :goto_1
    iget-object v4, p1, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v1, ""

    .line 442
    .local v1, "otherType":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v3, ""

    .line 444
    .local v3, "thisType":Ljava/lang/String;
    :goto_3
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    iget-object v5, p1, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 445
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 446
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 449
    const/4 v4, 0x0

    .line 457
    :goto_4
    return v4

    .line 437
    .end local v0    # "otherLang":Ljava/lang/String;
    .end local v1    # "otherType":Ljava/lang/String;
    .end local v2    # "thisLang":Ljava/lang/String;
    .end local v3    # "thisType":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    goto :goto_0

    .line 438
    .restart local v0    # "otherLang":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    goto :goto_1

    .line 441
    .restart local v2    # "thisLang":Ljava/lang/String;
    :cond_2
    iget-object v1, p1, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    goto :goto_2

    .line 442
    .restart local v1    # "otherType":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    goto :goto_3

    .line 451
    .restart local v3    # "thisType":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_4

    .line 454
    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_4

    .line 457
    :cond_6
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    iget-object v5, p1, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 388
    if-nez p1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v7

    .line 390
    :cond_1
    if-ne p1, p0, :cond_2

    move v7, v8

    .line 391
    goto :goto_0

    .line 392
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    if-ne v9, v10, :cond_0

    move-object v0, p1

    .line 395
    check-cast v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 396
    .local v0, "other":Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    iget-object v9, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    iget-object v10, v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 399
    iget-object v9, v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    if-nez v9, :cond_3

    const-string v1, ""

    .line 400
    .local v1, "otherLang":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    if-nez v9, :cond_4

    const-string v4, ""

    .line 401
    .local v4, "thisLang":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 405
    iget-object v9, v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    if-nez v9, :cond_5

    const-string v3, ""

    .line 406
    .local v3, "otherType":Ljava/lang/String;
    :goto_3
    iget-object v9, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    if-nez v9, :cond_6

    const-string v6, ""

    .line 407
    .local v6, "thisType":Ljava/lang/String;
    :goto_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 410
    iget-object v9, v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    if-nez v9, :cond_7

    const-string v2, ""

    .line 411
    .local v2, "otherName":Ljava/lang/String;
    :goto_5
    iget-object v9, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    if-nez v9, :cond_8

    const-string v5, ""

    .line 412
    .local v5, "thisName":Ljava/lang/String;
    :goto_6
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    .line 415
    goto :goto_0

    .line 399
    .end local v1    # "otherLang":Ljava/lang/String;
    .end local v2    # "otherName":Ljava/lang/String;
    .end local v3    # "otherType":Ljava/lang/String;
    .end local v4    # "thisLang":Ljava/lang/String;
    .end local v5    # "thisName":Ljava/lang/String;
    .end local v6    # "thisType":Ljava/lang/String;
    :cond_3
    iget-object v1, v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    goto :goto_1

    .line 400
    .restart local v1    # "otherLang":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    goto :goto_2

    .line 405
    .restart local v4    # "thisLang":Ljava/lang/String;
    :cond_5
    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    goto :goto_3

    .line 406
    .restart local v3    # "otherType":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    goto :goto_4

    .line 410
    .restart local v6    # "thisType":Ljava/lang/String;
    :cond_7
    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    goto :goto_5

    .line 411
    .restart local v2    # "otherName":Ljava/lang/String;
    :cond_8
    iget-object v5, v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    goto :goto_6
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 420
    const/4 v0, 0x1

    .line 421
    .local v0, "result":I
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x25

    .line 422
    mul-int/lit8 v3, v0, 0x25

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 423
    mul-int/lit8 v3, v0, 0x25

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 424
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 425
    return v0

    .line 422
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 423
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 424
    :cond_2
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "<identity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 368
    const-string v1, " xml:lang=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_0
    const-string v1, " category=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 375
    const-string v1, " type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_1
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
