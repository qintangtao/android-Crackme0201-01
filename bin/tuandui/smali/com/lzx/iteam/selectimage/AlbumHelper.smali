.class public Lcom/lzx/iteam/selectimage/AlbumHelper;
.super Ljava/lang/Object;
.source "AlbumHelper.java"


# static fields
.field private static instance:Lcom/lzx/iteam/selectimage/AlbumHelper;


# instance fields
.field final TAG:Ljava/lang/String;

.field albumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field bucketList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lzx/iteam/selectimage/ImageBucket;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/app/Activity;

.field cr:Landroid/content/ContentResolver;

.field hasBuildImagesBucketList:Z

.field thumbnailList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/selectimage/AlbumHelper;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/selectimage/AlbumHelper;->thumbnailList:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/selectimage/AlbumHelper;->albumList:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/selectimage/AlbumHelper;->bucketList:Ljava/util/HashMap;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/selectimage/AlbumHelper;->hasBuildImagesBucketList:Z

    .line 30
    return-void
.end method

.method private getAlbumColumnData(Landroid/database/Cursor;)V
    .locals 17
    .param p1, "cur"    # Landroid/database/Cursor;

    .prologue
    .line 91
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 99
    const-string v14, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 100
    .local v2, "_idColumn":I
    const-string v14, "album"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 101
    .local v6, "albumColumn":I
    const-string v14, "album_art"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 102
    .local v5, "albumArtColumn":I
    const-string v14, "album_key"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 103
    .local v8, "albumKeyColumn":I
    const-string v14, "artist"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 104
    .local v10, "artistColumn":I
    const-string v14, "numsongs"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 108
    .local v13, "numOfSongsColumn":I
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 109
    .local v1, "_id":I
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "album":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "albumArt":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "albumKey":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, "artist":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 116
    .local v12, "numOfSongs":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/selectimage/AlbumHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " album:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " albumArt:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 117
    const-string v16, "albumKey: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " artist: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 118
    const-string v16, " numOfSongs: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "---"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 116
    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v11, "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "_id"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v14, "album"

    invoke-virtual {v11, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v14, "albumArt"

    invoke-virtual {v11, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v14, "albumKey"

    invoke-virtual {v11, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v14, "artist"

    invoke-virtual {v11, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v14, "numOfSongs"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/selectimage/AlbumHelper;->albumList:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_0

    .line 131
    .end local v1    # "_id":I
    .end local v2    # "_idColumn":I
    .end local v3    # "album":Ljava/lang/String;
    .end local v4    # "albumArt":Ljava/lang/String;
    .end local v5    # "albumArtColumn":I
    .end local v6    # "albumColumn":I
    .end local v7    # "albumKey":Ljava/lang/String;
    .end local v8    # "albumKeyColumn":I
    .end local v9    # "artist":Ljava/lang/String;
    .end local v10    # "artistColumn":I
    .end local v11    # "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "numOfSongs":I
    .end local v13    # "numOfSongsColumn":I
    :cond_1
    return-void
.end method

.method public static getHelper()Lcom/lzx/iteam/selectimage/AlbumHelper;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/lzx/iteam/selectimage/AlbumHelper;->instance:Lcom/lzx/iteam/selectimage/AlbumHelper;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/lzx/iteam/selectimage/AlbumHelper;

    invoke-direct {v0}, Lcom/lzx/iteam/selectimage/AlbumHelper;-><init>()V

    sput-object v0, Lcom/lzx/iteam/selectimage/AlbumHelper;->instance:Lcom/lzx/iteam/selectimage/AlbumHelper;

    .line 36
    :cond_0
    sget-object v0, Lcom/lzx/iteam/selectimage/AlbumHelper;->instance:Lcom/lzx/iteam/selectimage/AlbumHelper;

    return-object v0
.end method

.method private getThumbnail()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 47
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "image_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    .line 48
    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 49
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/AlbumHelper;->cr:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 51
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/lzx/iteam/selectimage/AlbumHelper;->getThumbnailColumnData(Landroid/database/Cursor;)V

    .line 52
    return-void
.end method

.method private getThumbnailColumnData(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cur"    # Landroid/database/Cursor;

    .prologue
    .line 55
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, "_idColumn":I
    const-string v5, "image_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 61
    .local v3, "image_idColumn":I
    const-string v5, "_data"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, "dataColumn":I
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 66
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 67
    .local v2, "image_id":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "image_path":Ljava/lang/String;
    iget-object v5, p0, Lcom/lzx/iteam/selectimage/AlbumHelper;->thumbnailList:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 79
    .end local v0    # "_idColumn":I
    .end local v1    # "dataColumn":I
    .end local v2    # "image_id":I
    .end local v3    # "image_idColumn":I
    .end local v4    # "image_path":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method buildImagesBucketList()V
    .locals 33

    .prologue
    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 145
    .local v30, "startTime":J
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "bucket_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    .line 146
    const-string v3, "picasa_id"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "_display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    .line 147
    const-string v3, "_size"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "bucket_display_name"

    aput-object v3, v4, v2

    .line 148
    .local v4, "columns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/selectimage/AlbumHelper;->cr:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 149
    const/4 v7, 0x0

    .line 148
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 150
    .local v14, "cur":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 152
    .local v22, "photoIDIndex":I
    const-string v2, "_data"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 153
    .local v24, "photoPathIndex":I
    const-string v2, "_display_name"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 154
    .local v23, "photoNameIndex":I
    const-string v2, "title"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 155
    .local v26, "photoTitleIndex":I
    const-string v2, "_size"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 157
    .local v25, "photoSizeIndex":I
    const-string v2, "bucket_display_name"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 158
    .local v10, "bucketDisplayNameIndex":I
    const-string v2, "bucket_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 159
    .local v12, "bucketIdIndex":I
    const-string v2, "picasa_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 160
    .local v28, "picasaIdIndex":I
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    .line 163
    :cond_0
    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, "_id":Ljava/lang/String;
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 165
    .local v20, "name":Ljava/lang/String;
    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 166
    .local v21, "path":Ljava/lang/String;
    move/from16 v0, v26

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 167
    .local v32, "title":Ljava/lang/String;
    move/from16 v0, v25

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 168
    .local v29, "size":Ljava/lang/String;
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 169
    .local v13, "bucketName":Ljava/lang/String;
    invoke-interface {v14, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 170
    .local v11, "bucketId":Ljava/lang/String;
    move/from16 v0, v28

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 172
    .local v27, "picasaId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/selectimage/AlbumHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ", bucketId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", picasaId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 173
    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " name:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " path:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 174
    const-string v5, " title: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " bucket: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 175
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "---"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/selectimage/AlbumHelper;->bucketList:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lzx/iteam/selectimage/ImageBucket;

    .line 178
    .local v9, "bucket":Lcom/lzx/iteam/selectimage/ImageBucket;
    if-nez v9, :cond_1

    .line 179
    new-instance v9, Lcom/lzx/iteam/selectimage/ImageBucket;

    .end local v9    # "bucket":Lcom/lzx/iteam/selectimage/ImageBucket;
    invoke-direct {v9}, Lcom/lzx/iteam/selectimage/ImageBucket;-><init>()V

    .line 180
    .restart local v9    # "bucket":Lcom/lzx/iteam/selectimage/ImageBucket;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/selectimage/AlbumHelper;->bucketList:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v9, Lcom/lzx/iteam/selectimage/ImageBucket;->imageList:Ljava/util/List;

    .line 182
    iput-object v13, v9, Lcom/lzx/iteam/selectimage/ImageBucket;->bucketName:Ljava/lang/String;

    .line 184
    :cond_1
    iget v2, v9, Lcom/lzx/iteam/selectimage/ImageBucket;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/lzx/iteam/selectimage/ImageBucket;->count:I

    .line 189
    iget-object v2, v9, Lcom/lzx/iteam/selectimage/ImageBucket;->imageList:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    .end local v8    # "_id":Ljava/lang/String;
    .end local v9    # "bucket":Lcom/lzx/iteam/selectimage/ImageBucket;
    .end local v10    # "bucketDisplayNameIndex":I
    .end local v11    # "bucketId":Ljava/lang/String;
    .end local v12    # "bucketIdIndex":I
    .end local v13    # "bucketName":Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "path":Ljava/lang/String;
    .end local v22    # "photoIDIndex":I
    .end local v23    # "photoNameIndex":I
    .end local v24    # "photoPathIndex":I
    .end local v25    # "photoSizeIndex":I
    .end local v26    # "photoTitleIndex":I
    .end local v27    # "picasaId":Ljava/lang/String;
    .end local v28    # "picasaIdIndex":I
    .end local v29    # "size":Ljava/lang/String;
    .end local v32    # "title":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/selectimage/AlbumHelper;->bucketList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 195
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 196
    .local v19, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lzx/iteam/selectimage/ImageBucket;>;>;"
    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 207
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/selectimage/AlbumHelper;->hasBuildImagesBucketList:Z

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 209
    .local v16, "endTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/selectimage/AlbumHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "use time: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, v16, v30

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void

    .line 198
    .end local v16    # "endTime":J
    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 199
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lzx/iteam/selectimage/ImageBucket;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lzx/iteam/selectimage/ImageBucket;

    .line 200
    .restart local v9    # "bucket":Lcom/lzx/iteam/selectimage/ImageBucket;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/selectimage/AlbumHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v9, Lcom/lzx/iteam/selectimage/ImageBucket;->bucketName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    iget v5, v9, Lcom/lzx/iteam/selectimage/ImageBucket;->count:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ---------- "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    iget-object v2, v9, Lcom/lzx/iteam/selectimage/ImageBucket;->imageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_3

    .line 203
    iget-object v2, v9, Lcom/lzx/iteam/selectimage/ImageBucket;->imageList:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    add-int/lit8 v18, v18, 0x1

    goto :goto_0
.end method

.method getAlbum()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 82
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "album_art"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    .line 83
    const-string v1, "album_key"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "numsongs"

    aput-object v1, v2, v0

    .line 84
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/AlbumHelper;->cr:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 86
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/lzx/iteam/selectimage/AlbumHelper;->getAlbumColumnData(Landroid/database/Cursor;)V

    .line 88
    return-void
.end method

.method public getImagesBucketList(Z)Ljava/util/List;
    .locals 4
    .param p1, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/selectimage/ImageBucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    if-nez p1, :cond_0

    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/lzx/iteam/selectimage/AlbumHelper;->hasBuildImagesBucketList:Z

    if-nez v3, :cond_1

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/selectimage/AlbumHelper;->buildImagesBucketList()V

    .line 217
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v2, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/selectimage/ImageBucket;>;"
    iget-object v3, p0, Lcom/lzx/iteam/selectimage/AlbumHelper;->bucketList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 219
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 220
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lzx/iteam/selectimage/ImageBucket;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 225
    return-object v2

    .line 222
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 223
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lzx/iteam/selectimage/ImageBucket;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/selectimage/ImageBucket;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getOriginalImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "image_id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 229
    const/4 v7, 0x0

    .line 230
    .local v7, "path":Ljava/lang/String;
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/AlbumHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "---(^o^)----"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 232
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/AlbumHelper;->cr:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 232
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 234
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 236
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 239
    :cond_0
    return-object v7
.end method

.method public init(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/AlbumHelper;->context:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 41
    iput-object p1, p0, Lcom/lzx/iteam/selectimage/AlbumHelper;->context:Landroid/app/Activity;

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/selectimage/AlbumHelper;->cr:Landroid/content/ContentResolver;

    .line 44
    :cond_0
    return-void
.end method
