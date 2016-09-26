.class public Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;
.super Ljava/lang/Object;
.source "ContactsSearchEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;,
        Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchKey;
    }
.end annotation


# static fields
.field private static final SEARCH_GROUP_TOKEN:I = 0x3

.field private static final SEARCH_TOKEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContactsSearchEngine"

.field private static final UPDATE_TOKEN:I = 0x2


# instance fields
.field private mContext:Lcom/lzx/iteam/CloudDialerActivity;

.field mLastReturnNumber:I

.field mLastSearchText:Ljava/lang/String;

.field private mListener:Lcom/lzx/iteam/contactssearch/OnQueryCompleteListener;

.field private final mLock:Ljava/lang/Object;

.field private mMatchNameContacts:Landroid/util/SparseIntArray;

.field private mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

.field private mService:Landroid/os/Messenger;

.field private mVisibleContacts:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;Lcom/lzx/iteam/contactssearch/OnQueryCompleteListener;)V
    .locals 1
    .param p1, "context"    # Lcom/lzx/iteam/CloudDialerActivity;
    .param p2, "listener"    # Lcom/lzx/iteam/contactssearch/OnQueryCompleteListener;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLock:Ljava/lang/Object;

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastSearchText:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    .line 56
    iput-object p2, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mListener:Lcom/lzx/iteam/contactssearch/OnQueryCompleteListener;

    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mVisibleContacts:Landroid/util/SparseIntArray;

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mMatchNameContacts:Landroid/util/SparseIntArray;

    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->searchImpl(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->searchImpl(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;)V
    .locals 0

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->updateSearchScope()V

    return-void
.end method

.method private initSearchHandler()Z
    .locals 4

    .prologue
    .line 814
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    if-nez v2, :cond_1

    .line 815
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ContactsSearchEngine"

    .line 816
    const/16 v3, 0xa

    .line 815
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 817
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 819
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 820
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 822
    const/4 v2, 0x0

    .line 827
    .end local v0    # "looper":Landroid/os/Looper;
    .end local v1    # "thread":Landroid/os/HandlerThread;
    :goto_0
    return v2

    .line 824
    .restart local v0    # "looper":Landroid/os/Looper;
    .restart local v1    # "thread":Landroid/os/HandlerThread;
    :cond_0
    new-instance v2, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    invoke-direct {v2, v0, p0}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;-><init>(Landroid/os/Looper;Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;)V

    iput-object v2, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    .line 827
    .end local v0    # "looper":Landroid/os/Looper;
    .end local v1    # "thread":Landroid/os/HandlerThread;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private searchContact(Ljava/lang/String;ILjava/util/TreeMap;)Ljava/util/LinkedHashSet;
    .locals 28
    .param p1, "searchText"    # Ljava/lang/String;
    .param p2, "ifShowPeopleNoPhone"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    .local p3, "contactedIdMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    const/4 v5, 0x0

    .line 535
    .local v5, "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mMatchNameContacts:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseIntArray;->clear()V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastSearchText:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastSearchText:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 542
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastSearchText:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastSearchText:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastReturnNumber:I

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 545
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastSearchText:Ljava/lang/String;

    .line 546
    const/16 v24, 0x0

    .line 675
    :goto_0
    return-object v24

    .line 554
    :cond_0
    const/4 v4, 0x0

    .line 556
    .local v4, "contactIdList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;>;"
    const/4 v9, 0x0

    .line 557
    .local v9, "isAllWord":Z
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 559
    .local v6, "fistCharacter":C
    const/16 v24, 0x61

    move/from16 v0, v24

    if-lt v6, v0, :cond_1

    const/16 v24, 0x7a

    move/from16 v0, v24

    if-gt v6, v0, :cond_1

    .line 560
    const/4 v9, 0x1

    .line 563
    :cond_1
    if-eqz v9, :cond_2

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getContactIndexListByZm(Ljava/lang/String;ILjava/util/TreeMap;)Ljava/util/TreeMap;

    move-result-object v4

    .line 571
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastSearchText:Ljava/lang/String;

    .line 572
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastReturnNumber:I

    .line 574
    if-nez v4, :cond_3

    if-nez p3, :cond_3

    .line 575
    const/16 v24, 0x0

    goto :goto_0

    .line 566
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getContactIndexListByT9(Ljava/lang/String;ILjava/util/TreeMap;)Ljava/util/TreeMap;

    move-result-object v4

    goto :goto_1

    .line 578
    :cond_3
    sget-boolean v24, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v24, :cond_4

    .line 579
    const/16 v24, 0x0

    goto :goto_0

    .line 603
    :cond_4
    if-eqz v4, :cond_6

    .line 604
    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 605
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_7

    .line 666
    invoke-virtual {v4}, Ljava/util/TreeMap;->clear()V

    .line 669
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    sget-boolean v24, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v24, :cond_12

    .line 670
    const/16 v24, 0x0

    goto :goto_0

    .line 606
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_7
    sget-boolean v24, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v24, :cond_8

    .line 607
    const/16 v24, 0x0

    goto :goto_0

    .line 610
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 612
    .local v22, "rankLevel":I
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/TreeMap;

    .line 613
    .local v23, "rankLevelMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    if-nez v5, :cond_9

    .line 614
    new-instance v5, Ljava/util/LinkedHashSet;

    .end local v5    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 617
    .restart local v5    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    :cond_9
    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v12, v0, [Ljava/lang/Integer;

    .line 618
    .local v12, "keys":[Ljava/lang/Integer;
    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 619
    array-length v0, v12

    move/from16 v24, v0

    add-int/lit8 v8, v24, -0x1

    .local v8, "i":I
    :goto_2
    const/16 v24, -0x1

    move/from16 v0, v24

    if-le v8, v0, :cond_5

    .line 620
    sget-boolean v24, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v24, :cond_a

    .line 621
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 623
    :cond_a
    aget-object v24, v12, v8

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 625
    .local v13, "matchnameLength":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/TreeMap;

    .line 626
    .local v19, "pinyinMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 627
    .local v11, "keyResultIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_c

    .line 619
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 628
    :cond_c
    sget-boolean v24, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v24, :cond_d

    .line 629
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 631
    :cond_d
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 633
    .local v17, "pinyin":Ljava/lang/Integer;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/TreeMap;

    .line 634
    .local v21, "pinyinTreemap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 635
    .local v18, "pinyinIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 636
    sget-boolean v24, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v24, :cond_f

    .line 637
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 639
    :cond_f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 640
    .local v20, "pinyinStr":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 641
    .local v15, "objList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 642
    .local v16, "objListIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 643
    sget-boolean v24, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v24, :cond_10

    .line 644
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 646
    :cond_10
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;

    .line 647
    .local v14, "obj":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mContactIdPosition:Ljava/util/HashMap;

    move-object/from16 v24, v0

    iget-wide v0, v14, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->contactId:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_11

    .line 648
    new-instance v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;

    invoke-direct {v7}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;-><init>()V

    .line 649
    .local v7, "format":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;
    iget v0, v14, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->rankLevel:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;->rankLevel:I

    .line 650
    iget v0, v14, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;->matchnameLength:I

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mContactIdPosition:Ljava/util/HashMap;

    move-object/from16 v24, v0

    iget-wide v0, v14, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->contactId:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .end local v7    # "format":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;
    :cond_11
    iget-wide v0, v14, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->contactId:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 672
    .end local v8    # "i":I
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v11    # "keyResultIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v12    # "keys":[Ljava/lang/Integer;
    .end local v13    # "matchnameLength":I
    .end local v14    # "obj":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    .end local v15    # "objList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    .end local v16    # "objListIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    .end local v17    # "pinyin":Ljava/lang/Integer;
    .end local v18    # "pinyinIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v19    # "pinyinMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    .end local v20    # "pinyinStr":Ljava/lang/String;
    .end local v21    # "pinyinTreemap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    .end local v22    # "rankLevel":I
    .end local v23    # "rankLevelMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    :cond_12
    if-eqz v5, :cond_13

    .line 673
    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastReturnNumber:I

    :cond_13
    move-object/from16 v24, v5

    .line 675
    goto/16 :goto_0
.end method

.method private searchContact(Ljava/lang/String;Ljava/lang/String;ILjava/util/TreeMap;)Ljava/util/LinkedHashSet;
    .locals 30
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "searchText"    # Ljava/lang/String;
    .param p3, "ifShowPeopleNoPhone"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    .local p4, "contactedIdMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    const/4 v7, 0x0

    .line 386
    .local v7, "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mMatchNameContacts:Landroid/util/SparseIntArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseIntArray;->clear()V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastSearchText:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastSearchText:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 393
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastSearchText:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastSearchText:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 395
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastReturnNumber:I

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 396
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastSearchText:Ljava/lang/String;

    .line 397
    const/16 v26, 0x0

    .line 526
    :goto_0
    return-object v26

    .line 405
    :cond_0
    const/4 v6, 0x0

    .line 407
    .local v6, "contactIdList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;>;"
    const/4 v11, 0x0

    .line 408
    .local v11, "isAllWord":Z
    const/16 v26, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 410
    .local v8, "fistCharacter":C
    const/16 v26, 0x61

    move/from16 v0, v26

    if-lt v8, v0, :cond_1

    const/16 v26, 0x7a

    move/from16 v0, v26

    if-gt v8, v0, :cond_1

    .line 411
    const/4 v11, 0x1

    .line 414
    :cond_1
    if-eqz v11, :cond_2

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getContactIndexListByZm(Ljava/lang/String;Ljava/lang/String;ILjava/util/TreeMap;)Ljava/util/TreeMap;

    move-result-object v6

    .line 422
    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastSearchText:Ljava/lang/String;

    .line 423
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastReturnNumber:I

    .line 425
    if-nez v6, :cond_3

    if-nez p4, :cond_3

    .line 426
    const/16 v26, 0x0

    goto :goto_0

    .line 417
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getContactIndexListByT9(Ljava/lang/String;ILjava/util/TreeMap;)Ljava/util/TreeMap;

    move-result-object v6

    goto :goto_1

    .line 429
    :cond_3
    sget-boolean v26, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v26, :cond_4

    .line 430
    const/16 v26, 0x0

    goto :goto_0

    .line 454
    :cond_4
    if-eqz v6, :cond_6

    .line 455
    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 456
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_7

    .line 517
    invoke-virtual {v6}, Ljava/util/TreeMap;->clear()V

    .line 520
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    sget-boolean v26, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v26, :cond_12

    .line 521
    const/16 v26, 0x0

    goto :goto_0

    .line 457
    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_7
    sget-boolean v26, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v26, :cond_8

    .line 458
    const/16 v26, 0x0

    goto :goto_0

    .line 461
    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 463
    .local v24, "rankLevel":I
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/TreeMap;

    .line 464
    .local v25, "rankLevelMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    if-nez v7, :cond_9

    .line 465
    new-instance v7, Ljava/util/LinkedHashSet;

    .end local v7    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 468
    .restart local v7    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    :cond_9
    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v14, v0, [Ljava/lang/Integer;

    .line 469
    .local v14, "keys":[Ljava/lang/Integer;
    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 470
    array-length v0, v14

    move/from16 v26, v0

    add-int/lit8 v10, v26, -0x1

    .local v10, "i":I
    :goto_2
    const/16 v26, -0x1

    move/from16 v0, v26

    if-le v10, v0, :cond_5

    .line 471
    sget-boolean v26, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v26, :cond_a

    .line 472
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 474
    :cond_a
    aget-object v26, v14, v10

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 476
    .local v15, "matchnameLength":I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/TreeMap;

    .line 477
    .local v21, "pinyinMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 478
    .local v13, "keyResultIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_c

    .line 470
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 479
    :cond_c
    sget-boolean v26, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v26, :cond_d

    .line 480
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 482
    :cond_d
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 484
    .local v19, "pinyin":Ljava/lang/Integer;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/TreeMap;

    .line 485
    .local v23, "pinyinTreemap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 486
    .local v20, "pinyinIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    .line 487
    sget-boolean v26, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v26, :cond_f

    .line 488
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 490
    :cond_f
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 491
    .local v22, "pinyinStr":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 492
    .local v17, "objList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 493
    .local v18, "objListIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    .line 494
    sget-boolean v26, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v26, :cond_10

    .line 495
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 497
    :cond_10
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;

    .line 498
    .local v16, "obj":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mContactIdPosition:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->contactId:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_11

    .line 499
    new-instance v9, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;

    invoke-direct {v9}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;-><init>()V

    .line 500
    .local v9, "format":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->rankLevel:I

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v9, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;->rankLevel:I

    .line 501
    move-object/from16 v0, v16

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v9, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;->matchnameLength:I

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mContactIdPosition:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->contactId:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .end local v9    # "format":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;
    :cond_11
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->contactId:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 523
    .end local v10    # "i":I
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v13    # "keyResultIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v14    # "keys":[Ljava/lang/Integer;
    .end local v15    # "matchnameLength":I
    .end local v16    # "obj":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    .end local v17    # "objList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    .end local v18    # "objListIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    .end local v19    # "pinyin":Ljava/lang/Integer;
    .end local v20    # "pinyinIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v21    # "pinyinMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    .end local v22    # "pinyinStr":Ljava/lang/String;
    .end local v23    # "pinyinTreemap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    .end local v24    # "rankLevel":I
    .end local v25    # "rankLevelMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    :cond_12
    if-eqz v7, :cond_13

    .line 524
    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->size()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastReturnNumber:I

    :cond_13
    move-object/from16 v26, v7

    .line 526
    goto/16 :goto_0
.end method

.method private searchImpl(Ljava/lang/String;I)V
    .locals 28
    .param p1, "searchText"    # Ljava/lang/String;
    .param p2, "ifShowPeopleNoPhone"    # I

    .prologue
    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mContactIdPosition:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->clear()V

    .line 248
    const/4 v11, 0x0

    .line 249
    .local v11, "contactsId":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    const/4 v8, 0x0

    .line 250
    .local v8, "contactedIdMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lzx/iteam/CloudDialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PhoneNumberArea;

    move-result-object v21

    .line 251
    .local v21, "phoneNumberArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-object/from16 v25, v0

    const-string v26, "name_sort"

    const-class v27, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v27}, Lcom/lzx/iteam/util/PreferenceUtil;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 253
    .local v24, "sortBy":I
    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 254
    new-instance v8, Ljava/util/TreeMap;

    .end local v8    # "contactedIdMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 256
    .restart local v8    # "contactedIdMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 257
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastSearchText:Ljava/lang/String;

    .line 258
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastReturnNumber:I

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 261
    :cond_2
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 262
    .local v16, "firstChar":C
    const/16 v25, 0x2a

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 264
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-static/range {p1 .. p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->serachForFuzzy(Ljava/lang/String;Z)Ljava/util/LinkedHashSet;

    move-result-object v11

    .line 342
    :cond_3
    :goto_1
    sget-boolean v25, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v25, :cond_1

    .line 346
    const/4 v9, 0x0

    .line 348
    .local v9, "contactedIdSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v25

    if-lez v25, :cond_4

    .line 349
    new-instance v9, Ljava/util/LinkedHashSet;

    .end local v9    # "contactedIdSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 350
    .restart local v9    # "contactedIdSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    invoke-virtual {v8}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v20, v0

    .line 351
    .local v20, "keys":[Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 352
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v18, v25, -0x1

    .local v18, "i":I
    :goto_2
    const/16 v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-gt v0, v1, :cond_14

    .line 364
    invoke-virtual {v8}, Ljava/util/TreeMap;->clear()V

    .line 367
    .end local v18    # "i":I
    .end local v20    # "keys":[Ljava/lang/Integer;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mListener:Lcom/lzx/iteam/contactssearch/OnQueryCompleteListener;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    .line 368
    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    .line 369
    .local v13, "contactsIdResult":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    if-eqz v9, :cond_5

    .line 370
    invoke-virtual {v13, v9}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 372
    :cond_5
    if-eqz v11, :cond_6

    .line 373
    invoke-virtual {v13, v11}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 375
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mListener:Lcom/lzx/iteam/contactssearch/OnQueryCompleteListener;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Lcom/lzx/iteam/contactssearch/OnQueryCompleteListener;->onQueryComplete(Ljava/util/LinkedHashSet;)V

    goto/16 :goto_0

    .line 270
    .end local v9    # "contactedIdSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    .end local v13    # "contactsIdResult":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    :cond_7
    const/16 v25, 0x2b

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v8}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->searchContact(Ljava/lang/String;ILjava/util/TreeMap;)Ljava/util/LinkedHashSet;

    move-result-object v11

    .line 275
    :cond_8
    const/4 v12, 0x0

    .line 276
    .local v12, "contactsIdPhoneNumber":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_10

    const/16 v25, 0x2b

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    const/16 v25, 0x39

    move/from16 v0, v16

    move/from16 v1, v25

    if-gt v0, v1, :cond_10

    const/16 v25, 0x30

    move/from16 v0, v16

    move/from16 v1, v25

    if-lt v0, v1, :cond_10

    .line 278
    :cond_9
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v23, "searchCase":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual/range {v21 .. v21}, Lcom/lzx/iteam/util/PhoneNumberArea;->getCountryCode()Ljava/lang/String;

    move-result-object v14

    .line 281
    .local v14, "countryCode":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInternationalCode()Ljava/lang/String;

    move-result-object v19

    .line 284
    .local v19, "internationalCode":Ljava/lang/String;
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 285
    .local v17, "firstCharacter":C
    const/16 v22, 0x0

    .line 286
    .local v22, "sb":Ljava/lang/StringBuilder;
    const/16 v25, 0x2b

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    .line 287
    if-nez v22, :cond_a

    .line 288
    new-instance v22, Ljava/lang/StringBuilder;

    .end local v22    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .restart local v22    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_b
    :goto_3
    if-eqz v22, :cond_c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_c

    .line 303
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_c
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 307
    .local v15, "countryPhone":Ljava/lang/StringBuffer;
    const-string v25, "86"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_d

    const-string v25, "61"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 308
    :cond_d
    const/16 v25, 0x30

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 309
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 310
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    :cond_e
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v25

    if-lez v25, :cond_f

    .line 315
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_f
    sget-boolean v25, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v25, :cond_1

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lzx/iteam/CloudDialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 320
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getContactPeople(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/TreeMap;)Ljava/util/LinkedHashSet;

    move-result-object v12

    .line 324
    .end local v14    # "countryCode":Ljava/lang/String;
    .end local v15    # "countryPhone":Ljava/lang/StringBuffer;
    .end local v17    # "firstCharacter":C
    .end local v19    # "internationalCode":Ljava/lang/String;
    .end local v22    # "sb":Ljava/lang/StringBuilder;
    .end local v23    # "searchCase":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10
    sget-boolean v25, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v25, :cond_1

    .line 327
    if-nez v11, :cond_13

    if-eqz v12, :cond_13

    .line 328
    move-object v11, v12

    .line 329
    goto/16 :goto_1

    .line 292
    .restart local v14    # "countryCode":Ljava/lang/String;
    .restart local v17    # "firstCharacter":C
    .restart local v19    # "internationalCode":Ljava/lang/String;
    .restart local v22    # "sb":Ljava/lang/StringBuilder;
    .restart local v23    # "searchCase":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_11
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_b

    .line 294
    if-nez v22, :cond_12

    .line 295
    new-instance v22, Ljava/lang/StringBuilder;

    .end local v22    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .restart local v22    # "sb":Ljava/lang/StringBuilder;
    :cond_12
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 299
    const-string v25, "+"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 329
    .end local v14    # "countryCode":Ljava/lang/String;
    .end local v17    # "firstCharacter":C
    .end local v19    # "internationalCode":Ljava/lang/String;
    .end local v22    # "sb":Ljava/lang/StringBuilder;
    .end local v23    # "searchCase":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    if-eqz v11, :cond_3

    if-eqz v12, :cond_3

    .line 330
    invoke-virtual {v11, v12}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 353
    .end local v12    # "contactsIdPhoneNumber":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    .restart local v9    # "contactedIdSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    .restart local v18    # "i":I
    .restart local v20    # "keys":[Ljava/lang/Integer;
    :cond_14
    sget-boolean v25, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v25, :cond_1

    .line 356
    aget-object v25, v20, v18

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 357
    .local v10, "contactedNumber":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 358
    .local v6, "contactedIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 359
    .local v7, "contactedIdListIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_15

    .line 352
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_2

    .line 360
    :cond_15
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 361
    .local v4, "contactId":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private searchImpl(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 26
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "searchText"    # Ljava/lang/String;
    .param p3, "ifShowPeopleNoPhone"    # I

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mContactIdPosition:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->clear()V

    .line 110
    const/4 v11, 0x0

    .line 111
    .local v11, "contactsId":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    const/4 v8, 0x0

    .line 112
    .local v8, "contactedIdMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lzx/iteam/CloudDialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PhoneNumberArea;

    move-result-object v21

    .line 120
    .local v21, "phoneNumberArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    invoke-static/range {p2 .. p2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 121
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastSearchText:Ljava/lang/String;

    .line 122
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLastReturnNumber:I

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 126
    .local v16, "firstChar":C
    const/16 v24, 0x2a

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 128
    const/16 v24, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 129
    invoke-static/range {p2 .. p2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->serachForFuzzy(Ljava/lang/String;Z)Ljava/util/LinkedHashSet;

    move-result-object v11

    .line 206
    :cond_2
    :goto_1
    sget-boolean v24, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v24, :cond_0

    .line 210
    const/4 v9, 0x0

    .line 212
    .local v9, "contactedIdSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v24

    if-lez v24, :cond_3

    .line 213
    new-instance v9, Ljava/util/LinkedHashSet;

    .end local v9    # "contactedIdSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 214
    .restart local v9    # "contactedIdSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    invoke-virtual {v8}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v20, v0

    .line 215
    .local v20, "keys":[Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 216
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v18, v24, -0x1

    .local v18, "i":I
    :goto_2
    const/16 v24, -0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-gt v0, v1, :cond_13

    .line 228
    invoke-virtual {v8}, Ljava/util/TreeMap;->clear()V

    .line 231
    .end local v18    # "i":I
    .end local v20    # "keys":[Ljava/lang/Integer;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mListener:Lcom/lzx/iteam/contactssearch/OnQueryCompleteListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 232
    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    .line 233
    .local v13, "contactsIdResult":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    if-eqz v9, :cond_4

    .line 234
    invoke-virtual {v13, v9}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 236
    :cond_4
    if-eqz v11, :cond_5

    .line 237
    invoke-virtual {v13, v11}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 239
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mListener:Lcom/lzx/iteam/contactssearch/OnQueryCompleteListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v13}, Lcom/lzx/iteam/contactssearch/OnQueryCompleteListener;->onQueryComplete(Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    goto/16 :goto_0

    .line 134
    .end local v9    # "contactedIdSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    .end local v13    # "contactsIdResult":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    :cond_6
    const/16 v24, 0x2b

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    .line 135
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->searchContact(Ljava/lang/String;Ljava/lang/String;ILjava/util/TreeMap;)Ljava/util/LinkedHashSet;

    move-result-object v11

    .line 139
    :cond_7
    const/4 v12, 0x0

    .line 140
    .local v12, "contactsIdPhoneNumber":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_f

    const/16 v24, 0x2b

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    const/16 v24, 0x39

    move/from16 v0, v16

    move/from16 v1, v24

    if-gt v0, v1, :cond_f

    const/16 v24, 0x30

    move/from16 v0, v16

    move/from16 v1, v24

    if-lt v0, v1, :cond_f

    .line 142
    :cond_8
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v23, "searchCase":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual/range {v21 .. v21}, Lcom/lzx/iteam/util/PhoneNumberArea;->getCountryCode()Ljava/lang/String;

    move-result-object v14

    .line 145
    .local v14, "countryCode":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInternationalCode()Ljava/lang/String;

    move-result-object v19

    .line 148
    .local v19, "internationalCode":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 149
    .local v17, "firstCharacter":C
    const/16 v22, 0x0

    .line 150
    .local v22, "sb":Ljava/lang/StringBuilder;
    const/16 v24, 0x2b

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 151
    if-nez v22, :cond_9

    .line 152
    new-instance v22, Ljava/lang/StringBuilder;

    .end local v22    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .restart local v22    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const/16 v24, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_a
    :goto_3
    if-eqz v22, :cond_b

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_b

    .line 167
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_b
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v15, "countryPhone":Ljava/lang/StringBuffer;
    const-string v24, "86"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    const-string v24, "61"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 172
    :cond_c
    const/16 v24, 0x30

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 173
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 174
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const/16 v24, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :cond_d
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    if-lez v24, :cond_e

    .line 179
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_e
    sget-boolean v24, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v24, :cond_0

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lzx/iteam/CloudDialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 184
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getContactPeople(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/TreeMap;)Ljava/util/LinkedHashSet;

    move-result-object v12

    .line 188
    .end local v14    # "countryCode":Ljava/lang/String;
    .end local v15    # "countryPhone":Ljava/lang/StringBuffer;
    .end local v17    # "firstCharacter":C
    .end local v19    # "internationalCode":Ljava/lang/String;
    .end local v22    # "sb":Ljava/lang/StringBuilder;
    .end local v23    # "searchCase":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f
    sget-boolean v24, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v24, :cond_0

    .line 191
    if-nez v11, :cond_12

    if-eqz v12, :cond_12

    .line 192
    move-object v11, v12

    .line 193
    goto/16 :goto_1

    .line 156
    .restart local v14    # "countryCode":Ljava/lang/String;
    .restart local v17    # "firstCharacter":C
    .restart local v19    # "internationalCode":Ljava/lang/String;
    .restart local v22    # "sb":Ljava/lang/StringBuilder;
    .restart local v23    # "searchCase":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_a

    .line 158
    if-nez v22, :cond_11

    .line 159
    new-instance v22, Ljava/lang/StringBuilder;

    .end local v22    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .restart local v22    # "sb":Ljava/lang/StringBuilder;
    :cond_11
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 163
    const-string v24, "+"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 193
    .end local v14    # "countryCode":Ljava/lang/String;
    .end local v17    # "firstCharacter":C
    .end local v19    # "internationalCode":Ljava/lang/String;
    .end local v22    # "sb":Ljava/lang/StringBuilder;
    .end local v23    # "searchCase":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_12
    if-eqz v11, :cond_2

    if-eqz v12, :cond_2

    .line 194
    invoke-virtual {v11, v12}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 217
    .end local v12    # "contactsIdPhoneNumber":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    .restart local v9    # "contactedIdSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    .restart local v18    # "i":I
    .restart local v20    # "keys":[Ljava/lang/Integer;
    :cond_13
    sget-boolean v24, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v24, :cond_0

    .line 220
    aget-object v24, v20, v18

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 221
    .local v10, "contactedNumber":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 222
    .local v6, "contactedIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 223
    .local v7, "contactedIdListIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_14

    .line 216
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_2

    .line 224
    :cond_14
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 225
    .local v4, "contactId":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private sendUpdateMessage()V
    .locals 4

    .prologue
    .line 799
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 800
    :try_start_0
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->initSearchHandler()Z

    move-result v1

    if-nez v1, :cond_0

    .line 801
    monitor-exit v2

    .line 808
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 805
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;->removeMessages(I)V

    .line 806
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 799
    monitor-exit v2

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSearchScope()V
    .locals 15

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v14, -0x1

    .line 682
    const/4 v13, 0x0

    .line 684
    .local v13, "visibleContacts":[I
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    if-nez v0, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .local v11, "sb":Ljava/lang/StringBuilder;
    const-string v0, "in_visible_group"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 690
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    new-array v2, v5, [Ljava/lang/String;

    .line 694
    const-string v0, "contact_id"

    aput-object v0, v2, v3

    const-string v0, "name_raw_contact_id"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v1, "contact_presence"

    aput-object v1, v2, v0

    .line 697
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 699
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mContext:Lcom/lzx/iteam/CloudDialerActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 730
    if-eqz v7, :cond_0

    .line 731
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 702
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mVisibleContacts:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 703
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 704
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 703
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 705
    if-nez v7, :cond_4

    .line 730
    if-eqz v7, :cond_0

    .line 731
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 709
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 710
    .local v6, "contactId":I
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 711
    .local v10, "rawContactId":I
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mVisibleContacts:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v14, :cond_4

    .line 712
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mVisibleContacts:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 708
    .end local v6    # "contactId":I
    .end local v10    # "rawContactId":I
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 715
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mVisibleContacts:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 716
    .local v12, "size":I
    new-array v13, v12, [I

    .line 718
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v12, :cond_5

    .line 724
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    .line 725
    .local v9, "msg":Landroid/os/Message;
    iput-object v13, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 726
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mService:Landroid/os/Messenger;

    invoke-virtual {v0, v9}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 730
    if-eqz v7, :cond_0

    .line 731
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 719
    .end local v9    # "msg":Landroid/os/Message;
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mVisibleContacts:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    aput v0, v13, v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 718
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v8    # "i":I
    .end local v12    # "size":I
    :catch_0
    move-exception v0

    .line 730
    if-eqz v7, :cond_0

    .line 731
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 729
    :catchall_0
    move-exception v0

    .line 730
    if-eqz v7, :cond_6

    .line 731
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 733
    :cond_6
    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mVisibleContacts:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 93
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mMatchNameContacts:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 95
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;->removeMessages(I)V

    .line 98
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;->removeMessages(I)V

    .line 99
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    .line 95
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iput-object v3, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mListener:Lcom/lzx/iteam/contactssearch/OnQueryCompleteListener;

    .line 104
    iput-object v3, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    .line 105
    return-void

    .line 95
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->sendUpdateMessage()V

    .line 85
    :cond_0
    return-void
.end method

.method public sendSearchMessage(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ifShowPeopleNoPhone"    # Z

    .prologue
    .line 764
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 765
    :try_start_0
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->initSearchHandler()Z

    move-result v2

    if-nez v2, :cond_0

    .line 766
    monitor-exit v3

    .line 787
    :goto_0
    return-void

    .line 768
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 770
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 771
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "groupId"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v2, "key"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 775
    if-eqz p3, :cond_1

    .line 776
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 782
    :goto_1
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->setHaveNewInput(Z)V

    .line 783
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 784
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;->sendMessage(Landroid/os/Message;)Z

    .line 764
    monitor-exit v3

    goto :goto_0

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 778
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput v2, v1, Landroid/os/Message;->arg1:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public sendSearchMessage(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ifShowPeopleNoPhone"    # Z

    .prologue
    .line 742
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 743
    :try_start_0
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->initSearchHandler()Z

    move-result v1

    if-nez v1, :cond_0

    .line 744
    monitor-exit v2

    .line 760
    :goto_0
    return-void

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 747
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 748
    if-eqz p2, :cond_1

    .line 749
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 755
    :goto_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->setHaveNewInput(Z)V

    .line 756
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 757
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->mSearchHandler:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;->sendMessage(Landroid/os/Message;)Z

    .line 742
    monitor-exit v2

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 751
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput v1, v0, Landroid/os/Message;->arg1:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
