.class public Lcom/lzx/iteam/util/NameCardUtil;
.super Ljava/lang/Object;
.source "NameCardUtil.java"


# static fields
.field public static final DADDRESSES:Ljava/lang/String; = "daddresses"

.field public static final DEMAILS:Ljava/lang/String; = "demails"

.field public static final DEPARTMENT:Ljava/lang/String; = "department"

.field public static final DGROUPS:Ljava/lang/String; = "dgroups"

.field public static final DONTREPLY:Ljava/lang/String; = "dontreply"

.field public static final DPHONES:Ljava/lang/String; = "dphones"

.field public static final DURLS:Ljava/lang/String; = "durls"

.field public static final FIRST_NAME:Ljava/lang/String; = "firstname"

.field public static final IMAGE:Ljava/lang/String; = "image"

.field public static final JOB_TITLE:Ljava/lang/String; = "jobtitle"

.field public static final LAST_NAME:Ljava/lang/String; = "lastname"

.field public static final MIDDLE_NAME:Ljava/lang/String; = "middlename"

.field public static final NICKNAME:Ljava/lang/String; = "nickname"

.field public static final NOTE:Ljava/lang/String; = "note"

.field public static final ORGANIZATION:Ljava/lang/String; = "organization"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addrType2StrLabel(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "label":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 433
    const-string v0, "_$!<Home>!$_"

    .line 439
    :goto_0
    return-object v0

    .line 434
    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 435
    const-string v0, "_$!<Work>!$_"

    .line 436
    goto :goto_0

    .line 437
    :cond_1
    const-string v0, "_$!<Other>!$_"

    goto :goto_0
.end method

.method public static contact2Json(JLorg/json/JSONArray;Landroid/content/Context;)V
    .locals 16
    .param p0, "contactID"    # J
    .param p2, "jArr"    # Lorg/json/JSONArray;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 863
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 864
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "contact_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 865
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 863
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v10

    .line 867
    .local v10, "ei":Landroid/content/EntityIterator;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/content/EntityIterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 916
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/content/EntityIterator;->close()V

    .line 918
    :cond_0
    :goto_1
    return-void

    .line 868
    :cond_1
    :try_start_1
    invoke-interface {v10}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Entity;

    .line 870
    .local v11, "entity":Landroid/content/Entity;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 872
    .local v12, "jNameCard":Lorg/json/JSONObject;
    :try_start_2
    invoke-virtual {v11}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 900
    const-string v2, "dataversion"

    .line 901
    const-string v3, "0001"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 900
    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 904
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 905
    :catch_0
    move-exception v9

    .line 906
    .local v9, "e":Lorg/json/JSONException;
    :try_start_3
    const-string v2, "tag"

    const-string v3, "sendContactsNoPhoto : "

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 909
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v11    # "entity":Landroid/content/Entity;
    .end local v12    # "jNameCard":Lorg/json/JSONObject;
    :catch_1
    move-exception v9

    .line 914
    .local v9, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 916
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/content/EntityIterator;->close()V

    goto :goto_1

    .line 872
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    .restart local v11    # "entity":Landroid/content/Entity;
    .restart local v12    # "jNameCard":Lorg/json/JSONObject;
    :cond_3
    :try_start_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Entity$NamedContentValues;

    .line 873
    .local v14, "ncv":Landroid/content/Entity$NamedContentValues;
    iget-object v8, v14, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 874
    .local v8, "cv":Landroid/content/ContentValues;
    const-string v3, "mimetype"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 875
    .local v13, "mimeType":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 877
    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 878
    invoke-static {v8, v12}, Lcom/lzx/iteam/util/NameCardUtil;->sendStructuredName(Landroid/content/ContentValues;Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 915
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v11    # "entity":Landroid/content/Entity;
    .end local v12    # "jNameCard":Lorg/json/JSONObject;
    .end local v13    # "mimeType":Ljava/lang/String;
    .end local v14    # "ncv":Landroid/content/Entity$NamedContentValues;
    :catchall_0
    move-exception v2

    .line 916
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/content/EntityIterator;->close()V

    .line 917
    :cond_4
    throw v2

    .line 879
    .restart local v8    # "cv":Landroid/content/ContentValues;
    .restart local v11    # "entity":Landroid/content/Entity;
    .restart local v12    # "jNameCard":Lorg/json/JSONObject;
    .restart local v13    # "mimeType":Ljava/lang/String;
    .restart local v14    # "ncv":Landroid/content/Entity$NamedContentValues;
    :cond_5
    :try_start_6
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 880
    invoke-static {v8, v12}, Lcom/lzx/iteam/util/NameCardUtil;->sendPhone(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 881
    :cond_6
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 882
    invoke-static {v8, v12}, Lcom/lzx/iteam/util/NameCardUtil;->sendEmail(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 883
    :cond_7
    const-string v3, "vnd.android.cursor.item/nickname"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 884
    invoke-static {v8, v12}, Lcom/lzx/iteam/util/NameCardUtil;->sendNickname(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 885
    :cond_8
    const-string v3, "vnd.android.cursor.item/website"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 886
    invoke-static {v8, v12}, Lcom/lzx/iteam/util/NameCardUtil;->sendWebpage(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 887
    :cond_9
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 888
    invoke-static {v8, v12}, Lcom/lzx/iteam/util/NameCardUtil;->sendOnePostal(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 889
    :cond_a
    const-string v3, "vnd.android.cursor.item/organization"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 890
    invoke-static {v8, v12}, Lcom/lzx/iteam/util/NameCardUtil;->sendOrganization(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 891
    :cond_b
    const-string v3, "vnd.android.cursor.item/note"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 892
    invoke-static {v8, v12}, Lcom/lzx/iteam/util/NameCardUtil;->sendNote(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 893
    :cond_c
    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 894
    invoke-static {v8, v12}, Lcom/lzx/iteam/util/NameCardUtil;->sendPhoto(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 895
    :cond_d
    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 896
    invoke-static {v8, v12}, Lcom/lzx/iteam/util/NameCardUtil;->sendGroup(Landroid/content/ContentValues;Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2
.end method

.method public static contact2JsonCloudUpload(JLorg/json/JSONArray;Landroid/content/Context;)V
    .locals 38
    .param p0, "contactID"    # J
    .param p2, "jArr"    # Lorg/json/JSONArray;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 701
    const/16 v32, 0x0

    .line 702
    .local v32, "timesContacted":I
    invoke-static/range {p3 .. p3}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getContactInfo()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;

    .line 703
    .local v23, "memoryNode":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    if-nez v23, :cond_1

    .line 704
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-wide/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getContactedNumber(JLandroid/content/ContentResolver;)I

    move-result v32

    .line 709
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 710
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "contact_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 711
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 709
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v14

    .line 713
    .local v14, "ei":Landroid/content/EntityIterator;
    invoke-static/range {p3 .. p3}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PhoneNumberArea;

    move-result-object v30

    .line 715
    .local v30, "phoneNumArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    const/4 v10, 0x0

    .line 716
    .local v10, "contactName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 717
    .local v11, "contactUrl":Ljava/lang/String;
    new-instance v21, Lorg/json/JSONArray;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONArray;-><init>()V

    .line 718
    .local v21, "jPhoneNum":Lorg/json/JSONArray;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    .local v17, "group":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 720
    .local v8, "area":Ljava/lang/StringBuilder;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    .local v28, "organization":Ljava/lang/StringBuilder;
    :goto_1
    :try_start_0
    invoke-interface {v14}, Landroid/content/EntityIterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 839
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    .line 841
    :cond_0
    :goto_2
    return-void

    .line 706
    .end local v8    # "area":Ljava/lang/StringBuilder;
    .end local v10    # "contactName":Ljava/lang/String;
    .end local v11    # "contactUrl":Ljava/lang/String;
    .end local v14    # "ei":Landroid/content/EntityIterator;
    .end local v17    # "group":Ljava/lang/StringBuilder;
    .end local v21    # "jPhoneNum":Lorg/json/JSONArray;
    .end local v28    # "organization":Ljava/lang/StringBuilder;
    .end local v30    # "phoneNumArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    :cond_1
    move-object/from16 v0, v23

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->contactedNumber:I

    move/from16 v32, v0

    goto :goto_0

    .line 723
    .restart local v8    # "area":Ljava/lang/StringBuilder;
    .restart local v10    # "contactName":Ljava/lang/String;
    .restart local v11    # "contactUrl":Ljava/lang/String;
    .restart local v14    # "ei":Landroid/content/EntityIterator;
    .restart local v17    # "group":Ljava/lang/StringBuilder;
    .restart local v21    # "jPhoneNum":Lorg/json/JSONArray;
    .restart local v28    # "organization":Ljava/lang/StringBuilder;
    .restart local v30    # "phoneNumArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    :cond_2
    :try_start_1
    invoke-interface {v14}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Entity;

    .line 725
    .local v16, "entity":Landroid/content/Entity;
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 726
    .local v19, "jCloudContact":Lorg/json/JSONObject;
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    .local v20, "jNameCard":Lorg/json/JSONObject;
    :try_start_2
    new-instance v29, Lcom/lzx/iteam/json/JSONArray;

    invoke-direct/range {v29 .. v29}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    .line 730
    .local v29, "phoneArray":Lcom/lzx/iteam/json/JSONArray;
    new-instance v15, Lcom/lzx/iteam/json/JSONArray;

    invoke-direct {v15}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    .line 731
    .local v15, "emailArray":Lcom/lzx/iteam/json/JSONArray;
    new-instance v35, Lcom/lzx/iteam/json/JSONArray;

    invoke-direct/range {v35 .. v35}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    .line 733
    .local v35, "urlArray":Lcom/lzx/iteam/json/JSONArray;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    .line 797
    const-string v2, "durls"

    invoke-virtual/range {v35 .. v35}, Lcom/lzx/iteam/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 798
    const-string v2, "demails"

    invoke-virtual {v15}, Lcom/lzx/iteam/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 799
    const-string v2, "dphones"

    invoke-virtual/range {v29 .. v29}, Lcom/lzx/iteam/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    const-string v2, "dataversion"

    .line 801
    const-string v3, "0001"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    .line 800
    invoke-static {v3, v4}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 803
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 804
    .local v31, "remark":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 805
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 806
    :cond_5
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_6

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 807
    :cond_6
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 809
    :cond_7
    const-string v36, ""
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 814
    .local v36, "userId":Ljava/lang/String;
    :try_start_3
    invoke-static/range {p3 .. p3}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v3, "cloud_phone_2_useid"

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/HashMap;

    .line 815
    .local v37, "userIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/PhoneNumberArea;->formatPhoneNumDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v36, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 819
    .end local v37    # "userIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    :try_start_4
    const-string v2, "contact_name"

    invoke-static {v10}, Lcom/lzx/iteam/util/StringUtil;->ensureEmptyStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 820
    const-string v2, "contact_remarks"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->ensureEmptyStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 821
    const-string v2, "contact_phoneNumber"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 822
    const-string v2, "contact_url"

    invoke-static {v11}, Lcom/lzx/iteam/util/StringUtil;->ensureEmptyStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    const-string v2, "contact_namecard"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 824
    const-string v2, "contact_dialcount"

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 825
    const-string v2, "user_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 827
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 828
    .end local v15    # "emailArray":Lcom/lzx/iteam/json/JSONArray;
    .end local v29    # "phoneArray":Lcom/lzx/iteam/json/JSONArray;
    .end local v31    # "remark":Ljava/lang/StringBuilder;
    .end local v35    # "urlArray":Lcom/lzx/iteam/json/JSONArray;
    .end local v36    # "userId":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 829
    .local v13, "e":Lorg/json/JSONException;
    :try_start_5
    const-string v2, "tag"

    const-string v3, "sendContactsNoPhoto : "

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 832
    .end local v13    # "e":Lorg/json/JSONException;
    .end local v16    # "entity":Landroid/content/Entity;
    .end local v19    # "jCloudContact":Lorg/json/JSONObject;
    .end local v20    # "jNameCard":Lorg/json/JSONObject;
    :catch_1
    move-exception v13

    .line 837
    .local v13, "e":Ljava/lang/IllegalStateException;
    :try_start_6
    invoke-virtual {v13}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 839
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_2

    .line 733
    .end local v13    # "e":Ljava/lang/IllegalStateException;
    .restart local v15    # "emailArray":Lcom/lzx/iteam/json/JSONArray;
    .restart local v16    # "entity":Landroid/content/Entity;
    .restart local v19    # "jCloudContact":Lorg/json/JSONObject;
    .restart local v20    # "jNameCard":Lorg/json/JSONObject;
    .restart local v29    # "phoneArray":Lcom/lzx/iteam/json/JSONArray;
    .restart local v35    # "urlArray":Lcom/lzx/iteam/json/JSONArray;
    :cond_8
    :try_start_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/Entity$NamedContentValues;

    .line 734
    .local v25, "ncv":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v25

    iget-object v12, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 735
    .local v12, "cv":Landroid/content/ContentValues;
    const-string v3, "mimetype"

    invoke-virtual {v12, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 736
    .local v24, "mimeType":Ljava/lang/String;
    if-eqz v24, :cond_3

    .line 738
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 739
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/lzx/iteam/util/NameCardUtil;->sendStructuredName(Landroid/content/ContentValues;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    .line 740
    goto/16 :goto_3

    :cond_9
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 742
    const-string v3, "data1"

    invoke-virtual {v12, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 743
    .local v26, "num":Ljava/lang/String;
    const-string v3, "data2"

    invoke-virtual {v12, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "data2"

    invoke-virtual {v12, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 744
    const-string v3, "data2"

    invoke-virtual {v12, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v33

    .line 745
    .local v33, "type":I
    invoke-static/range {v33 .. v33}, Lcom/lzx/iteam/util/NameCardUtil;->phoneType2StrLabel(I)Ljava/lang/String;

    move-result-object v22

    .line 746
    .local v22, "label":Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 751
    .end local v33    # "type":I
    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 754
    const/4 v3, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Lcom/lzx/iteam/util/PhoneNumberArea;->getArea(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 755
    .local v9, "areaElement":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 756
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 759
    :cond_a
    move-object/from16 v0, v29

    invoke-static {v12, v0}, Lcom/lzx/iteam/util/NameCardUtil;->parsePhone(Landroid/content/ContentValues;Lcom/lzx/iteam/json/JSONArray;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 838
    .end local v9    # "areaElement":Ljava/lang/String;
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v15    # "emailArray":Lcom/lzx/iteam/json/JSONArray;
    .end local v16    # "entity":Landroid/content/Entity;
    .end local v19    # "jCloudContact":Lorg/json/JSONObject;
    .end local v20    # "jNameCard":Lorg/json/JSONObject;
    .end local v22    # "label":Ljava/lang/String;
    .end local v24    # "mimeType":Ljava/lang/String;
    .end local v25    # "ncv":Landroid/content/Entity$NamedContentValues;
    .end local v26    # "num":Ljava/lang/String;
    .end local v29    # "phoneArray":Lcom/lzx/iteam/json/JSONArray;
    .end local v35    # "urlArray":Lcom/lzx/iteam/json/JSONArray;
    :catchall_0
    move-exception v2

    .line 839
    if-eqz v14, :cond_b

    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    .line 840
    :cond_b
    throw v2

    .line 748
    .restart local v12    # "cv":Landroid/content/ContentValues;
    .restart local v15    # "emailArray":Lcom/lzx/iteam/json/JSONArray;
    .restart local v16    # "entity":Landroid/content/Entity;
    .restart local v19    # "jCloudContact":Lorg/json/JSONObject;
    .restart local v20    # "jNameCard":Lorg/json/JSONObject;
    .restart local v24    # "mimeType":Ljava/lang/String;
    .restart local v25    # "ncv":Landroid/content/Entity$NamedContentValues;
    .restart local v26    # "num":Ljava/lang/String;
    .restart local v29    # "phoneArray":Lcom/lzx/iteam/json/JSONArray;
    .restart local v35    # "urlArray":Lcom/lzx/iteam/json/JSONArray;
    :cond_c
    :try_start_8
    const-string v22, "_$!<Other>!$_"

    .line 749
    .restart local v22    # "label":Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    .line 760
    .end local v22    # "label":Ljava/lang/String;
    .end local v26    # "num":Ljava/lang/String;
    :cond_d
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 761
    invoke-static {v12, v15}, Lcom/lzx/iteam/util/NameCardUtil;->parseEmail(Landroid/content/ContentValues;Lcom/lzx/iteam/json/JSONArray;)V

    goto/16 :goto_3

    .line 762
    :cond_e
    const-string v3, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 763
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/lzx/iteam/util/NameCardUtil;->sendNickname(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 764
    :cond_f
    const-string v3, "vnd.android.cursor.item/website"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 766
    const-string v3, "data1"

    invoke-virtual {v12, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 767
    .local v34, "url":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 768
    move-object/from16 v11, v34

    .line 771
    :cond_10
    move-object/from16 v0, v35

    invoke-static {v12, v0}, Lcom/lzx/iteam/util/NameCardUtil;->parseWebpage(Landroid/content/ContentValues;Lcom/lzx/iteam/json/JSONArray;)V

    goto/16 :goto_3

    .line 772
    .end local v34    # "url":Ljava/lang/String;
    :cond_11
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 773
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/lzx/iteam/util/NameCardUtil;->sendOnePostal(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 774
    :cond_12
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 776
    invoke-static {v12}, Lcom/lzx/iteam/util/NameCardUtil;->formatOrganization(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v27

    .line 777
    .local v27, "org":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 778
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 781
    :cond_13
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/lzx/iteam/util/NameCardUtil;->sendOrganization(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 782
    .end local v27    # "org":Ljava/lang/String;
    :cond_14
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 783
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/lzx/iteam/util/NameCardUtil;->sendNote(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 788
    :cond_15
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 790
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/lzx/iteam/util/NameCardUtil;->sendGroup(Landroid/content/ContentValues;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v18

    .line 791
    .local v18, "groupTitle":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 792
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 816
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v18    # "groupTitle":Ljava/lang/String;
    .end local v24    # "mimeType":Ljava/lang/String;
    .end local v25    # "ncv":Landroid/content/Entity$NamedContentValues;
    .restart local v31    # "remark":Ljava/lang/StringBuilder;
    .restart local v36    # "userId":Ljava/lang/String;
    :catch_2
    move-exception v13

    .line 817
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4
.end method

.method public static contactArr2Json(Ljava/util/ArrayList;Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, "contactIdArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 682
    :cond_0
    const/4 v1, 0x0

    .line 689
    :cond_1
    return-object v1

    .line 685
    :cond_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 686
    .local v1, "jArr":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 687
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v1, p1}, Lcom/lzx/iteam/util/NameCardUtil;->contact2Json(JLorg/json/JSONArray;Landroid/content/Context;)V

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static contactArr2Json([JLandroid/content/Context;)Lorg/json/JSONArray;
    .locals 4
    .param p0, "contactIdArr"    # [J
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 669
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 670
    :cond_0
    const/4 v1, 0x0

    .line 677
    :cond_1
    return-object v1

    .line 673
    :cond_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 674
    .local v1, "jArr":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 675
    aget-wide v2, p0, v0

    invoke-static {v2, v3, v1, p1}, Lcom/lzx/iteam/util/NameCardUtil;->contact2Json(JLorg/json/JSONArray;Landroid/content/Context;)V

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static emailType2StrLabel(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "label":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 310
    const-string v0, "_$!<Home>!$_"

    .line 316
    :goto_0
    return-object v0

    .line 311
    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 312
    const-string v0, "_$!<Work>!$_"

    .line 313
    goto :goto_0

    .line 314
    :cond_1
    const-string v0, "_$!<Other>!$_"

    goto :goto_0
.end method

.method public static formatOrganization(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 3
    .param p0, "cv"    # Landroid/content/ContentValues;

    .prologue
    const/16 v2, 0x2c

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 846
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "data4"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    const-string v1, "data4"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 850
    :cond_0
    const-string v1, "data1"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 851
    const-string v1, "data1"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 854
    :cond_1
    const-string v1, "data5"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 855
    const-string v1, "data5"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 858
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 859
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getJasonContact(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 46
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paramsData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/lzx/iteam/json/ParseException;
        }
    .end annotation

    .prologue
    .line 922
    new-instance v39, Lorg/json/JSONObject;

    invoke-direct/range {v39 .. v39}, Lorg/json/JSONObject;-><init>()V

    .line 923
    .local v39, "result":Lorg/json/JSONObject;
    new-instance v24, Lorg/json/JSONObject;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONObject;-><init>()V

    .line 924
    .local v24, "jCloudContact":Lorg/json/JSONObject;
    invoke-static/range {p0 .. p0}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PhoneNumberArea;

    move-result-object v35

    .line 926
    .local v35, "phoneNumArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    const/4 v11, 0x0

    .line 927
    .local v11, "contactUrl":Ljava/lang/String;
    new-instance v25, Lorg/json/JSONArray;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONArray;-><init>()V

    .line 928
    .local v25, "jPhoneNum":Lorg/json/JSONArray;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 929
    .local v21, "group":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 930
    .local v5, "area":Ljava/lang/StringBuilder;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    .line 932
    .local v38, "remark":Ljava/lang/StringBuilder;
    const/16 v26, 0x0

    .line 933
    .local v26, "jobtitle":Ljava/lang/String;
    const/4 v15, 0x0

    .line 934
    .local v15, "department":Ljava/lang/String;
    const/16 v32, 0x0

    .line 936
    .local v32, "organization":Ljava/lang/String;
    const-string v43, "contactName"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 937
    .local v10, "contactName":Ljava/lang/String;
    const/16 v43, 0x2

    move/from16 v0, v43

    invoke-static {v10, v0}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v43

    const-string v44, "UTF-8"

    invoke-static/range {v43 .. v44}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 938
    const-string v43, "contact_name"

    invoke-static {v10}, Lcom/lzx/iteam/util/StringUtil;->ensureEmptyStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 940
    new-instance v28, Lorg/json/JSONObject;

    const-string v43, "myDocument"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 942
    .local v28, "nameCard":Lorg/json/JSONObject;
    const-string v43, "jobtitle"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_0

    .line 943
    const-string v43, "jobtitle"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 944
    const-string v43, "jobtitle"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v44

    const/16 v45, 0x2

    invoke-static/range {v44 .. v45}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 946
    const/16 v43, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v43

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v43

    const-string v44, "UTF-8"

    invoke-static/range {v43 .. v44}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 949
    :cond_0
    const-string v43, "department"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_1

    .line 950
    const-string v43, "department"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 951
    const-string v43, "department"

    .line 952
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v44

    const/16 v45, 0x2

    invoke-static/range {v44 .. v45}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v44

    .line 951
    move-object/from16 v0, v39

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 955
    const/16 v43, 0x2

    move/from16 v0, v43

    invoke-static {v15, v0}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v43

    const-string v44, "UTF-8"

    invoke-static/range {v43 .. v44}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 958
    :cond_1
    const-string v43, "organization"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_2

    .line 959
    const-string v43, "organization"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 960
    const-string v43, "organization"

    .line 961
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->getBytes()[B

    move-result-object v44

    const/16 v45, 0x2

    invoke-static/range {v44 .. v45}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v44

    .line 960
    move-object/from16 v0, v39

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 963
    const/16 v43, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v43

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v43

    .line 964
    const-string v44, "UTF-8"

    .line 963
    invoke-static/range {v43 .. v44}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 967
    :cond_2
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 968
    .local v31, "orgSb":Ljava/lang/StringBuilder;
    invoke-static/range {v26 .. v26}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_3

    .line 969
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x2c

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 971
    :cond_3
    invoke-static {v15}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_4

    .line 972
    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x2c

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 974
    :cond_4
    invoke-static/range {v32 .. v32}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_5

    .line 975
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x2c

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 978
    :cond_5
    const/16 v37, 0x0

    .line 979
    .local v37, "photo":Ljava/lang/String;
    const-string v43, "image"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_6

    .line 980
    const-string v43, "image"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 981
    const-string v43, "image"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 984
    :cond_6
    new-instance v34, Lcom/lzx/iteam/json/JSONArray;

    invoke-direct/range {v34 .. v34}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    .line 985
    .local v34, "phoneInfoArray":Lcom/lzx/iteam/json/JSONArray;
    new-instance v20, Lcom/lzx/iteam/json/JSONArray;

    invoke-direct/range {v20 .. v20}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    .line 986
    .local v20, "emailInfoArray":Lcom/lzx/iteam/json/JSONArray;
    new-instance v41, Lcom/lzx/iteam/json/JSONArray;

    invoke-direct/range {v41 .. v41}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    .line 988
    .local v41, "urlInfoArray":Lcom/lzx/iteam/json/JSONArray;
    const-string v43, "dphones"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_9

    .line 989
    new-instance v33, Lcom/lzx/iteam/json/JSONParser;

    invoke-direct/range {v33 .. v33}, Lcom/lzx/iteam/json/JSONParser;-><init>()V

    .line 990
    .local v33, "parser":Lcom/lzx/iteam/json/JSONParser;
    const-string v43, "dphones"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 991
    .local v17, "dphones":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_9

    .line 993
    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 992
    check-cast v7, Lcom/lzx/iteam/json/JSONArray;

    .line 994
    .local v7, "array":Lcom/lzx/iteam/json/JSONArray;
    const/16 v36, 0x0

    .line 995
    .local v36, "phonesArray":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 996
    .local v9, "arraySize":I
    if-eqz v7, :cond_7

    .line 997
    invoke-virtual {v7}, Lcom/lzx/iteam/json/JSONArray;->size()I

    move-result v9

    .line 998
    :cond_7
    if-lez v9, :cond_9

    .line 999
    invoke-virtual {v7}, Lcom/lzx/iteam/json/JSONArray;->size()I

    move-result v9

    .line 1000
    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v36, v0

    .line 1001
    const/4 v8, 0x0

    .local v8, "arrayIndex":I
    :goto_0
    if-lt v8, v9, :cond_16

    .line 1006
    const/4 v12, 0x0

    .local v12, "count":I
    move v13, v12

    .line 1007
    .end local v12    # "count":I
    .local v13, "count":I
    :cond_8
    :goto_1
    add-int/lit8 v43, v9, -0x1

    move/from16 v0, v43

    if-lt v13, v0, :cond_17

    .line 1019
    const-string v43, "dphones"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1025
    .end local v7    # "array":Lcom/lzx/iteam/json/JSONArray;
    .end local v8    # "arrayIndex":I
    .end local v9    # "arraySize":I
    .end local v13    # "count":I
    .end local v17    # "dphones":Ljava/lang/String;
    .end local v33    # "parser":Lcom/lzx/iteam/json/JSONParser;
    .end local v36    # "phonesArray":[Ljava/lang/String;
    :cond_9
    const/4 v14, 0x0

    .line 1026
    .local v14, "demails":Ljava/lang/String;
    const-string v43, "demails"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_b

    .line 1027
    new-instance v33, Lcom/lzx/iteam/json/JSONParser;

    invoke-direct/range {v33 .. v33}, Lcom/lzx/iteam/json/JSONParser;-><init>()V

    .line 1028
    .restart local v33    # "parser":Lcom/lzx/iteam/json/JSONParser;
    const-string v43, "demails"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1029
    invoke-static {v14}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_b

    .line 1031
    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1030
    check-cast v7, Lcom/lzx/iteam/json/JSONArray;

    .line 1032
    .restart local v7    # "array":Lcom/lzx/iteam/json/JSONArray;
    const/16 v19, 0x0

    .line 1033
    .local v19, "emailArray":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1034
    .restart local v9    # "arraySize":I
    if-eqz v7, :cond_a

    .line 1035
    invoke-virtual {v7}, Lcom/lzx/iteam/json/JSONArray;->size()I

    move-result v9

    .line 1036
    :cond_a
    if-lez v9, :cond_b

    .line 1037
    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1038
    const/4 v8, 0x0

    .restart local v8    # "arrayIndex":I
    :goto_2
    if-lt v8, v9, :cond_18

    .line 1043
    const/4 v12, 0x0

    .restart local v12    # "count":I
    move v13, v12

    .line 1044
    .end local v12    # "count":I
    .restart local v13    # "count":I
    :goto_3
    add-int/lit8 v43, v9, -0x1

    move/from16 v0, v43

    if-lt v13, v0, :cond_19

    .line 1048
    const-string v43, "demails"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1054
    .end local v7    # "array":Lcom/lzx/iteam/json/JSONArray;
    .end local v8    # "arrayIndex":I
    .end local v9    # "arraySize":I
    .end local v13    # "count":I
    .end local v19    # "emailArray":[Ljava/lang/String;
    .end local v33    # "parser":Lcom/lzx/iteam/json/JSONParser;
    :cond_b
    const/16 v16, 0x0

    .line 1055
    .local v16, "dgroups":Ljava/lang/String;
    const-string v43, "dgroups"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_d

    .line 1056
    new-instance v33, Lcom/lzx/iteam/json/JSONParser;

    invoke-direct/range {v33 .. v33}, Lcom/lzx/iteam/json/JSONParser;-><init>()V

    .line 1057
    .restart local v33    # "parser":Lcom/lzx/iteam/json/JSONParser;
    const-string v43, "dgroups"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1058
    invoke-static/range {v16 .. v16}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_d

    .line 1060
    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1059
    check-cast v7, Lcom/lzx/iteam/json/JSONArray;

    .line 1061
    .restart local v7    # "array":Lcom/lzx/iteam/json/JSONArray;
    const/4 v9, 0x0

    .line 1062
    .restart local v9    # "arraySize":I
    if-eqz v7, :cond_c

    .line 1063
    invoke-virtual {v7}, Lcom/lzx/iteam/json/JSONArray;->size()I

    move-result v9

    .line 1064
    :cond_c
    if-lez v9, :cond_d

    .line 1066
    const/4 v8, 0x0

    .restart local v8    # "arrayIndex":I
    :goto_4
    if-lt v8, v9, :cond_1a

    .line 1075
    .end local v7    # "array":Lcom/lzx/iteam/json/JSONArray;
    .end local v8    # "arrayIndex":I
    .end local v9    # "arraySize":I
    .end local v33    # "parser":Lcom/lzx/iteam/json/JSONParser;
    :cond_d
    const-string v43, "daddresses"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_f

    .line 1076
    new-instance v33, Lcom/lzx/iteam/json/JSONParser;

    invoke-direct/range {v33 .. v33}, Lcom/lzx/iteam/json/JSONParser;-><init>()V

    .line 1077
    .restart local v33    # "parser":Lcom/lzx/iteam/json/JSONParser;
    const-string v43, "daddresses"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1078
    .local v3, "address":Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_f

    .line 1080
    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1079
    check-cast v7, Lcom/lzx/iteam/json/JSONArray;

    .line 1081
    .restart local v7    # "array":Lcom/lzx/iteam/json/JSONArray;
    const/4 v9, 0x0

    .line 1082
    .restart local v9    # "arraySize":I
    if-eqz v7, :cond_e

    .line 1083
    invoke-virtual {v7}, Lcom/lzx/iteam/json/JSONArray;->size()I

    move-result v9

    .line 1085
    :cond_e
    const/4 v12, 0x0

    .line 1086
    .restart local v12    # "count":I
    :goto_5
    if-lt v12, v9, :cond_1b

    .line 1105
    .end local v3    # "address":Ljava/lang/String;
    .end local v7    # "array":Lcom/lzx/iteam/json/JSONArray;
    .end local v9    # "arraySize":I
    .end local v12    # "count":I
    .end local v33    # "parser":Lcom/lzx/iteam/json/JSONParser;
    :cond_f
    const-string v43, "durls"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_11

    .line 1106
    new-instance v33, Lcom/lzx/iteam/json/JSONParser;

    invoke-direct/range {v33 .. v33}, Lcom/lzx/iteam/json/JSONParser;-><init>()V

    .line 1107
    .restart local v33    # "parser":Lcom/lzx/iteam/json/JSONParser;
    const-string v43, "durls"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1108
    .local v18, "durls":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_11

    .line 1110
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1109
    check-cast v7, Lcom/lzx/iteam/json/JSONArray;

    .line 1111
    .restart local v7    # "array":Lcom/lzx/iteam/json/JSONArray;
    const/4 v9, 0x0

    .line 1112
    .restart local v9    # "arraySize":I
    const/16 v40, 0x0

    .line 1113
    .local v40, "urlArray":[Ljava/lang/String;
    if-eqz v7, :cond_10

    .line 1114
    invoke-virtual {v7}, Lcom/lzx/iteam/json/JSONArray;->size()I

    move-result v9

    .line 1115
    :cond_10
    if-lez v9, :cond_11

    .line 1116
    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v40, v0

    .line 1117
    const/4 v8, 0x0

    .restart local v8    # "arrayIndex":I
    :goto_6
    if-lt v8, v9, :cond_1d

    .line 1123
    const/4 v12, 0x0

    .restart local v12    # "count":I
    move v13, v12

    .line 1124
    .end local v12    # "count":I
    .restart local v13    # "count":I
    :goto_7
    add-int/lit8 v43, v9, -0x1

    move/from16 v0, v43

    if-lt v13, v0, :cond_1e

    .line 1131
    const-string v43, "durls"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1136
    .end local v7    # "array":Lcom/lzx/iteam/json/JSONArray;
    .end local v8    # "arrayIndex":I
    .end local v9    # "arraySize":I
    .end local v13    # "count":I
    .end local v18    # "durls":Ljava/lang/String;
    .end local v33    # "parser":Lcom/lzx/iteam/json/JSONParser;
    .end local v40    # "urlArray":[Ljava/lang/String;
    :cond_11
    const-string v43, "note"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_12

    .line 1137
    const-string v43, "note"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1138
    .local v29, "note":Ljava/lang/String;
    const-string v43, "note"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1140
    .end local v29    # "note":Ljava/lang/String;
    :cond_12
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v43

    if-lez v43, :cond_13

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1141
    :cond_13
    if-eqz v21, :cond_14

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v43

    if-lez v43, :cond_14

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1142
    :cond_14
    if-eqz v32, :cond_15

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_15

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    :cond_15
    const-string v43, "dataversion"

    .line 1146
    const-string v44, "0001"

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->getBytes()[B

    move-result-object v44

    const/16 v45, 0x2

    invoke-static/range {v44 .. v45}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v44

    .line 1145
    move-object/from16 v0, v39

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1149
    const-string v43, "contact_name"

    invoke-static {v10}, Lcom/lzx/iteam/util/StringUtil;->ensureEmptyStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1150
    const-string v43, "contact_remarks"

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1151
    const-string v43, "contact_phoneNumber"

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1152
    const-string v43, "contact_url"

    invoke-static {v11}, Lcom/lzx/iteam/util/StringUtil;->ensureEmptyStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1153
    const-string v43, "contact_namecard"

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1154
    return-object v24

    .line 1003
    .end local v14    # "demails":Ljava/lang/String;
    .end local v16    # "dgroups":Ljava/lang/String;
    .restart local v7    # "array":Lcom/lzx/iteam/json/JSONArray;
    .restart local v8    # "arrayIndex":I
    .restart local v9    # "arraySize":I
    .restart local v17    # "dphones":Ljava/lang/String;
    .restart local v33    # "parser":Lcom/lzx/iteam/json/JSONParser;
    .restart local v36    # "phonesArray":[Ljava/lang/String;
    :cond_16
    invoke-virtual {v7, v8}, Lcom/lzx/iteam/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x2

    invoke-static/range {v43 .. v44}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v43

    .line 1004
    const-string v44, "UTF-8"

    .line 1002
    invoke-static/range {v43 .. v44}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v43

    aput-object v43, v36, v8

    .line 1001
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1008
    .restart local v13    # "count":I
    :cond_17
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "count":I
    .restart local v12    # "count":I
    aget-object v30, v36, v13

    .line 1009
    .local v30, "number":Ljava/lang/String;
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "count":I
    .restart local v13    # "count":I
    aget-object v27, v36, v12

    .line 1010
    .local v27, "lable":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v43

    const/16 v44, 0x2

    invoke-static/range {v43 .. v44}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1011
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v43

    const/16 v44, 0x2

    invoke-static/range {v43 .. v44}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1012
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1013
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1014
    const/16 v43, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PhoneNumberArea;->getArea(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 1015
    .local v6, "areaElement":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_8

    .line 1016
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x2c

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1040
    .end local v6    # "areaElement":Ljava/lang/String;
    .end local v13    # "count":I
    .end local v17    # "dphones":Ljava/lang/String;
    .end local v27    # "lable":Ljava/lang/String;
    .end local v30    # "number":Ljava/lang/String;
    .end local v36    # "phonesArray":[Ljava/lang/String;
    .restart local v14    # "demails":Ljava/lang/String;
    .restart local v19    # "emailArray":[Ljava/lang/String;
    :cond_18
    invoke-virtual {v7, v8}, Lcom/lzx/iteam/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x2

    invoke-static/range {v43 .. v44}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v43

    .line 1041
    const-string v44, "UTF-8"

    .line 1039
    invoke-static/range {v43 .. v44}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v43

    aput-object v43, v19, v8

    .line 1038
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 1045
    .restart local v13    # "count":I
    :cond_19
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "count":I
    .restart local v12    # "count":I
    aget-object v43, v19, v13

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->getBytes()[B

    move-result-object v43

    const/16 v44, 0x2

    invoke-static/range {v43 .. v44}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1046
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "count":I
    .restart local v13    # "count":I
    aget-object v43, v19, v12

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->getBytes()[B

    move-result-object v43

    const/16 v44, 0x2

    invoke-static/range {v43 .. v44}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1067
    .end local v13    # "count":I
    .end local v19    # "emailArray":[Ljava/lang/String;
    .restart local v16    # "dgroups":Ljava/lang/String;
    :cond_1a
    const-string v43, "dgroups"

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1068
    invoke-virtual {v7, v8}, Lcom/lzx/iteam/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x2c

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1066
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 1088
    .end local v8    # "arrayIndex":I
    .restart local v3    # "address":Ljava/lang/String;
    .restart local v12    # "count":I
    :cond_1b
    invoke-virtual {v7, v12}, Lcom/lzx/iteam/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    .line 1087
    check-cast v23, Lcom/lzx/iteam/json/JSONArray;

    .line 1089
    .local v23, "innerArray":Lcom/lzx/iteam/json/JSONArray;
    invoke-virtual/range {v23 .. v23}, Lcom/lzx/iteam/json/JSONArray;->size()I

    move-result v43

    move/from16 v0, v43

    new-array v4, v0, [Ljava/lang/String;

    .line 1090
    .local v4, "addressArray":[Ljava/lang/String;
    const/16 v22, 0x0

    .local v22, "inner":I
    :goto_8
    invoke-virtual/range {v23 .. v23}, Lcom/lzx/iteam/json/JSONArray;->size()I

    move-result v43

    move/from16 v0, v22

    move/from16 v1, v43

    if-lt v0, v1, :cond_1c

    .line 1097
    add-int/lit8 v43, v12, 0x1

    move/from16 v0, v43

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x2

    invoke-static/range {v43 .. v44}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v43

    .line 1098
    const-string v44, "UTF-8"

    .line 1096
    invoke-static/range {v43 .. v44}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    .line 1099
    const-string v43, "daddresses"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1100
    add-int/lit8 v12, v12, 0x2

    goto/16 :goto_5

    .line 1092
    :cond_1c
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x2

    invoke-static/range {v43 .. v44}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v43

    .line 1093
    const-string v44, "UTF-8"

    .line 1091
    invoke-static/range {v43 .. v44}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v43

    aput-object v43, v4, v22

    .line 1090
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 1119
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "addressArray":[Ljava/lang/String;
    .end local v12    # "count":I
    .end local v22    # "inner":I
    .end local v23    # "innerArray":Lcom/lzx/iteam/json/JSONArray;
    .restart local v8    # "arrayIndex":I
    .restart local v18    # "durls":Ljava/lang/String;
    .restart local v40    # "urlArray":[Ljava/lang/String;
    :cond_1d
    invoke-virtual {v7, v8}, Lcom/lzx/iteam/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x2

    invoke-static/range {v43 .. v44}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v43

    .line 1120
    const-string v44, "UTF-8"

    .line 1118
    invoke-static/range {v43 .. v44}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v43

    aput-object v43, v40, v8

    .line 1117
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 1125
    .restart local v13    # "count":I
    :cond_1e
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "count":I
    .restart local v12    # "count":I
    aget-object v27, v40, v13

    .line 1126
    .restart local v27    # "lable":Ljava/lang/String;
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "count":I
    .restart local v13    # "count":I
    aget-object v42, v40, v12

    .line 1127
    .local v42, "value":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v43

    const/16 v44, 0x2

    invoke-static/range {v43 .. v44}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1128
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->getBytes()[B

    move-result-object v43

    const/16 v44, 0x2

    invoke-static/range {v43 .. v44}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1129
    move-object/from16 v11, v42

    goto/16 :goto_7
.end method

.method public static iPhoneType2Android(Ljava/lang/String;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, "androidType":I
    const-string v1, "_$!<Work>!$_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    const/4 v0, 0x3

    .line 664
    :cond_0
    :goto_0
    return v0

    .line 650
    :cond_1
    const-string v1, "_$!<WorkFAX>!$_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 651
    const/4 v0, 0x4

    .line 652
    goto :goto_0

    :cond_2
    const-string v1, "_$!<Main>!$_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 653
    const/16 v0, 0xa

    .line 654
    goto :goto_0

    :cond_3
    const-string v1, "_$!<Home>!$_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 655
    const/4 v0, 0x1

    .line 656
    goto :goto_0

    :cond_4
    const-string v1, "_$!<Mobile>!$_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 657
    const/4 v0, 0x2

    .line 658
    goto :goto_0

    :cond_5
    const-string v1, "_$!<Pager>!$_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 659
    const/4 v0, 0x6

    .line 660
    goto :goto_0

    :cond_6
    const-string v1, "_$!<HomeFAX>!$_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static importOneContact(Landroid/content/Context;Lcom/lzx/iteam/bean/NameCardContact;)J
    .locals 36
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "contact"    # Lcom/lzx/iteam/bean/NameCardContact;

    .prologue
    .line 1159
    const/16 v33, 0x1

    sput-boolean v33, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->LOCAL_SAVE:Z

    .line 1160
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1161
    .local v10, "emptyContentValues":Landroid/content/ContentValues;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    .local v27, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v33, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v33 .. v33}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 1165
    .local v4, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v4, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1166
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    sget-object v33, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v33 .. v33}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 1169
    const-string v33, "raw_contact_id"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1170
    const-string v33, "mimetype"

    const-string v34, "vnd.android.cursor.item/name"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1171
    const-string v33, "data1"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->displayName:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1172
    const-string v33, "data2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->firstName:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1173
    const-string v33, "data3"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->lastName:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1174
    const-string v33, "data5"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->middleName:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1176
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->phoneArray:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_0

    .line 1179
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->phoneArray:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 1180
    .local v20, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/bean/NameCardContact$KeyValue;>;"
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_e

    .line 1223
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/bean/NameCardContact$KeyValue;>;"
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->emailArray:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_1

    .line 1225
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->emailArray:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 1226
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/bean/NameCardContact$KeyValue;>;"
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_18

    .line 1248
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/bean/NameCardContact$KeyValue;>;"
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->jobTitle:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->department:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 1249
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->organization:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_6

    .line 1250
    :cond_2
    sget-object v33, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v33 .. v33}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 1251
    const-string v33, "raw_contact_id"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1252
    const-string v33, "mimetype"

    const-string v34, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1253
    const-string v33, "data2"

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1254
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->jobTitle:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_3

    .line 1255
    const-string v33, "data4"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->jobTitle:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1258
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->department:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_4

    .line 1259
    const-string v33, "data5"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->department:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1262
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->organization:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_5

    .line 1263
    const-string v33, "data1"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->organization:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1266
    :cond_5
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->note:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_7

    .line 1271
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->note:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1272
    .local v25, "note":Ljava/lang/String;
    sget-object v33, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v33 .. v33}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 1273
    const-string v33, "raw_contact_id"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1274
    const-string v33, "mimetype"

    const-string v34, "vnd.android.cursor.item/note"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1275
    const-string v33, "data1"

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1276
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    .end local v25    # "note":Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    .line 1280
    .local v12, "groupExist":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->groupNameArray:[Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_8

    .line 1281
    sget-object v17, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    .line 1282
    .local v17, "groupList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->groupNameArray:[Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v19

    move/from16 v1, v33

    if-lt v0, v1, :cond_1c

    .line 1320
    .end local v17    # "groupList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;>;"
    .end local v19    # "i":I
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->urlArray:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_9

    .line 1322
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->urlArray:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 1323
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/bean/NameCardContact$KeyValue;>;"
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_20

    .line 1348
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/bean/NameCardContact$KeyValue;>;"
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->address:Ljava/util/HashMap;

    move-object/from16 v33, v0

    if-eqz v33, :cond_b

    .line 1349
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->address:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 1350
    .local v21, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_25

    .line 1397
    .end local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->sharedAddress:[Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_d

    .line 1398
    const-string v24, "MeetAddress"

    .line 1399
    .local v24, "label":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->sharedAddress:[Ljava/lang/String;

    move-object/from16 v32, v0

    .line 1401
    .local v32, "value":[Ljava/lang/String;
    if-eqz v32, :cond_d

    .line 1402
    const/4 v5, 0x0

    .line 1403
    .local v5, "countInner":I
    sget-object v33, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v33 .. v33}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 1404
    const-string v33, "raw_contact_id"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1405
    const-string v33, "mimetype"

    const-string v34, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1407
    :cond_c
    :goto_5
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v33

    if-lt v5, v0, :cond_2f

    .line 1429
    const-string v33, "data2"

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1430
    const-string v33, "data3"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1431
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    .end local v5    # "countInner":I
    .end local v24    # "label":Ljava/lang/String;
    .end local v32    # "value":[Ljava/lang/String;
    :cond_d
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    .line 1452
    const-string v34, "com.android.contacts"

    .line 1451
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v29

    .line 1453
    .local v29, "res":[Landroid/content/ContentProviderResult;
    if-eqz v29, :cond_35

    .line 1454
    const/16 v33, 0x0

    aget-object v30, v29, v33

    .line 1455
    .local v30, "result":Landroid/content/ContentProviderResult;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v31, v0

    .line 1456
    .local v31, "resultUri":Landroid/net/Uri;
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v28

    .line 1457
    .local v28, "rawContactId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getContactIdByRaw(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    .line 1465
    .end local v28    # "rawContactId":Ljava/lang/String;
    .end local v29    # "res":[Landroid/content/ContentProviderResult;
    .end local v30    # "result":Landroid/content/ContentProviderResult;
    .end local v31    # "resultUri":Landroid/net/Uri;
    :goto_6
    return-wide v6

    .line 1181
    .end local v12    # "groupExist":Z
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/bean/NameCardContact$KeyValue;>;"
    :cond_e
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;

    .line 1182
    .local v26, "obj":Lcom/lzx/iteam/bean/NameCardContact$KeyValue;
    sget-object v33, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v33 .. v33}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 1183
    const-string v33, "raw_contact_id"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1184
    const-string v33, "mimetype"

    const-string v34, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1186
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;->key:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1187
    .restart local v24    # "label":Ljava/lang/String;
    const-string v33, "_$!<Mobile>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 1188
    const-string v33, "data2"

    const/16 v34, 0x2

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1209
    :goto_7
    const-string v33, "data1"

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;->value:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1210
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1189
    :cond_f
    const-string v33, "iPhone"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_10

    .line 1190
    const-string v33, "data2"

    const/16 v34, 0x2

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_7

    .line 1191
    :cond_10
    const-string v33, "_$!<Main>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_11

    .line 1192
    const-string v33, "data2"

    const/16 v34, 0xc

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_7

    .line 1193
    :cond_11
    const-string v33, "_$!<HomeFAX>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_12

    .line 1194
    const-string v33, "data2"

    const/16 v34, 0x5

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_7

    .line 1195
    :cond_12
    const-string v33, "_$!<WorkFAX>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_13

    .line 1196
    const-string v33, "data2"

    const/16 v34, 0x4

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_7

    .line 1197
    :cond_13
    const-string v33, "_$!<Pager>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_14

    .line 1198
    const-string v33, "data2"

    const/16 v34, 0x6

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_7

    .line 1199
    :cond_14
    const-string v33, "_$!<Work>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_15

    .line 1200
    const-string v33, "data2"

    const/16 v34, 0x3

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_7

    .line 1201
    :cond_15
    const-string v33, "_$!<Home>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_16

    .line 1202
    const-string v33, "data2"

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_7

    .line 1203
    :cond_16
    const-string v33, "_$!<Other>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_17

    .line 1204
    const-string v33, "data2"

    const/16 v34, 0x7

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_7

    .line 1206
    :cond_17
    const-string v33, "data2"

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1207
    const-string v33, "data3"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_7

    .line 1227
    .end local v24    # "label":Ljava/lang/String;
    .end local v26    # "obj":Lcom/lzx/iteam/bean/NameCardContact$KeyValue;
    :cond_18
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;

    .line 1228
    .restart local v26    # "obj":Lcom/lzx/iteam/bean/NameCardContact$KeyValue;
    sget-object v33, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v33 .. v33}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 1229
    const-string v33, "raw_contact_id"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1230
    const-string v33, "mimetype"

    const-string v34, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1232
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;->key:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1233
    .restart local v24    # "label":Ljava/lang/String;
    const-string v33, "_$!<Work>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_19

    .line 1234
    const-string v33, "data2"

    const/16 v34, 0x2

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1243
    :goto_8
    const-string v33, "data1"

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;->value:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1244
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1235
    :cond_19
    const-string v33, "_$!<Home>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_1a

    .line 1236
    const-string v33, "data2"

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_8

    .line 1237
    :cond_1a
    const-string v33, "_$!<Other>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_1b

    .line 1238
    const-string v33, "data2"

    const/16 v34, 0x3

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_8

    .line 1240
    :cond_1b
    const-string v33, "data2"

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1241
    const-string v33, "data3"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_8

    .line 1283
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/bean/NameCardContact$KeyValue;>;"
    .end local v24    # "label":Ljava/lang/String;
    .end local v26    # "obj":Lcom/lzx/iteam/bean/NameCardContact$KeyValue;
    .restart local v12    # "groupExist":Z
    .restart local v17    # "groupList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;>;"
    .restart local v19    # "i":I
    :cond_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->groupNameArray:[Ljava/lang/String;

    move-object/from16 v33, v0

    aget-object v18, v33, v19

    .line 1284
    .local v18, "groupName":Ljava/lang/String;
    if-eqz v17, :cond_1e

    .line 1285
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 1286
    .local v16, "groupIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 1287
    .restart local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1d
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_1f

    .line 1303
    :goto_9
    if-nez v12, :cond_1e

    .line 1304
    if-eqz v18, :cond_1e

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_1e

    .line 1305
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->createGroup(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v14

    .line 1307
    .local v14, "groupId":J
    invoke-static/range {p0 .. p0}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->resetAllContactsNumber(Landroid/content/Context;)V

    .line 1308
    sget-object v33, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v33 .. v33}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 1309
    const-string v33, "raw_contact_id"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1310
    const-string v33, "mimetype"

    const-string v34, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1311
    const-string v33, "data1"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1313
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    .end local v14    # "groupId":J
    .end local v16    # "groupIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1e
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 1288
    .restart local v16    # "groupIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1289
    .local v13, "groupIdKey":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;

    .line 1290
    .local v11, "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    iget-object v0, v11, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;->mGroupTitle:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1d

    .line 1293
    sget-object v33, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v33 .. v33}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 1294
    const-string v33, "raw_contact_id"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1295
    const-string v33, "mimetype"

    const-string v34, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1296
    const-string v33, "data1"

    iget-wide v0, v11, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;->mGroupID:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1298
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1299
    const/4 v12, 0x1

    .line 1300
    goto/16 :goto_9

    .line 1324
    .end local v11    # "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    .end local v13    # "groupIdKey":Ljava/lang/String;
    .end local v16    # "groupIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "groupList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;>;"
    .end local v18    # "groupName":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/bean/NameCardContact$KeyValue;>;"
    :cond_20
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;

    .line 1325
    .restart local v26    # "obj":Lcom/lzx/iteam/bean/NameCardContact$KeyValue;
    sget-object v33, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v33 .. v33}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 1326
    const-string v33, "raw_contact_id"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1327
    const-string v33, "mimetype"

    const-string v34, "vnd.android.cursor.item/website"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1328
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;->key:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1329
    .restart local v24    # "label":Ljava/lang/String;
    const-string v33, "_$!<HomePage>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_21

    .line 1330
    const-string v33, "data2"

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1343
    :goto_a
    const-string v33, "data1"

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;->value:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1344
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1331
    :cond_21
    const-string v33, "_$!<Home>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_22

    .line 1332
    const-string v33, "data2"

    const/16 v34, 0x4

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_a

    .line 1333
    :cond_22
    const-string v33, "_$!<Work>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_23

    .line 1334
    const-string v33, "data2"

    const/16 v34, 0x5

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_a

    .line 1335
    :cond_23
    const-string v33, "_$!<Other>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_24

    .line 1336
    const-string v33, "data2"

    const/16 v34, 0x7

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_a

    .line 1338
    :cond_24
    const-string v33, "data2"

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1339
    const-string v33, "data2"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_a

    .line 1351
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/bean/NameCardContact$KeyValue;>;"
    .end local v24    # "label":Ljava/lang/String;
    .end local v26    # "obj":Lcom/lzx/iteam/bean/NameCardContact$KeyValue;
    .restart local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_25
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 1352
    .restart local v24    # "label":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->address:Ljava/util/HashMap;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Ljava/lang/String;

    .line 1354
    .restart local v32    # "value":[Ljava/lang/String;
    if-eqz v32, :cond_a

    .line 1355
    const/4 v5, 0x0

    .line 1356
    .restart local v5    # "countInner":I
    sget-object v33, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v33 .. v33}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 1357
    const-string v33, "raw_contact_id"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1358
    const-string v33, "mimetype"

    const-string v34, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1360
    :goto_b
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v33

    if-lt v5, v0, :cond_26

    .line 1382
    const-string v33, "_$!<Work>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2c

    .line 1383
    const-string v33, "data2"

    const/16 v34, 0x2

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1392
    :goto_c
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1361
    :cond_26
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "countInner":I
    .local v8, "countInner":I
    aget-object v22, v32, v5

    .line 1362
    .local v22, "item":Ljava/lang/String;
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "countInner":I
    .restart local v5    # "countInner":I
    aget-object v23, v32, v8

    .line 1364
    .local v23, "itemLabel":Ljava/lang/String;
    const-string v33, "Street"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_27

    .line 1365
    const-string v33, "data4"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_b

    .line 1366
    :cond_27
    const-string v33, "City"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_28

    .line 1367
    const-string v33, "data7"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_b

    .line 1368
    :cond_28
    const-string v33, "State"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_29

    .line 1369
    const-string v33, "data8"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_b

    .line 1370
    :cond_29
    const-string v33, "ZIP"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2a

    .line 1371
    const-string v33, "data9"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_b

    .line 1372
    :cond_2a
    const-string v33, "Country"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2b

    .line 1373
    const-string v33, "data10"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_b

    .line 1374
    :cond_2b
    const-string v33, "CountryCode"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 1384
    .end local v22    # "item":Ljava/lang/String;
    .end local v23    # "itemLabel":Ljava/lang/String;
    :cond_2c
    const-string v33, "_$!<Home>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2d

    .line 1385
    const-string v33, "data2"

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_c

    .line 1386
    :cond_2d
    const-string v33, "_$!<Other>!$_"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2e

    .line 1387
    const-string v33, "data2"

    const/16 v34, 0x3

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_c

    .line 1389
    :cond_2e
    const-string v33, "data2"

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1390
    const-string v33, "data3"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_c

    .line 1408
    .end local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2f
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "countInner":I
    .restart local v8    # "countInner":I
    aget-object v22, v32, v5

    .line 1409
    .restart local v22    # "item":Ljava/lang/String;
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "countInner":I
    .restart local v5    # "countInner":I
    aget-object v23, v32, v8

    .line 1411
    .restart local v23    # "itemLabel":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_c

    .line 1412
    const-string v33, "Street"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_30

    .line 1413
    const-string v33, "data4"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_5

    .line 1414
    :cond_30
    const-string v33, "City"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_31

    .line 1415
    const-string v33, "data7"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_5

    .line 1416
    :cond_31
    const-string v33, "State"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_32

    .line 1417
    const-string v33, "data8"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_5

    .line 1418
    :cond_32
    const-string v33, "ZIP"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_33

    .line 1419
    const-string v33, "data9"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_5

    .line 1420
    :cond_33
    const-string v33, "Country"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_34

    .line 1421
    const-string v33, "data10"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_5

    .line 1422
    :cond_34
    const-string v33, "CountryCode"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1460
    .end local v5    # "countInner":I
    .end local v22    # "item":Ljava/lang/String;
    .end local v23    # "itemLabel":Ljava/lang/String;
    .end local v24    # "label":Ljava/lang/String;
    .end local v32    # "value":[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1461
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1465
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_35
    :goto_d
    const-wide/16 v6, -0x1

    goto/16 :goto_6

    .line 1462
    :catch_1
    move-exception v9

    .line 1463
    .local v9, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_d
.end method

.method public static jsonToObject(Lcom/lzx/iteam/bean/NameCardContact;Lorg/json/JSONObject;)V
    .locals 34
    .param p0, "contact"    # Lcom/lzx/iteam/bean/NameCardContact;
    .param p1, "nameCard"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/lzx/iteam/json/ParseException;
        }
    .end annotation

    .prologue
    .line 56
    const-string v32, "firstname"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 57
    const-string v32, "firstname"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 58
    .local v17, "firstName":Ljava/lang/String;
    const/16 v32, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v32

    .line 59
    const-string v33, "UTF-8"

    .line 58
    invoke-static/range {v32 .. v33}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 60
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/bean/NameCardContact;->firstName:Ljava/lang/String;

    .line 63
    .end local v17    # "firstName":Ljava/lang/String;
    :cond_0
    const-string v32, "middlename"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 64
    const-string v32, "middlename"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 65
    .local v23, "middleName":Ljava/lang/String;
    const/16 v32, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v32

    .line 66
    const-string v33, "UTF-8"

    .line 65
    invoke-static/range {v32 .. v33}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 67
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/bean/NameCardContact;->middleName:Ljava/lang/String;

    .line 70
    .end local v23    # "middleName":Ljava/lang/String;
    :cond_1
    const-string v32, "lastname"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 71
    const-string v32, "lastname"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 72
    .local v22, "lastName":Ljava/lang/String;
    const/16 v32, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v32

    .line 73
    const-string v33, "UTF-8"

    .line 72
    invoke-static/range {v32 .. v33}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 74
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/bean/NameCardContact;->lastName:Ljava/lang/String;

    .line 77
    .end local v22    # "lastName":Ljava/lang/String;
    :cond_2
    const-string v32, "note"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 78
    const-string v32, "note"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 79
    .local v24, "note":Ljava/lang/String;
    const/16 v32, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v32

    const-string v33, "UTF-8"

    invoke-static/range {v32 .. v33}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 80
    invoke-static/range {v24 .. v24}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_3

    .line 81
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/bean/NameCardContact;->note:Ljava/lang/String;

    .line 85
    .end local v24    # "note":Ljava/lang/String;
    :cond_3
    const-string v32, "department"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 86
    const-string v32, "department"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 88
    .local v11, "department":Ljava/lang/String;
    const/16 v32, 0x2

    move/from16 v0, v32

    invoke-static {v11, v0}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v32

    const-string v33, "UTF-8"

    invoke-static/range {v32 .. v33}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 89
    invoke-static {v11}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_4

    .line 90
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/lzx/iteam/bean/NameCardContact;->department:Ljava/lang/String;

    .line 94
    .end local v11    # "department":Ljava/lang/String;
    :cond_4
    const-string v32, "daddresses"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 95
    new-instance v27, Lcom/lzx/iteam/json/JSONParser;

    invoke-direct/range {v27 .. v27}, Lcom/lzx/iteam/json/JSONParser;-><init>()V

    .line 96
    .local v27, "parser":Lcom/lzx/iteam/json/JSONParser;
    const-string v32, "daddresses"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "address":Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_6

    .line 98
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/json/JSONArray;

    .line 99
    .local v4, "array":Lcom/lzx/iteam/json/JSONArray;
    const/4 v6, 0x0

    .line 100
    .local v6, "arraySize":I
    if-eqz v4, :cond_5

    .line 101
    invoke-virtual {v4}, Lcom/lzx/iteam/json/JSONArray;->size()I

    move-result v6

    .line 103
    :cond_5
    const/4 v8, 0x0

    .line 104
    .local v8, "count":I
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/bean/NameCardContact;->address:Ljava/util/HashMap;

    .line 105
    :goto_0
    if-lt v8, v6, :cond_14

    .line 123
    .end local v2    # "address":Ljava/lang/String;
    .end local v4    # "array":Lcom/lzx/iteam/json/JSONArray;
    .end local v6    # "arraySize":I
    .end local v8    # "count":I
    .end local v27    # "parser":Lcom/lzx/iteam/json/JSONParser;
    :cond_6
    const-string v32, "image"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 124
    const/16 v29, 0x0

    .line 126
    .local v29, "photo":Ljava/lang/String;
    :try_start_0
    const-string v32, "image"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v29

    .line 130
    :goto_1
    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v30

    .line 131
    .local v30, "pic":[B
    if-eqz v30, :cond_7

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v32, v0

    if-nez v32, :cond_16

    .line 132
    :cond_7
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/bean/NameCardContact;->pic:[B

    .line 138
    .end local v29    # "photo":Ljava/lang/String;
    .end local v30    # "pic":[B
    :cond_8
    :goto_2
    const-string v32, "jobtitle"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 139
    const-string v32, "jobtitle"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 140
    .local v20, "jobtitle":Ljava/lang/String;
    const/16 v32, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v32

    const-string v33, "UTF-8"

    invoke-static/range {v32 .. v33}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 141
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_9

    .line 142
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/bean/NameCardContact;->jobTitle:Ljava/lang/String;

    .line 146
    .end local v20    # "jobtitle":Ljava/lang/String;
    :cond_9
    const-string v32, "dphones"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_b

    .line 147
    const-string v32, "dphones"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 148
    .local v13, "dphones":Ljava/lang/String;
    new-instance v27, Lcom/lzx/iteam/json/JSONParser;

    invoke-direct/range {v27 .. v27}, Lcom/lzx/iteam/json/JSONParser;-><init>()V

    .line 149
    .restart local v27    # "parser":Lcom/lzx/iteam/json/JSONParser;
    invoke-static {v13}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_b

    .line 150
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/json/JSONArray;

    .line 151
    .restart local v4    # "array":Lcom/lzx/iteam/json/JSONArray;
    const/16 v28, 0x0

    .line 152
    .local v28, "phonesArray":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 153
    .restart local v6    # "arraySize":I
    if-eqz v4, :cond_a

    .line 154
    invoke-virtual {v4}, Lcom/lzx/iteam/json/JSONArray;->size()I

    move-result v6

    .line 155
    :cond_a
    if-lez v6, :cond_b

    .line 156
    invoke-virtual {v4}, Lcom/lzx/iteam/json/JSONArray;->size()I

    move-result v6

    .line 157
    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 158
    const/4 v5, 0x0

    .local v5, "arrayIndex":I
    :goto_3
    if-lt v5, v6, :cond_17

    .line 163
    const/4 v8, 0x0

    .restart local v8    # "count":I
    move v9, v8

    .line 164
    .end local v8    # "count":I
    .local v9, "count":I
    :goto_4
    add-int/lit8 v32, v6, -0x1

    move/from16 v0, v32

    if-lt v9, v0, :cond_18

    .line 174
    .end local v4    # "array":Lcom/lzx/iteam/json/JSONArray;
    .end local v5    # "arrayIndex":I
    .end local v6    # "arraySize":I
    .end local v9    # "count":I
    .end local v13    # "dphones":Ljava/lang/String;
    .end local v27    # "parser":Lcom/lzx/iteam/json/JSONParser;
    .end local v28    # "phonesArray":[Ljava/lang/String;
    :cond_b
    const-string v32, "organization"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 175
    const-string v32, "organization"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 176
    .local v26, "organization":Ljava/lang/String;
    const/16 v32, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v32

    .line 177
    const-string v33, "UTF-8"

    .line 176
    invoke-static/range {v32 .. v33}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 178
    invoke-static/range {v26 .. v26}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_c

    .line 179
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/bean/NameCardContact;->organization:Ljava/lang/String;

    .line 183
    .end local v26    # "organization":Ljava/lang/String;
    :cond_c
    const-string v32, "durls"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_e

    .line 184
    new-instance v27, Lcom/lzx/iteam/json/JSONParser;

    invoke-direct/range {v27 .. v27}, Lcom/lzx/iteam/json/JSONParser;-><init>()V

    .line 185
    .restart local v27    # "parser":Lcom/lzx/iteam/json/JSONParser;
    const-string v32, "durls"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 186
    .local v14, "durls":Ljava/lang/String;
    invoke-static {v14}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_e

    .line 187
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/json/JSONArray;

    .line 188
    .restart local v4    # "array":Lcom/lzx/iteam/json/JSONArray;
    const/4 v6, 0x0

    .line 189
    .restart local v6    # "arraySize":I
    const/16 v31, 0x0

    .line 190
    .local v31, "urlArray":[Ljava/lang/String;
    if-eqz v4, :cond_d

    .line 191
    invoke-virtual {v4}, Lcom/lzx/iteam/json/JSONArray;->size()I

    move-result v6

    .line 192
    :cond_d
    if-lez v6, :cond_e

    .line 193
    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v31, v0

    .line 194
    const/4 v5, 0x0

    .restart local v5    # "arrayIndex":I
    :goto_5
    if-lt v5, v6, :cond_19

    .line 200
    const/4 v8, 0x0

    .restart local v8    # "count":I
    move v9, v8

    .line 201
    .end local v8    # "count":I
    .restart local v9    # "count":I
    :goto_6
    add-int/lit8 v32, v6, -0x1

    move/from16 v0, v32

    if-lt v9, v0, :cond_1a

    .line 211
    .end local v4    # "array":Lcom/lzx/iteam/json/JSONArray;
    .end local v5    # "arrayIndex":I
    .end local v6    # "arraySize":I
    .end local v9    # "count":I
    .end local v14    # "durls":Ljava/lang/String;
    .end local v27    # "parser":Lcom/lzx/iteam/json/JSONParser;
    .end local v31    # "urlArray":[Ljava/lang/String;
    :cond_e
    const-string v32, "demails"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 212
    const-string v32, "demails"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 213
    .local v10, "demails":Ljava/lang/String;
    new-instance v27, Lcom/lzx/iteam/json/JSONParser;

    invoke-direct/range {v27 .. v27}, Lcom/lzx/iteam/json/JSONParser;-><init>()V

    .line 214
    .restart local v27    # "parser":Lcom/lzx/iteam/json/JSONParser;
    invoke-static {v10}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_10

    .line 216
    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/json/JSONArray;

    .line 217
    .restart local v4    # "array":Lcom/lzx/iteam/json/JSONArray;
    const/16 v16, 0x0

    .line 218
    .local v16, "emailArray":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 219
    .restart local v6    # "arraySize":I
    if-eqz v4, :cond_f

    .line 220
    invoke-virtual {v4}, Lcom/lzx/iteam/json/JSONArray;->size()I

    move-result v6

    .line 221
    :cond_f
    if-lez v6, :cond_10

    .line 222
    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 223
    const/4 v5, 0x0

    .restart local v5    # "arrayIndex":I
    :goto_7
    if-lt v5, v6, :cond_1b

    .line 228
    const/4 v8, 0x0

    .restart local v8    # "count":I
    move v9, v8

    .line 229
    .end local v8    # "count":I
    .restart local v9    # "count":I
    :goto_8
    add-int/lit8 v32, v6, -0x1

    move/from16 v0, v32

    if-lt v9, v0, :cond_1c

    .line 240
    .end local v4    # "array":Lcom/lzx/iteam/json/JSONArray;
    .end local v5    # "arrayIndex":I
    .end local v6    # "arraySize":I
    .end local v9    # "count":I
    .end local v10    # "demails":Ljava/lang/String;
    .end local v16    # "emailArray":[Ljava/lang/String;
    .end local v27    # "parser":Lcom/lzx/iteam/json/JSONParser;
    :cond_10
    const-string v32, "dgroups"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 241
    const-string v32, "dgroups"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 242
    .local v12, "dgroups":Ljava/lang/String;
    new-instance v27, Lcom/lzx/iteam/json/JSONParser;

    invoke-direct/range {v27 .. v27}, Lcom/lzx/iteam/json/JSONParser;-><init>()V

    .line 243
    .restart local v27    # "parser":Lcom/lzx/iteam/json/JSONParser;
    invoke-static {v12}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_12

    .line 244
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/json/JSONArray;

    .line 245
    .restart local v4    # "array":Lcom/lzx/iteam/json/JSONArray;
    const/4 v6, 0x0

    .line 246
    .restart local v6    # "arraySize":I
    if-eqz v4, :cond_11

    .line 247
    invoke-virtual {v4}, Lcom/lzx/iteam/json/JSONArray;->size()I

    move-result v6

    .line 248
    :cond_11
    if-lez v6, :cond_12

    .line 249
    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/bean/NameCardContact;->groupNameArray:[Ljava/lang/String;

    .line 250
    const/4 v5, 0x0

    .restart local v5    # "arrayIndex":I
    :goto_9
    if-lt v5, v6, :cond_1d

    .line 257
    .end local v4    # "array":Lcom/lzx/iteam/json/JSONArray;
    .end local v5    # "arrayIndex":I
    .end local v6    # "arraySize":I
    .end local v12    # "dgroups":Ljava/lang/String;
    .end local v27    # "parser":Lcom/lzx/iteam/json/JSONParser;
    :cond_12
    const-string v32, "dontreply"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 258
    const-string v32, "dontreply"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 259
    .local v7, "auto":Ljava/lang/String;
    const-string v32, "auto"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 260
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lzx/iteam/bean/NameCardContact;->huidizi:Z

    .line 263
    .end local v7    # "auto":Ljava/lang/String;
    :cond_13
    return-void

    .line 107
    .restart local v2    # "address":Ljava/lang/String;
    .restart local v4    # "array":Lcom/lzx/iteam/json/JSONArray;
    .restart local v6    # "arraySize":I
    .restart local v8    # "count":I
    .restart local v27    # "parser":Lcom/lzx/iteam/json/JSONParser;
    :cond_14
    invoke-virtual {v4, v8}, Lcom/lzx/iteam/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 106
    check-cast v19, Lcom/lzx/iteam/json/JSONArray;

    .line 108
    .local v19, "innerArray":Lcom/lzx/iteam/json/JSONArray;
    invoke-virtual/range {v19 .. v19}, Lcom/lzx/iteam/json/JSONArray;->size()I

    move-result v32

    move/from16 v0, v32

    new-array v3, v0, [Ljava/lang/String;

    .line 109
    .local v3, "addressArray":[Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "inner":I
    :goto_a
    invoke-virtual/range {v19 .. v19}, Lcom/lzx/iteam/json/JSONArray;->size()I

    move-result v32

    move/from16 v0, v18

    move/from16 v1, v32

    if-lt v0, v1, :cond_15

    .line 115
    add-int/lit8 v32, v8, 0x1

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/lzx/iteam/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v32 .. v33}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v32

    .line 116
    const-string v33, "UTF-8"

    .line 114
    invoke-static/range {v32 .. v33}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 117
    .local v21, "label":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->address:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_0

    .line 111
    .end local v21    # "label":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v32 .. v33}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v32

    .line 112
    const-string v33, "UTF-8"

    .line 110
    invoke-static/range {v32 .. v33}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v3, v18

    .line 109
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 127
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "addressArray":[Ljava/lang/String;
    .end local v4    # "array":Lcom/lzx/iteam/json/JSONArray;
    .end local v6    # "arraySize":I
    .end local v8    # "count":I
    .end local v18    # "inner":I
    .end local v19    # "innerArray":Lcom/lzx/iteam/json/JSONArray;
    .end local v27    # "parser":Lcom/lzx/iteam/json/JSONParser;
    .restart local v29    # "photo":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 128
    .local v15, "e":Lorg/json/JSONException;
    invoke-virtual {v15}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 134
    .end local v15    # "e":Lorg/json/JSONException;
    .restart local v30    # "pic":[B
    :cond_16
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/bean/NameCardContact;->pic:[B

    goto/16 :goto_2

    .line 160
    .end local v29    # "photo":Ljava/lang/String;
    .end local v30    # "pic":[B
    .restart local v4    # "array":Lcom/lzx/iteam/json/JSONArray;
    .restart local v5    # "arrayIndex":I
    .restart local v6    # "arraySize":I
    .restart local v13    # "dphones":Ljava/lang/String;
    .restart local v27    # "parser":Lcom/lzx/iteam/json/JSONParser;
    .restart local v28    # "phonesArray":[Ljava/lang/String;
    :cond_17
    invoke-virtual {v4, v5}, Lcom/lzx/iteam/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v32 .. v33}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v32

    .line 161
    const-string v33, "UTF-8"

    .line 159
    invoke-static/range {v32 .. v33}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v28, v5

    .line 158
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 165
    .restart local v9    # "count":I
    :cond_18
    new-instance v25, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;

    invoke-direct/range {v25 .. v25}, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;-><init>()V

    .line 166
    .local v25, "obj":Lcom/lzx/iteam/bean/NameCardContact$KeyValue;
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "count":I
    .restart local v8    # "count":I
    aget-object v32, v28, v9

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;->value:Ljava/lang/String;

    .line 167
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "count":I
    .restart local v9    # "count":I
    aget-object v32, v28, v8

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;->key:Ljava/lang/String;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->phoneArray:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 196
    .end local v9    # "count":I
    .end local v13    # "dphones":Ljava/lang/String;
    .end local v25    # "obj":Lcom/lzx/iteam/bean/NameCardContact$KeyValue;
    .end local v28    # "phonesArray":[Ljava/lang/String;
    .restart local v14    # "durls":Ljava/lang/String;
    .restart local v31    # "urlArray":[Ljava/lang/String;
    :cond_19
    invoke-virtual {v4, v5}, Lcom/lzx/iteam/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v32 .. v33}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v32

    .line 197
    const-string v33, "UTF-8"

    .line 195
    invoke-static/range {v32 .. v33}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v31, v5

    .line 194
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 202
    .restart local v9    # "count":I
    :cond_1a
    new-instance v25, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;

    invoke-direct/range {v25 .. v25}, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;-><init>()V

    .line 203
    .restart local v25    # "obj":Lcom/lzx/iteam/bean/NameCardContact$KeyValue;
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "count":I
    .restart local v8    # "count":I
    aget-object v32, v31, v9

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;->value:Ljava/lang/String;

    .line 204
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "count":I
    .restart local v9    # "count":I
    aget-object v32, v31, v8

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;->key:Ljava/lang/String;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->urlArray:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 225
    .end local v9    # "count":I
    .end local v14    # "durls":Ljava/lang/String;
    .end local v25    # "obj":Lcom/lzx/iteam/bean/NameCardContact$KeyValue;
    .end local v31    # "urlArray":[Ljava/lang/String;
    .restart local v10    # "demails":Ljava/lang/String;
    .restart local v16    # "emailArray":[Ljava/lang/String;
    :cond_1b
    invoke-virtual {v4, v5}, Lcom/lzx/iteam/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v32 .. v33}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v32

    .line 226
    const-string v33, "UTF-8"

    .line 224
    invoke-static/range {v32 .. v33}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v16, v5

    .line 223
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 230
    .restart local v9    # "count":I
    :cond_1c
    new-instance v25, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;

    invoke-direct/range {v25 .. v25}, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;-><init>()V

    .line 231
    .restart local v25    # "obj":Lcom/lzx/iteam/bean/NameCardContact$KeyValue;
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "count":I
    .restart local v8    # "count":I
    aget-object v32, v16, v9

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;->value:Ljava/lang/String;

    .line 232
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "count":I
    .restart local v9    # "count":I
    aget-object v32, v16, v8

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/lzx/iteam/bean/NameCardContact$KeyValue;->key:Ljava/lang/String;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->emailArray:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 251
    .end local v9    # "count":I
    .end local v10    # "demails":Ljava/lang/String;
    .end local v16    # "emailArray":[Ljava/lang/String;
    .end local v25    # "obj":Lcom/lzx/iteam/bean/NameCardContact$KeyValue;
    .restart local v12    # "dgroups":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/bean/NameCardContact;->groupNameArray:[Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v32, v5

    .line 250
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9
.end method

.method private static parseEmail(Landroid/content/ContentValues;Lcom/lzx/iteam/json/JSONArray;)V
    .locals 5
    .param p0, "cv"    # Landroid/content/ContentValues;
    .param p1, "array"    # Lcom/lzx/iteam/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 295
    const-string v3, "data1"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "emailAddr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {p1, v0}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 299
    const-string v3, "data2"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "data2"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 300
    const-string v3, "data2"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 301
    .local v2, "type":I
    invoke-static {v2}, Lcom/lzx/iteam/util/NameCardUtil;->emailType2StrLabel(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {p1, v1}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 305
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "type":I
    :cond_0
    return-void
.end method

.method private static parsePhone(Landroid/content/ContentValues;Lcom/lzx/iteam/json/JSONArray;)V
    .locals 5
    .param p0, "cv"    # Landroid/content/ContentValues;
    .param p1, "array"    # Lcom/lzx/iteam/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 593
    const-string v3, "data1"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-virtual {p1, v1}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 597
    const-string v3, "data2"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "data2"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 598
    const-string v3, "data2"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 599
    .local v2, "type":I
    invoke-static {v2}, Lcom/lzx/iteam/util/NameCardUtil;->phoneType2StrLabel(I)Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "label":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 601
    invoke-virtual {p1, v0}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 607
    .end local v2    # "type":I
    :goto_0
    return-void

    .line 603
    .end local v0    # "label":Ljava/lang/String;
    :cond_0
    const-string v0, "_$!<Other>!$_"

    .line 604
    .restart local v0    # "label":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 605
    invoke-virtual {p1, v0}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static parseWebpage(Landroid/content/ContentValues;Lcom/lzx/iteam/json/JSONArray;)V
    .locals 5
    .param p0, "cv"    # Landroid/content/ContentValues;
    .param p1, "array"    # Lcom/lzx/iteam/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 524
    const-string v3, "data1"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 525
    .local v2, "urlAddress":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 526
    invoke-virtual {p1, v2}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 528
    const-string v3, "data2"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "data2"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 529
    const-string v3, "data2"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 530
    .local v1, "type":I
    invoke-static {v1}, Lcom/lzx/iteam/util/NameCardUtil;->urlType2StrLabel(I)Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "label":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-virtual {p1, v0}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 538
    .end local v1    # "type":I
    :goto_0
    return-void

    .line 534
    .end local v0    # "label":Ljava/lang/String;
    :cond_0
    const-string v0, "_$!<Other>!$_"

    .line 535
    .restart local v0    # "label":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-virtual {p1, v0}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static phoneType2StrLabel(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "label":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 640
    :pswitch_0
    const-string v0, "_$!<Other>!$_"

    .line 643
    :goto_0
    return-object v0

    .line 619
    :pswitch_1
    const-string v0, "_$!<Work>!$_"

    .line 620
    goto :goto_0

    .line 622
    :pswitch_2
    const-string v0, "_$!<WorkFAX>!$_"

    .line 623
    goto :goto_0

    .line 625
    :pswitch_3
    const-string v0, "_$!<Main>!$_"

    .line 626
    goto :goto_0

    .line 628
    :pswitch_4
    const-string v0, "_$!<Home>!$_"

    .line 629
    goto :goto_0

    .line 631
    :pswitch_5
    const-string v0, "_$!<Mobile>!$_"

    .line 632
    goto :goto_0

    .line 634
    :pswitch_6
    const-string v0, "_$!<Pager>!$_"

    .line 635
    goto :goto_0

    .line 637
    :pswitch_7
    const-string v0, "_$!<HomeFAX>!$_"

    .line 638
    goto :goto_0

    .line 617
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static sendEmail(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 7
    .param p0, "cv"    # Landroid/content/ContentValues;
    .param p1, "userNameCard"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 275
    new-instance v0, Lcom/lzx/iteam/json/JSONArray;

    invoke-direct {v0}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    .line 277
    .local v0, "array":Lcom/lzx/iteam/json/JSONArray;
    const-string v5, "data1"

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "emailAddr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 281
    const-string v5, "data2"

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "data2"

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 282
    const-string v5, "data2"

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 283
    .local v4, "type":I
    invoke-static {v4}, Lcom/lzx/iteam/util/NameCardUtil;->emailType2StrLabel(I)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {v0, v3}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_0
    invoke-virtual {v0}, Lcom/lzx/iteam/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "jsonString":Ljava/lang/String;
    const-string v5, "demails"

    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    return-void
.end method

.method private static sendGroup(Landroid/content/ContentValues;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 12
    .param p0, "cv"    # Landroid/content/ContentValues;
    .param p1, "userNameCard"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lcom/lzx/iteam/json/JSONArray;

    invoke-direct {v0}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    .line 324
    .local v0, "array":Lcom/lzx/iteam/json/JSONArray;
    const-string v10, "data1"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 325
    .local v2, "groupId":J
    const/4 v7, 0x0

    .line 326
    .local v7, "groupTitle":Ljava/lang/String;
    sget-object v6, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    .line 327
    .local v6, "groupList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;>;"
    if-eqz v6, :cond_1

    .line 328
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 329
    .local v5, "groupIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 330
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 339
    .end local v5    # "groupIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-static {v7}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 340
    invoke-virtual {v0, v7}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {v0}, Lcom/lzx/iteam/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v9

    .line 342
    .local v9, "jsonString":Ljava/lang/String;
    const-string v10, "dgroups"

    invoke-virtual {p1, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    .end local v9    # "jsonString":Ljava/lang/String;
    :cond_2
    return-object v7

    .line 331
    .restart local v5    # "groupIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 332
    .local v4, "groupIdKey":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;

    .line 333
    .local v1, "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    iget-wide v10, v1, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;->mGroupID:J

    cmp-long v10, v10, v2

    if-nez v10, :cond_0

    .line 334
    iget-object v7, v1, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;->mGroupTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method private static sendNickname(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "cv"    # Landroid/content/ContentValues;
    .param p1, "userNameCard"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 490
    const-string v1, "data1"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    const-string v1, "data1"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "nickname":Ljava/lang/String;
    const-string v1, "nickname"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    .end local v0    # "nickname":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static sendNote(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "cv"    # Landroid/content/ContentValues;
    .param p1, "userNameCard"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 559
    const-string v0, ""

    .line 560
    .local v0, "note":Ljava/lang/String;
    const-string v1, "data1"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    const-string v1, "data1"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\r\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    const-string v1, "note"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    :cond_0
    return-void
.end method

.method private static sendOnePostal(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 12
    .param p0, "cv"    # Landroid/content/ContentValues;
    .param p1, "userNameCard"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    .line 350
    new-instance v1, Lcom/lzx/iteam/json/JSONArray;

    invoke-direct {v1}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    .line 351
    .local v1, "array":Lcom/lzx/iteam/json/JSONArray;
    new-instance v0, Lcom/lzx/iteam/json/JSONArray;

    invoke-direct {v0}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    .line 353
    .local v0, "addressArray":Lcom/lzx/iteam/json/JSONArray;
    const-string v10, "data7"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 354
    const-string v10, "data7"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "city":Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 356
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 357
    invoke-virtual {v0, v2}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 359
    const-string v5, "City"

    .line 360
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 361
    invoke-virtual {v0, v5}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v2    # "city":Ljava/lang/String;
    .end local v5    # "label":Ljava/lang/String;
    :cond_0
    const-string v10, "data10"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 366
    const-string v10, "data10"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, "country":Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 368
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 369
    invoke-virtual {v0, v3}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 371
    const-string v5, "Country"

    .line 372
    .restart local v5    # "label":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 373
    invoke-virtual {v0, v5}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v3    # "country":Ljava/lang/String;
    .end local v5    # "label":Ljava/lang/String;
    :cond_1
    const-string v10, "data9"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 378
    const-string v10, "data9"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 379
    .local v6, "postcode":Ljava/lang/String;
    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 380
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 381
    invoke-virtual {v0, v6}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 383
    const-string v5, "ZIP"

    .line 384
    .restart local v5    # "label":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 385
    invoke-virtual {v0, v5}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 389
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "postcode":Ljava/lang/String;
    :cond_2
    const-string v10, "data8"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 390
    const-string v10, "data8"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 391
    .local v7, "region":Ljava/lang/String;
    invoke-static {v7}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 392
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 393
    invoke-virtual {v0, v7}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 395
    const-string v5, "State"

    .line 396
    .restart local v5    # "label":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 397
    invoke-virtual {v0, v5}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 401
    .end local v5    # "label":Ljava/lang/String;
    .end local v7    # "region":Ljava/lang/String;
    :cond_3
    const-string v10, "data4"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 407
    const-string v10, "data4"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 408
    .local v8, "street":Ljava/lang/String;
    invoke-static {v8}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 409
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    .line 410
    invoke-virtual {v0, v8}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 412
    const-string v5, "Street"

    .line 413
    .restart local v5    # "label":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 414
    invoke-virtual {v0, v5}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 417
    .end local v5    # "label":Ljava/lang/String;
    .end local v8    # "street":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1, v0}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 419
    const-string v10, "data2"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "data2"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 420
    const-string v10, "data2"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 421
    .local v9, "type":I
    invoke-static {v9}, Lcom/lzx/iteam/util/NameCardUtil;->addrType2StrLabel(I)Ljava/lang/String;

    move-result-object v5

    .line 422
    .restart local v5    # "label":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 423
    invoke-virtual {v1, v5}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 426
    .end local v5    # "label":Ljava/lang/String;
    .end local v9    # "type":I
    :cond_5
    invoke-virtual {v1}, Lcom/lzx/iteam/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, "jsonString":Ljava/lang/String;
    const-string v10, "daddresses"

    invoke-virtual {p1, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    return-void
.end method

.method private static sendOrganization(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 6
    .param p0, "cv"    # Landroid/content/ContentValues;
    .param p1, "userNameCard"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 471
    const-string v3, "data4"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 472
    const-string v3, "data4"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "jobtitle":Ljava/lang/String;
    const-string v3, "jobtitle"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    .end local v1    # "jobtitle":Ljava/lang/String;
    :cond_0
    const-string v3, "data1"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 477
    const-string v3, "data1"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "organization":Ljava/lang/String;
    const-string v3, "organization"

    .line 479
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 478
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    .end local v2    # "organization":Ljava/lang/String;
    :cond_1
    const-string v3, "data5"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 483
    const-string v3, "data5"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "department":Ljava/lang/String;
    const-string v3, "department"

    .line 485
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 484
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    .end local v0    # "department":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static sendPhone(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 7
    .param p0, "cv"    # Landroid/content/ContentValues;
    .param p1, "userNameCard"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 570
    new-instance v0, Lcom/lzx/iteam/json/JSONArray;

    invoke-direct {v0}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    .line 572
    .local v0, "array":Lcom/lzx/iteam/json/JSONArray;
    const-string v5, "data1"

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 573
    .local v3, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 574
    invoke-virtual {v0, v3}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 576
    const-string v5, "data2"

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "data2"

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 577
    const-string v5, "data2"

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 578
    .local v4, "type":I
    invoke-static {v4}, Lcom/lzx/iteam/util/NameCardUtil;->phoneType2StrLabel(I)Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, "label":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 580
    invoke-virtual {v0, v2}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 586
    .end local v4    # "type":I
    :goto_0
    invoke-virtual {v0}, Lcom/lzx/iteam/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, "jsonString":Ljava/lang/String;
    const-string v5, "dphones"

    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 588
    return-void

    .line 582
    .end local v1    # "jsonString":Ljava/lang/String;
    .end local v2    # "label":Ljava/lang/String;
    :cond_0
    const-string v2, "_$!<Other>!$_"

    .line 583
    .restart local v2    # "label":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 584
    invoke-virtual {v0, v2}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static sendPhoto(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "cv"    # Landroid/content/ContentValues;
    .param p1, "userNameCard"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 266
    const-string v2, "data15"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    const-string v2, "data15"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 268
    .local v0, "bytes":[B
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "pic":Ljava/lang/String;
    const-string v2, "image"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    .end local v0    # "bytes":[B
    .end local v1    # "pic":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static sendStructuredName(Landroid/content/ContentValues;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7
    .param p0, "cv"    # Landroid/content/ContentValues;
    .param p1, "userNameCard"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 444
    const-string v4, "data3"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    const-string v4, "data3"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "lastName":Ljava/lang/String;
    const-string v4, "lastname"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    .end local v2    # "lastName":Ljava/lang/String;
    :cond_0
    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 450
    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "firstName":Ljava/lang/String;
    const-string v4, "firstname"

    .line 452
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 451
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    .end local v1    # "firstName":Ljava/lang/String;
    :cond_1
    const-string v4, "data5"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 456
    const-string v4, "data5"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, "middlename":Ljava/lang/String;
    const-string v4, "middlename"

    .line 458
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 457
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    .end local v3    # "middlename":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 462
    .local v0, "displayName":Ljava/lang/String;
    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 463
    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    :cond_3
    return-object v0
.end method

.method private static sendWebpage(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 7
    .param p0, "cv"    # Landroid/content/ContentValues;
    .param p1, "userNameCard"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 500
    new-instance v0, Lcom/lzx/iteam/json/JSONArray;

    invoke-direct {v0}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    .line 502
    .local v0, "array":Lcom/lzx/iteam/json/JSONArray;
    const-string v5, "data1"

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 503
    .local v4, "urlAddress":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 504
    invoke-virtual {v0, v4}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 506
    const-string v5, "data2"

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "data2"

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 507
    const-string v5, "data2"

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 508
    .local v3, "type":I
    invoke-static {v3}, Lcom/lzx/iteam/util/NameCardUtil;->urlType2StrLabel(I)Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, "label":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 510
    invoke-virtual {v0, v2}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 517
    .end local v3    # "type":I
    :goto_0
    invoke-virtual {v0}, Lcom/lzx/iteam/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "jsonString":Ljava/lang/String;
    const-string v5, "durls"

    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    return-void

    .line 512
    .end local v1    # "jsonString":Ljava/lang/String;
    .end local v2    # "label":Ljava/lang/String;
    :cond_0
    const-string v2, "_$!<Other>!$_"

    .line 513
    .restart local v2    # "label":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-virtual {v0, v2}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static urlType2StrLabel(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "label":Ljava/lang/String;
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    .line 543
    const-string v0, "_$!<Home>!$_"

    .line 551
    :goto_0
    return-object v0

    .line 544
    :cond_0
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    .line 545
    const-string v0, "_$!<Work>!$_"

    .line 546
    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 547
    const-string v0, "_$!<HomePage>!$_"

    .line 548
    goto :goto_0

    .line 549
    :cond_2
    const-string v0, "_$!<Other>!$_"

    goto :goto_0
.end method
