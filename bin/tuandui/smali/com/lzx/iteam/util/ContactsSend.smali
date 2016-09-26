.class public final Lcom/lzx/iteam/util/ContactsSend;
.super Ljava/lang/Object;
.source "ContactsSend.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsSync"

.field public static address:Ljava/util/Dictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Dictionary",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/lzx/iteam/util/ContactsSend;


# instance fields
.field public mContactName:Ljava/lang/String;

.field public userNameCard:Ljava/util/Dictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Dictionary",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lzx/iteam/util/ContactsSend;->address:Ljava/util/Dictionary;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/util/ContactsSend;->userNameCard:Ljava/util/Dictionary;

    .line 13
    return-void
.end method

.method public static getFormatedContact(Landroid/content/Context;J)Ljava/lang/String;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactID"    # J

    .prologue
    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 92
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contact_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "mSelection":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 94
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 93
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v12

    .line 97
    .local v12, "ei":Landroid/content/EntityIterator;
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    .local v24, "result":Ljava/lang/StringBuffer;
    const/16 v16, 0x1

    .line 100
    .local v16, "first":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/content/EntityIterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 190
    invoke-interface {v12}, Landroid/content/EntityIterator;->close()V

    .line 193
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 101
    :cond_1
    :try_start_1
    invoke-interface {v12}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Entity;

    .line 102
    .local v15, "entity":Landroid/content/Entity;
    if-eqz v16, :cond_2

    .line 103
    const/16 v16, 0x0

    .line 106
    :cond_2
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v9, "contactName":Ljava/lang/StringBuffer;
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v23, "phoneNumber":Ljava/lang/StringBuffer;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 109
    .local v14, "emailAddress":Ljava/lang/StringBuffer;
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v21, "organization":Ljava/lang/StringBuffer;
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    .local v26, "website":Ljava/lang/StringBuffer;
    invoke-virtual {v15}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 171
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 173
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_4
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 176
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :cond_5
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 179
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_6
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 182
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    :cond_7
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 186
    const-string v3, "\u901a\u8fc7\u201c\u56e2\u961f\u201d\u53d1\u9001"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 189
    .end local v9    # "contactName":Ljava/lang/StringBuffer;
    .end local v14    # "emailAddress":Ljava/lang/StringBuffer;
    .end local v15    # "entity":Landroid/content/Entity;
    .end local v21    # "organization":Ljava/lang/StringBuffer;
    .end local v23    # "phoneNumber":Ljava/lang/StringBuffer;
    .end local v26    # "website":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v3

    .line 190
    invoke-interface {v12}, Landroid/content/EntityIterator;->close()V

    .line 191
    throw v3

    .line 111
    .restart local v9    # "contactName":Ljava/lang/StringBuffer;
    .restart local v14    # "emailAddress":Ljava/lang/StringBuffer;
    .restart local v15    # "entity":Landroid/content/Entity;
    .restart local v21    # "organization":Ljava/lang/StringBuffer;
    .restart local v23    # "phoneNumber":Ljava/lang/StringBuffer;
    .restart local v26    # "website":Ljava/lang/StringBuffer;
    :cond_8
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Entity$NamedContentValues;

    .line 112
    .local v20, "ncv":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v20

    iget-object v10, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 113
    .local v10, "cv":Landroid/content/ContentValues;
    const-string v4, "mimetype"

    invoke-virtual {v10, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 114
    .local v18, "mimeType":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 115
    const-string v4, "vnd.android.cursor.item/name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 116
    const-string v4, "data1"

    invoke-virtual {v10, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 117
    .local v19, "name":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 118
    const-string v4, "\u59d3\u540d:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v4, "\n"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 122
    .end local v19    # "name":Ljava/lang/String;
    :cond_9
    const-string v4, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 123
    const-string v4, "data1"

    invoke-virtual {v10, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 124
    .local v13, "email":Ljava/lang/String;
    invoke-static {v13}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 125
    const-string v4, "\u90ae\u4ef6:"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v4, "\n"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 129
    .end local v13    # "email":Ljava/lang/String;
    :cond_a
    const-string v4, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 130
    const-string v4, "vnd.android.cursor.item/website"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 131
    const-string v4, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 132
    const-string v4, "data1"

    invoke-virtual {v10, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 133
    .local v22, "phone":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 134
    const-string v4, "\u7535\u8bdd:"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const-string v4, "\n"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 138
    .end local v22    # "phone":Ljava/lang/String;
    :cond_b
    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 139
    const-string v4, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 140
    const-string v4, "data4"

    invoke-virtual {v10, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 141
    .local v17, "jobtitle":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 142
    const-string v4, "\u804c\u52a1:"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    const-string v4, "\n"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_c
    const-string v4, "data1"

    invoke-virtual {v10, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "company":Ljava/lang/String;
    invoke-static {v8}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 148
    const-string v4, "\u4f01\u4e1a:"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v4, "\n"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :cond_d
    const-string v4, "data5"

    invoke-virtual {v10, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 153
    .local v11, "department":Ljava/lang/String;
    invoke-static {v11}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 154
    const-string v4, "\u90e8\u95e8:"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    const-string v4, "\n"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 158
    .end local v8    # "company":Ljava/lang/String;
    .end local v11    # "department":Ljava/lang/String;
    .end local v17    # "jobtitle":Ljava/lang/String;
    :cond_e
    const-string v4, "vnd.android.cursor.item/note"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 159
    const-string v4, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 160
    const-string v4, "vnd.android.cursor.item/website"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    const-string v4, "data1"

    invoke-virtual {v10, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 162
    .local v25, "url":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 163
    const-string v4, "\u4e3b\u9875:"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    const-string v4, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public static getInstance()Lcom/lzx/iteam/util/ContactsSend;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/lzx/iteam/util/ContactsSend;->mInstance:Lcom/lzx/iteam/util/ContactsSend;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/lzx/iteam/util/ContactsSend;

    invoke-direct {v0}, Lcom/lzx/iteam/util/ContactsSend;-><init>()V

    sput-object v0, Lcom/lzx/iteam/util/ContactsSend;->mInstance:Lcom/lzx/iteam/util/ContactsSend;

    .line 85
    :cond_0
    sget-object v0, Lcom/lzx/iteam/util/ContactsSend;->mInstance:Lcom/lzx/iteam/util/ContactsSend;

    return-object v0
.end method
