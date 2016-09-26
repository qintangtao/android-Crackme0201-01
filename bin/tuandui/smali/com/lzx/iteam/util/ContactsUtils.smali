.class public Lcom/lzx/iteam/util/ContactsUtils;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# static fields
.field public static final PHOTO_COLUMN:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ContactsUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lzx/iteam/util/ContactsUtils;->PHOTO_COLUMN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadContactPhoto(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "photoId"    # J
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 25
    const/4 v7, 0x0

    .line 26
    .local v7, "photoCursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 29
    .local v6, "photoBm":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 30
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 31
    sget-object v2, Lcom/lzx/iteam/util/ContactsUtils;->PHOTO_COLUMN:[Ljava/lang/String;

    .line 32
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 29
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 34
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 36
    .local v8, "photoData":[B
    const/4 v0, 0x0

    .line 37
    array-length v1, v8

    .line 36
    invoke-static {v8, v0, v1, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 40
    .end local v8    # "photoData":[B
    :cond_0
    if-eqz v7, :cond_1

    .line 41
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 45
    :cond_1
    return-object v6

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    if-eqz v7, :cond_2

    .line 41
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_2
    throw v0
.end method

.method public static queryForRawContactId(Landroid/content/ContentResolver;J)J
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J

    .prologue
    .line 49
    const/4 v8, 0x0

    .line 50
    .local v8, "rawContactIdCursor":Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 52
    .local v6, "rawContactId":J
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 53
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "contact_id="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 52
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 55
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 60
    :cond_0
    if-eqz v8, :cond_1

    .line 61
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_1
    return-wide v6

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    if-eqz v8, :cond_2

    .line 61
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_2
    throw v0
.end method
