.class public Lcom/lzx/iteam/contactssearch/BuildContacts;
.super Ljava/lang/Object;
.source "BuildContacts.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 33
    return-void
.end method

.method private buildContact(J)V
    .locals 55
    .param p1, "contactId"    # J

    .prologue
    .line 78
    const-wide/16 v6, -0x1

    cmp-long v4, p1, v6

    if-nez v4, :cond_0

    .line 301
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v38, "phoneNumArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v41, "phoneNumberAreaArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    .line 83
    .local v26, "groupIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v35, "orgnization":Ljava/lang/StringBuilder;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v19, "emailString":Ljava/lang/StringBuilder;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v33, "noteString":Ljava/lang/StringBuilder;
    const/16 v20, 0x0

    .line 88
    .local v20, "fullName":Ljava/lang/String;
    const/16 v34, 0x0

    .line 89
    .local v34, "organizationName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 90
    .local v18, "email":Ljava/lang/String;
    const/16 v32, 0x0

    .line 91
    .local v32, "note":Ljava/lang/String;
    new-instance v49, Ljava/lang/StringBuffer;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    .local v49, "wx_ids":Ljava/lang/StringBuffer;
    const-wide/16 v46, 0x0

    .line 94
    .local v46, "rawId":J
    const-wide/16 v42, 0x0

    .line 95
    .local v42, "photoId":J
    const-wide/16 v50, 0x0

    .line 96
    .local v50, "version":J
    const/16 v48, 0x0

    .line 98
    .local v48, "type":I
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 99
    .local v15, "contactUri":Landroid/net/Uri;
    const-string v16, "data"

    .line 100
    .local v16, "dataDir":Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 101
    .local v5, "methodUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-result-object v30

    .line 102
    .local v30, "mPinyinSearch":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mFirstLetterStr:Ljava/lang/StringBuilder;

    if-nez v4, :cond_1

    .line 103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lzx/iteam/util/StringUtil;->getFirstLetterStr(Landroid/content/Context;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mFirstLetterStr:Ljava/lang/StringBuilder;

    .line 105
    :cond_1
    const/4 v13, 0x0

    .line 107
    .local v13, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 108
    sget-object v6, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 107
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 115
    :cond_2
    :goto_1
    if-eqz v13, :cond_3

    .line 117
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v28

    .line 118
    .local v28, "isTrue":Z
    :goto_2
    if-nez v28, :cond_15

    .line 175
    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v6, "wx_ids_set"

    invoke-virtual {v4, v6}, Lcom/lzx/iteam/util/PreferenceUtil;->delete(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 187
    .end local v28    # "isTrue":Z
    :cond_3
    :goto_4
    if-eqz v35, :cond_4

    .line 188
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 191
    :cond_4
    if-eqz v19, :cond_5

    .line 192
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 195
    :cond_5
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v23, "fuzzyStringSb":Ljava/lang/StringBuilder;
    if-eqz v41, :cond_7

    .line 197
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_20

    .line 205
    :cond_7
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 206
    new-instance v45, Ljava/lang/StringBuffer;

    move-object/from16 v0, v45

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 207
    .local v45, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mContext:Landroid/content/Context;

    .line 208
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mFirstLetterStr:Ljava/lang/StringBuilder;

    .line 207
    move-object/from16 v0, v45

    invoke-static {v4, v0, v6}, Lcom/lzx/iteam/util/StringUtil;->trasferDisplayName(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v4, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .end local v45    # "sb":Ljava/lang/StringBuffer;
    :cond_8
    invoke-static/range {v34 .. v34}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 213
    new-instance v45, Ljava/lang/StringBuffer;

    move-object/from16 v0, v45

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 214
    .restart local v45    # "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mContext:Landroid/content/Context;

    .line 215
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mFirstLetterStr:Ljava/lang/StringBuilder;

    .line 214
    move-object/from16 v0, v45

    invoke-static {v4, v0, v6}, Lcom/lzx/iteam/util/StringUtil;->trasferGOJ(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .end local v45    # "sb":Ljava/lang/StringBuffer;
    :cond_9
    if-eqz v41, :cond_a

    .line 219
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_21

    .line 227
    :cond_a
    if-eqz v33, :cond_b

    .line 228
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 231
    :cond_b
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mContext:Landroid/content/Context;

    .line 233
    new-instance v6, Ljava/lang/StringBuffer;

    move-object/from16 v0, v32

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, v30

    iget-object v7, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mFirstLetterStr:Ljava/lang/StringBuilder;

    .line 232
    invoke-static {v4, v6, v7}, Lcom/lzx/iteam/util/StringUtil;->trasferDisplayName(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_c
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 239
    .local v21, "fuzzy":Ljava/lang/String;
    move-object/from16 v0, v30

    move-wide/from16 v1, p1

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->addFuzzyString(JLjava/lang/String;)V

    .line 242
    const/4 v4, 0x3

    move/from16 v0, v48

    if-eq v0, v4, :cond_14

    .line 244
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v12

    .line 245
    .local v12, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 246
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setDisplayName(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 251
    :goto_7
    move-wide/from16 v0, v42

    invoke-virtual {v12, v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setPhotoId(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 252
    move-wide/from16 v0, v46

    invoke-virtual {v12, v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setRawId(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 253
    if-nez v34, :cond_d

    .line 254
    const-string v34, ""

    .line 256
    :cond_d
    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setOrganization(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 258
    if-nez v18, :cond_e

    .line 259
    const-string v18, ""

    .line 261
    :cond_e
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 262
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setFuzzyString(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 263
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setContactedNumber(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 264
    move-wide/from16 v0, v50

    invoke-virtual {v12, v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setVersion(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 265
    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setNote(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 267
    if-eqz v38, :cond_10

    .line 268
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_23

    .line 276
    :cond_10
    if-eqz v41, :cond_12

    .line 277
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_24

    .line 285
    :cond_12
    if-eqz v26, :cond_13

    .line 286
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .line 287
    .local v29, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_a
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_25

    .line 293
    .end local v29    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_13
    invoke-virtual {v12}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v36

    .line 295
    .local v36, "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->deletePerson(J)V

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-wide/from16 v0, p1

    move-object/from16 v2, v36

    invoke-virtual {v4, v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->savePerson(JLcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)V

    .line 299
    .end local v12    # "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .end local v36    # "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    :cond_14
    new-instance v27, Landroid/content/Intent;

    const-string v4, "broadcast_status_change"

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v27, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 110
    .end local v21    # "fuzzy":Ljava/lang/String;
    .end local v23    # "fuzzyStringSb":Ljava/lang/StringBuilder;
    .end local v27    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    if-eqz v13, :cond_2

    .line 111
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 119
    .restart local v28    # "isTrue":Z
    :cond_15
    :try_start_2
    const-string v4, "mimetype"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 120
    .local v31, "mime":Ljava/lang/String;
    const-string v4, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 121
    const-string v4, "data1"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 122
    .local v39, "phoneNumber":Ljava/lang/String;
    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PhoneNumberArea;

    move-result-object v40

    .line 125
    .local v40, "phoneNumberArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    const/4 v4, 0x0

    .line 124
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v4}, Lcom/lzx/iteam/util/PhoneNumberArea;->getArea(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "area":Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 127
    move-object/from16 v0, v41

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 128
    move-object/from16 v0, v41

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v10    # "area":Ljava/lang/String;
    .end local v39    # "phoneNumber":Ljava/lang/String;
    .end local v40    # "phoneNumberArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    :cond_16
    :goto_b
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v28

    goto/16 :goto_2

    .line 131
    :cond_17
    const-string v4, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 133
    const-string v4, "data1"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 132
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 134
    .local v25, "groupId":Ljava/lang/String;
    if-eqz v25, :cond_16

    sget-object v4, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    if-eqz v4, :cond_16

    .line 135
    sget-object v4, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;

    .line 136
    .local v24, "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    if-eqz v24, :cond_16

    .line 137
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_b

    .line 180
    .end local v24    # "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    .end local v25    # "groupId":Ljava/lang/String;
    .end local v28    # "isTrue":Z
    .end local v31    # "mime":Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 181
    .local v17, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 141
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v28    # "isTrue":Z
    .restart local v31    # "mime":Ljava/lang/String;
    :cond_18
    :try_start_4
    const-string v4, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 142
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v4, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_b

    .line 182
    .end local v28    # "isTrue":Z
    .end local v31    # "mime":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 183
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 184
    throw v4

    .line 145
    .restart local v28    # "isTrue":Z
    .restart local v31    # "mime":Ljava/lang/String;
    :cond_19
    :try_start_5
    const-string v4, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 147
    const-string v4, "data1"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 146
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 149
    .local v14, "company":Ljava/lang/String;
    const-string v4, "data4"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 148
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 150
    .local v44, "post":Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 151
    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_1a
    invoke-static {v14}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 154
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1b

    .line 155
    const-string v4, ","

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 159
    .end local v14    # "company":Ljava/lang/String;
    .end local v44    # "post":Ljava/lang/String;
    :cond_1c
    const-string v4, "vnd.android.cursor.item/note"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 161
    const-string v4, "data1"

    .line 160
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 161
    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 162
    :cond_1d
    const-string v4, "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.profile"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 163
    const-string v4, "data2"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 164
    .local v52, "wx_tag":Ljava/lang/String;
    const-string v4, "data3"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 165
    .local v53, "wx_type":Ljava/lang/String;
    const-string v4, "\u5fae\u4fe1"

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "\u804a\u5929"

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    const-string v4, ","

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 169
    .end local v52    # "wx_tag":Ljava/lang/String;
    .end local v53    # "wx_type":Ljava/lang/String;
    :cond_1e
    const-string v4, "vnd.android.cursor.item/name"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 170
    const-string v4, "data1"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    .line 178
    .end local v31    # "mime":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v6, "wx_ids_set"

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 197
    .end local v28    # "isTrue":Z
    .restart local v23    # "fuzzyStringSb":Ljava/lang/StringBuilder;
    :cond_20
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 198
    .local v11, "areaElement":Ljava/lang/String;
    invoke-static {v11}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 199
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mContext:Landroid/content/Context;

    .line 200
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    iget-object v8, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mFirstLetterStr:Ljava/lang/StringBuilder;

    .line 199
    invoke-static {v6, v7, v8}, Lcom/lzx/iteam/util/StringUtil;->trasferDisplayName(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v6, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 219
    .end local v11    # "areaElement":Ljava/lang/String;
    :cond_21
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 220
    .restart local v11    # "areaElement":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mContext:Landroid/content/Context;

    .line 221
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    iget-object v8, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mFirstLetterStr:Ljava/lang/StringBuilder;

    .line 220
    invoke-static {v6, v7, v8}, Lcom/lzx/iteam/util/StringUtil;->trasferDisplayName(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v22

    .line 222
    .local v22, "fuzzyArea":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 223
    const/4 v6, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 248
    .end local v11    # "areaElement":Ljava/lang/String;
    .end local v22    # "fuzzyArea":Ljava/lang/String;
    .restart local v12    # "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .restart local v21    # "fuzzy":Ljava/lang/String;
    :cond_22
    const-string v4, ""

    invoke-virtual {v12, v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setDisplayName(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    goto/16 :goto_7

    .line 268
    :cond_23
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 269
    .local v37, "phoneElement":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 270
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v6

    .line 271
    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->setNumber(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v6

    .line 270
    invoke-virtual {v12, v6}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->addPhone(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    goto/16 :goto_8

    .line 277
    .end local v37    # "phoneElement":Ljava/lang/String;
    :cond_24
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 278
    .restart local v11    # "areaElement":Ljava/lang/String;
    invoke-static {v11}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 279
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->setArea(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->addPhoneNumberArea(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    goto/16 :goto_9

    .line 288
    .end local v11    # "areaElement":Ljava/lang/String;
    .restart local v29    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_25
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 289
    .restart local v25    # "groupId":Ljava/lang/String;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v4

    .line 290
    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 289
    invoke-virtual {v4, v6, v7}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->setGroupId(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->addGroupIdSet(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    goto/16 :goto_a
.end method

.method private generatePinyinIndex(J)V
    .locals 17
    .param p1, "contactId"    # J

    .prologue
    .line 42
    const-wide/16 v6, -0x1

    cmp-long v2, p1, v6

    if-nez v2, :cond_0

    .line 74
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 46
    .local v12, "contactUri":Landroid/net/Uri;
    const-string v13, "data"

    .line 47
    .local v13, "dataDir":Ljava/lang/String;
    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 48
    .local v3, "methodUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v6, "show_people_withphonenumber"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 49
    .local v15, "ifShowPeopleNoPhone":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 50
    if-eqz v15, :cond_2

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 49
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 52
    .local v11, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-result-object v4

    .line 54
    .local v4, "mPinyinSearch":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;
    iget-object v2, v4, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHanziPinyin:Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    .line 55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/lzx/iteam/util/StringUtil;->getHanziPinyin(Landroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v2

    iput-object v2, v4, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHanziPinyin:Ljava/lang/StringBuilder;

    .line 57
    :cond_1
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 73
    const/4 v2, 0x0

    iput-object v2, v4, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHanziPinyin:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 50
    .end local v4    # "mPinyinSearch":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;
    .end local v11    # "c":Landroid/database/Cursor;
    :cond_2
    const-string v5, "has_phone_number=1"

    goto :goto_1

    .line 58
    .restart local v4    # "mPinyinSearch":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;
    .restart local v11    # "c":Landroid/database/Cursor;
    :cond_3
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "displayName":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 60
    .local v9, "contactedNumber":I
    const/4 v2, 0x6

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 62
    .local v14, "hasPhoneNumber":I
    const/4 v2, 0x1

    if-ne v14, v2, :cond_6

    .line 63
    invoke-static {v5}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mContext:Landroid/content/Context;

    const v6, 0x7f080080

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 66
    :cond_4
    const/4 v8, 0x0

    const/4 v2, 0x1

    if-ne v14, v2, :cond_5

    const/4 v10, 0x1

    :goto_3
    move-wide/from16 v6, p1

    invoke-virtual/range {v4 .. v10}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->addPinyinDict(Ljava/lang/String;JLjava/lang/String;IZ)V

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 68
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/BuildContacts;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->checkContactNameExistByID(Landroid/content/ContentResolver;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    const/4 v8, 0x0

    const/4 v2, 0x1

    if-ne v14, v2, :cond_7

    const/4 v10, 0x1

    :goto_4
    move-wide/from16 v6, p1

    invoke-virtual/range {v4 .. v10}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->addPinyinDict(Ljava/lang/String;JLjava/lang/String;IZ)V

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    goto :goto_4
.end method


# virtual methods
.method public startBuildContacts(J)V
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/contactssearch/BuildContacts;->generatePinyinIndex(J)V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/contactssearch/BuildContacts;->buildContact(J)V

    .line 39
    return-void
.end method
