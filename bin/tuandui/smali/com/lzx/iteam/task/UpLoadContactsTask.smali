.class public Lcom/lzx/iteam/task/UpLoadContactsTask;
.super Landroid/os/AsyncTask;
.source "UpLoadContactsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# static fields
.field private static final UPLOADPHONE:I = 0x2329


# instance fields
.field private mAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

.field private mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRegistPhone:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsers:Ljava/util/HashMap;
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

.field private prefUtil:Lcom/lzx/iteam/util/PreferenceUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    new-instance v0, Lcom/lzx/iteam/task/UpLoadContactsTask$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/task/UpLoadContactsTask$1;-><init>(Lcom/lzx/iteam/task/UpLoadContactsTask;)V

    iput-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mHandler:Landroid/os/Handler;

    .line 76
    iput-object p1, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

    .line 78
    invoke-static {p1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->prefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mRegistPhone:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mRegistPhone:Ljava/util/HashMap;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->prefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "cloud_phone_2_useid"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mUsers:Ljava/util/HashMap;

    .line 85
    iget-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mUsers:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mUsers:Ljava/util/HashMap;

    .line 88
    :cond_1
    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/task/UpLoadContactsTask;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/task/UpLoadContactsTask;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mRegistPhone:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/task/UpLoadContactsTask;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/task/UpLoadContactsTask;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->prefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method private fillContactList()Lorg/json/JSONArray;
    .locals 9

    .prologue
    .line 158
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 159
    .local v6, "array":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .line 162
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 163
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 164
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 165
    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 166
    const-string v4, "data1"

    aput-object v4, v2, v3

    .line 168
    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 169
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 162
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 171
    if-eqz v7, :cond_1

    .line 172
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 183
    :cond_1
    if-eqz v7, :cond_2

    .line 184
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_2
    return-object v6

    .line 173
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/PhoneNumberArea;->formatNum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 176
    .local v8, "strPhoneNumber":Ljava/lang/String;
    invoke-static {v8}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    .end local v8    # "strPhoneNumber":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 183
    if-eqz v7, :cond_4

    .line 184
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_4
    throw v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/task/UpLoadContactsTask;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lzx/iteam/task/UpLoadContactsTask;->fillContactList()Lorg/json/JSONArray;

    move-result-object v0

    .line 94
    .local v0, "mPhones":Lorg/json/JSONArray;
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v2

    iget-object v1, v2, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    .line 95
    .local v1, "sid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "AA2Fhot5Uu4AlYxYm7YRgg=="

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/task/UpLoadContactsTask;->upLoadPhone(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-object v0
.end method

.method public getAllPhone()Lorg/json/JSONArray;
    .locals 12

    .prologue
    .line 112
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 113
    .local v6, "array":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .line 114
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 116
    .local v10, "phone":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 117
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 118
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 117
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 119
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 144
    if-eqz v8, :cond_1

    .line 145
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 149
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_1
    return-object v6

    .line 122
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_2
    :try_start_1
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 121
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "contactId":Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contact_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 123
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 127
    :cond_3
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 136
    if-eqz v10, :cond_0

    .line 137
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "contactId":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 141
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "strPhoneNumber"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    if-eqz v8, :cond_1

    .line 145
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 130
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "contactId":Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v1, "data1"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 129
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 132
    .local v11, "strPhoneNumber":Ljava/lang/String;
    if-eqz v11, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mRegistPhone:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 133
    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 143
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "contactId":Ljava/lang/String;
    .end local v11    # "strPhoneNumber":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 144
    if-eqz v8, :cond_5

    .line 145
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_5
    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/task/UpLoadContactsTask;->onPostExecute(Lorg/json/JSONArray;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public upLoadPhone(Ljava/lang/String;)V
    .locals 5
    .param p1, "phones"    # Ljava/lang/String;

    .prologue
    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "users"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v1, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;

    iget-object v2, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2329

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;-><init>(Lcom/lzx/iteam/task/UpLoadContactsTask;Landroid/os/Message;)V

    .line 196
    .local v1, "message":Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;
    const-string v2, "/api/user/sync_contacts"

    iput-object v2, v1, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->mApi:Ljava/lang/String;

    .line 197
    iput-object v0, v1, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->mParams:Ljava/util/List;

    .line 198
    iget-object v2, p0, Lcom/lzx/iteam/task/UpLoadContactsTask;->mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 200
    return-void
.end method
