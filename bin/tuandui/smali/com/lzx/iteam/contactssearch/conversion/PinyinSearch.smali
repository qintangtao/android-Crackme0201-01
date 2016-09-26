.class public Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;
.super Ljava/lang/Object;
.source "PinyinSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;,
        Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;,
        Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;,
        Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;,
        Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    }
.end annotation


# static fields
.field public static mHaveNewInput:Z

.field private static mInstance:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

.field public static mPersistInterrupted:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field checkList:Ljava/util/BitSet;

.field key:Ljava/lang/StringBuilder;

.field public mBusinessCardGlobal:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lzx/iteam/contactssearch/conversion/SimpleContact;",
            ">;"
        }
    .end annotation
.end field

.field private mBusinessCardId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mContactIdPosition:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mFirstLetterStr:Ljava/lang/StringBuilder;

.field public mHanziPinyin:Ljava/lang/StringBuilder;

.field public mReciveCard:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field myContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;",
            ">;"
        }
    .end annotation
.end field

.field myDialerDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field myGroupContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;",
            ">;>;"
        }
    .end annotation
.end field

.field myGroupDialerDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;>;"
        }
    .end annotation
.end field

.field myPinyinRegCacheDict:Ljava/util/Dictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Dictionary",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field myPinyinRegCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field myRegPinyinArray:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field orderSet:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;",
            ">;>;>;>;>;"
        }
    .end annotation
.end field

.field private sExp:Ljava/lang/StringBuilder;

.field searchMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private temp:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    sput-boolean v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    .line 83
    sput-boolean v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mPersistInterrupted:Z

    .line 122
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mBusinessCardGlobal:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mReciveCard:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mBusinessCardId:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myGroupContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myDialerDict:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myGroupDialerDict:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myRegPinyinArray:Ljava/util/HashSet;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mContactIdPosition:Ljava/util/HashMap;

    .line 957
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->searchMap:Ljava/util/HashMap;

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    .line 959
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    .line 960
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->checkList:Ljava/util/BitSet;

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    .line 1777
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->temp:Ljava/lang/StringBuffer;

    .line 1778
    const-string v0, "PinyinSearch"

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->TAG:Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->initMyRegPinyinArray()V

    .line 145
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mInstance:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mInstance:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    .line 134
    :cond_0
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mInstance:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    return-object v0
.end method

.method public static declared-synchronized setHaveNewInput(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 80
    const-class v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v0

    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setPersistInterrupted(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 86
    const-class v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mPersistInterrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit v0

    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addFuzzyString(JLjava/lang/String;)V
    .locals 3
    .param p1, "contactIndex"    # J
    .param p3, "fuzzyString"    # Ljava/lang/String;

    .prologue
    .line 936
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;

    .line 937
    .local v0, "node":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    if-eqz v0, :cond_0

    .line 939
    iput-object p3, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->fuzzyString:Ljava/lang/String;

    .line 941
    :cond_0
    return-void
.end method

.method public addGroupPinyinDict(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 33
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "contactName"    # Ljava/lang/String;
    .param p3, "contactId"    # J
    .param p5, "havePhoneNumber"    # Z

    .prologue
    .line 627
    invoke-static/range {p2 .. p2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 785
    :cond_0
    return-void

    .line 631
    :cond_1
    const-string v30, " "

    const-string v31, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 632
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v7, "cachePyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v20, "nlPy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    .line 636
    .local v10, "iLength":I
    const/16 v30, 0x14

    move/from16 v0, v30

    if-le v10, v0, :cond_2

    .line 637
    const/16 v10, 0x14

    .line 642
    :cond_2
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v25, "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-lt v9, v10, :cond_b

    .line 661
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 662
    const-string v30, "\u0002"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_1
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-nez v31, :cond_f

    .line 667
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 672
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getKeyFromPinyinList(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v3

    .line 677
    .local v3, "KeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 679
    .local v15, "keySegsList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 681
    .local v23, "rankDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_3
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-nez v31, :cond_10

    .line 710
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 711
    const/4 v3, 0x0

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myGroupContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/concurrent/ConcurrentHashMap;

    .line 715
    .local v18, "myContactInfoDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;>;"
    if-nez v18, :cond_5

    .line 717
    new-instance v18, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v18    # "myContactInfoDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 718
    .restart local v18    # "myContactInfoDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myGroupContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    :cond_5
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;

    .line 724
    .local v17, "myContactInfo":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    if-nez v17, :cond_6

    .line 725
    new-instance v17, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;

    .end local v17    # "myContactInfo":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;-><init>(Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;)V

    .line 726
    .restart local v17    # "myContactInfo":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v17

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->nameLength:I

    .line 733
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 734
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .local v26, "sb":Ljava/lang/StringBuilder;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-nez v30, :cond_13

    .line 742
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v30

    if-eqz v30, :cond_7

    .line 743
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 746
    :cond_7
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    .line 747
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->myRank:Ljava/util/concurrent/ConcurrentHashMap;

    .line 750
    move/from16 v0, p5

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->havePhoneNumber:Z

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myGroupDialerDict:Ljava/util/HashMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;

    .line 761
    .local v19, "myDialerDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/BitSet;>;"
    if-nez v19, :cond_8

    .line 763
    new-instance v19, Ljava/util/HashMap;

    .end local v19    # "myDialerDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/BitSet;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 764
    .restart local v19    # "myDialerDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/BitSet;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myGroupDialerDict:Ljava/util/HashMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :cond_8
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 768
    .local v14, "keySegsIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_0

    .line 769
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 770
    .local v16, "ks":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/BitSet;

    .line 771
    .local v12, "item":Ljava/util/BitSet;
    if-nez v12, :cond_a

    .line 772
    new-instance v12, Ljava/util/BitSet;

    .end local v12    # "item":Ljava/util/BitSet;
    invoke-direct {v12}, Ljava/util/BitSet;-><init>()V

    .line 774
    .restart local v12    # "item":Ljava/util/BitSet;
    :cond_a
    move-wide/from16 v0, p3

    long-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v30

    if-nez v30, :cond_9

    .line 775
    move-wide/from16 v0, p3

    long-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/util/BitSet;->set(I)V

    .line 776
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 645
    .end local v3    # "KeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v12    # "item":Ljava/util/BitSet;
    .end local v14    # "keySegsIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "keySegsList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "ks":Ljava/lang/String;
    .end local v17    # "myContactInfo":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    .end local v18    # "myContactInfoDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;>;"
    .end local v19    # "myDialerDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/BitSet;>;"
    .end local v23    # "rankDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v26    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 646
    .local v5, "cacheListCount":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getPinyinReal(CLjava/util/ArrayList;)V

    .line 647
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_c
    :goto_4
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-nez v30, :cond_d

    .line 657
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 658
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 659
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 643
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 647
    :cond_d
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 648
    .local v21, "py":Ljava/lang/String;
    if-lez v5, :cond_e

    .line 649
    const/4 v4, 0x0

    .local v4, "cacheIdx":I
    :goto_5
    if-ge v4, v5, :cond_c

    .line 650
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 651
    .local v27, "temp":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 654
    .end local v4    # "cacheIdx":I
    .end local v27    # "temp":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 663
    .end local v5    # "cacheListCount":I
    .end local v21    # "py":Ljava/lang/String;
    :cond_f
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 664
    .local v6, "cachePy":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getT9StrFromLetters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 681
    .end local v6    # "cachePy":Ljava/lang/String;
    .restart local v3    # "KeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v15    # "keySegsList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23    # "rankDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_10
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 682
    .local v22, "pyKey":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    if-nez v31, :cond_4

    .line 686
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getPyFcSegs(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v28

    .line 687
    .local v28, "tempkeySegs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 694
    invoke-virtual/range {v28 .. v28}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 695
    .local v13, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_11
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 696
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 697
    .restart local v16    # "ks":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/ArrayList;

    .line 698
    .local v24, "rankDictValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v24, :cond_12

    .line 699
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v29, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 703
    .end local v29    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_12
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_11

    .line 704
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 736
    .end local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v16    # "ks":Ljava/lang/String;
    .end local v22    # "pyKey":Ljava/lang/String;
    .end local v24    # "rankDictValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "tempkeySegs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v17    # "myContactInfo":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    .restart local v18    # "myContactInfoDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;>;"
    .restart local v26    # "sb":Ljava/lang/StringBuilder;
    :cond_13
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 737
    .local v8, "element":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    const-string v30, "\u0001"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method public addPinyinDict(Ljava/lang/String;JLjava/lang/String;IZ)V
    .locals 32
    .param p1, "contactName"    # Ljava/lang/String;
    .param p2, "contactIndex"    # J
    .param p4, "fuzzyString"    # Ljava/lang/String;
    .param p5, "contactedNumber"    # I
    .param p6, "havePhoneNumber"    # Z

    .prologue
    .line 793
    invoke-static/range {p1 .. p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 932
    :cond_0
    return-void

    .line 797
    :cond_1
    const-string v28, " "

    const-string v29, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 798
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v7, "cachePyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .local v18, "nlPy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 802
    .local v10, "iLength":I
    const/16 v28, 0x14

    move/from16 v0, v28

    if-le v10, v0, :cond_2

    .line 803
    const/16 v10, 0x14

    .line 808
    :cond_2
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 809
    .local v23, "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-lt v9, v10, :cond_b

    .line 827
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 828
    const-string v28, "\u0002"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-nez v29, :cond_f

    .line 833
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 838
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getKeyFromPinyinList(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v3

    .line 843
    .local v3, "KeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 845
    .local v15, "keySegsList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 847
    .local v21, "rankDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-nez v29, :cond_10

    .line 876
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 877
    const/4 v3, 0x0

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v28, v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;

    .line 881
    .local v17, "myContactInfo":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    if-nez v17, :cond_5

    .line 882
    new-instance v17, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;

    .end local v17    # "myContactInfo":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;-><init>(Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;)V

    .line 883
    .restart local v17    # "myContactInfo":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v28, v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    :cond_5
    const/16 v28, -0x1

    move/from16 v0, p5

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    .line 887
    move/from16 v0, p5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->contactedNumber:I

    .line 890
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v17

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->nameLength:I

    .line 892
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 893
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 894
    .local v24, "sb":Ljava/lang/StringBuilder;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-nez v28, :cond_13

    .line 901
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-eqz v28, :cond_7

    .line 902
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 905
    :cond_7
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    .line 906
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->myRank:Ljava/util/concurrent/ConcurrentHashMap;

    .line 908
    invoke-static/range {p4 .. p4}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_8

    .line 909
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->fuzzyString:Ljava/lang/String;

    .line 911
    :cond_8
    move/from16 v0, p6

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->havePhoneNumber:Z

    .line 920
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 921
    .local v14, "keySegsIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 922
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 923
    .local v16, "ks":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myDialerDict:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/BitSet;

    .line 924
    .local v12, "item":Ljava/util/BitSet;
    if-nez v12, :cond_a

    .line 925
    new-instance v12, Ljava/util/BitSet;

    .end local v12    # "item":Ljava/util/BitSet;
    invoke-direct {v12}, Ljava/util/BitSet;-><init>()V

    .line 927
    .restart local v12    # "item":Ljava/util/BitSet;
    :cond_a
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v28

    if-nez v28, :cond_9

    .line 928
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/BitSet;->set(I)V

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myDialerDict:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 811
    .end local v3    # "KeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v12    # "item":Ljava/util/BitSet;
    .end local v14    # "keySegsIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "keySegsList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "ks":Ljava/lang/String;
    .end local v17    # "myContactInfo":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    .end local v21    # "rankDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v24    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 812
    .local v5, "cacheListCount":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getPinyinReal(CLjava/util/ArrayList;)V

    .line 813
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_c
    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-nez v28, :cond_d

    .line 823
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 824
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 825
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 809
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 813
    :cond_d
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 814
    .local v19, "py":Ljava/lang/String;
    if-lez v5, :cond_e

    .line 815
    const/4 v4, 0x0

    .local v4, "cacheIdx":I
    :goto_5
    if-ge v4, v5, :cond_c

    .line 816
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 817
    .local v25, "temp":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 820
    .end local v4    # "cacheIdx":I
    .end local v25    # "temp":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 829
    .end local v5    # "cacheListCount":I
    .end local v19    # "py":Ljava/lang/String;
    :cond_f
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 830
    .local v6, "cachePy":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getT9StrFromLetters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 847
    .end local v6    # "cachePy":Ljava/lang/String;
    .restart local v3    # "KeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v15    # "keySegsList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21    # "rankDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_10
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 848
    .local v20, "pyKey":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    if-nez v29, :cond_4

    .line 852
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getPyFcSegs(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v26

    .line 853
    .local v26, "tempkeySegs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 860
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 861
    .local v13, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_11
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_3

    .line 862
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 863
    .restart local v16    # "ks":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 864
    .local v22, "rankDictValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v22, :cond_12

    .line 865
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .local v27, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 869
    .end local v27    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_12
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_11

    .line 870
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 895
    .end local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v16    # "ks":Ljava/lang/String;
    .end local v20    # "pyKey":Ljava/lang/String;
    .end local v22    # "rankDictValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "tempkeySegs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v17    # "myContactInfo":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    .restart local v24    # "sb":Ljava/lang/StringBuilder;
    :cond_13
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 896
    .local v8, "element":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    const-string v28, "\u0001"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method public clearGroupPinyinDict(Ljava/lang/String;)V
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 617
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myGroupContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 618
    .local v0, "myContactInfoDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;>;"
    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 622
    :cond_0
    return-void
.end method

.method public clearMemoryData()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myDialerDict:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myDialerDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 44
    :cond_0
    return-void
.end method

.method public delPinyinDict(Ljava/lang/String;J)V
    .locals 28
    .param p1, "contactName"    # Ljava/lang/String;
    .param p2, "contactIndex"    # J

    .prologue
    .line 543
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v7, "cachePyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v14, "nlPy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 605
    :cond_0
    return-void

    .line 549
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 550
    .local v10, "iLength":I
    const/16 v21, 0x14

    move/from16 v0, v21

    if-le v10, v0, :cond_2

    .line 551
    const/16 v10, 0x14

    .line 553
    :cond_2
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v17, "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-lt v9, v10, :cond_4

    .line 572
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v8, "cacheT9List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_8

    .line 577
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 579
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getKeyFromPinyinList(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v19

    .line 580
    .local v19, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v4, v0, [Ljava/lang/String;

    .line 581
    .local v4, "cacheKeyList":[Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 582
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 584
    array-length v0, v4

    move/from16 v23, v0

    const/16 v21, 0x0

    move/from16 v22, v21

    :goto_2
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget-object v16, v4, v22

    .line 585
    .local v16, "pyKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getPyFcSegs(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v20

    .line 586
    .local v20, "tempkeySegs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v12, v0, [Ljava/lang/String;

    .line 587
    .local v12, "keySegs":[Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 589
    array-length v0, v12

    move/from16 v24, v0

    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    .line 584
    :cond_3
    add-int/lit8 v21, v22, 0x1

    move/from16 v22, v21

    goto :goto_2

    .line 555
    .end local v4    # "cacheKeyList":[Ljava/lang/String;
    .end local v8    # "cacheT9List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "keySegs":[Ljava/lang/String;
    .end local v16    # "pyKey":Ljava/lang/String;
    .end local v19    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v20    # "tempkeySegs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 556
    .local v5, "cacheListCount":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getPinyinReal(CLjava/util/ArrayList;)V

    .line 557
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_5
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_6

    .line 567
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 568
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 569
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 554
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 557
    :cond_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 558
    .local v15, "py":Ljava/lang/String;
    if-lez v5, :cond_7

    .line 559
    const/4 v3, 0x0

    .local v3, "cacheIdx":I
    :goto_5
    if-ge v3, v5, :cond_5

    .line 560
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 561
    .local v18, "temp":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 564
    .end local v3    # "cacheIdx":I
    .end local v18    # "temp":Ljava/lang/String;
    :cond_7
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 573
    .end local v5    # "cacheListCount":I
    .end local v15    # "py":Ljava/lang/String;
    .restart local v8    # "cacheT9List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 574
    .local v6, "cachePy":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getT9StrFromLetters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 589
    .end local v6    # "cachePy":Ljava/lang/String;
    .restart local v4    # "cacheKeyList":[Ljava/lang/String;
    .restart local v12    # "keySegs":[Ljava/lang/String;
    .restart local v16    # "pyKey":Ljava/lang/String;
    .restart local v19    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "tempkeySegs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_9
    aget-object v13, v12, v21

    .line 590
    .local v13, "ks":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myDialerDict:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/BitSet;

    .line 591
    .local v11, "item":Ljava/util/BitSet;
    if-eqz v11, :cond_3

    .line 594
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 595
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/BitSet;->clear(I)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3
.end method

.method public declared-synchronized getBusinessCardId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mBusinessCardId:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContactIndexListByT9(Ljava/lang/String;ILjava/util/TreeMap;)Ljava/util/TreeMap;
    .locals 44
    .param p1, "pinyin"    # Ljava/lang/String;
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
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;",
            ">;>;>;>;>;"
        }
    .end annotation

    .prologue
    .line 965
    .local p3, "contactedIdMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    invoke-static/range {p1 .. p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_0

    .line 966
    const/16 v39, 0x0

    .line 1228
    :goto_0
    return-object v39

    .line 969
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->searchMap:Ljava/util/HashMap;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/HashMap;->clear()V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v39, v0

    if-eqz v39, :cond_1

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/TreeMap;->clear()V

    .line 974
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->checkList:Ljava/util/BitSet;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/BitSet;->clear()V

    .line 976
    invoke-virtual/range {p0 .. p1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getPinyinListByReg(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    .line 977
    .local v25, "pinyinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-nez v25, :cond_2

    const/16 v39, 0x0

    goto :goto_0

    .line 978
    :cond_2
    invoke-static/range {v25 .. v25}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 979
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_6

    const/16 v39, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/util/ArrayList;

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_6

    const/16 v16, 0x1

    .line 980
    .local v16, "isSinglePinyin":Z
    :goto_1
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_3
    :goto_2
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-nez v39, :cond_7

    .line 1160
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->searchMap:Ljava/util/HashMap;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 1161
    .local v17, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-nez v39, :cond_1f

    .line 1227
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->searchMap:Ljava/util/HashMap;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/HashMap;->clear()V

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v39, v0

    goto/16 :goto_0

    .line 979
    .end local v16    # "isSinglePinyin":Z
    .end local v17    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    const/16 v16, 0x0

    goto :goto_1

    .line 980
    .restart local v16    # "isSinglePinyin":Z
    :cond_7
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    .line 982
    .local v27, "pyi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 986
    sget-boolean v39, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v39, :cond_4

    .line 990
    if-eqz v16, :cond_9

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    const/16 v39, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    const/16 v39, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myDialerDict:Ljava/util/HashMap;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    .line 1007
    .local v6, "cnList":Ljava/util/BitSet;
    if-nez v6, :cond_a

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_2

    .line 994
    .end local v6    # "cnList":Ljava/util/BitSet;
    :cond_9
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :goto_4
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_8

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 997
    .local v34, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    const-string v42, "[^\u0001\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019]*?"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1013
    .end local v34    # "s":Ljava/lang/String;
    .restart local v6    # "cnList":Ljava/util/BitSet;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 1014
    .local v23, "pattern":Ljava/util/regex/Pattern;
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v22

    .line 1015
    .local v22, "nextPosition":I
    :goto_5
    const/16 v39, -0x1

    move/from16 v0, v22

    move/from16 v1, v39

    if-eq v0, v1, :cond_3

    .line 1017
    sget-boolean v39, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v39, :cond_3

    .line 1025
    move/from16 v10, v22

    .line 1026
    .local v10, "currentIndex":I
    const/4 v12, 0x0

    .line 1028
    .local v12, "hasAdded":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->checkList:Ljava/util/BitSet;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v39

    if-eqz v39, :cond_b

    .line 1029
    add-int/lit8 v39, v22, 0x1

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v22

    .line 1030
    goto :goto_5

    .line 1033
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v39, v0

    int-to-long v0, v10

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;

    .line 1034
    .local v8, "contactInfo":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    if-nez v8, :cond_c

    .line 1035
    add-int/lit8 v39, v22, 0x1

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v22

    .line 1036
    goto :goto_5

    .line 1039
    :cond_c
    const/16 v39, 0x1

    move/from16 v0, p2

    move/from16 v1, v39

    if-eq v0, v1, :cond_d

    .line 1040
    iget-boolean v0, v8, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->havePhoneNumber:Z

    move/from16 v39, v0

    if-nez v39, :cond_d

    .line 1041
    add-int/lit8 v39, v22, 0x1

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v22

    .line 1042
    goto :goto_5

    .line 1046
    :cond_d
    iget-object v0, v8, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v41, 0x2

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .line 1047
    .local v19, "location":I
    iget-object v0, v8, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    move-object/from16 v39, v0

    add-int/lit8 v41, v19, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v38

    .line 1048
    .local v38, "truePinyin":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 1050
    .local v21, "match":Ljava/util/regex/Matcher;
    const/16 v31, 0x0

    .line 1051
    .local v31, "result":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v39

    if-eqz v39, :cond_1d

    .line 1052
    const/16 v39, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v37

    .line 1053
    .local v37, "str":Ljava/lang/String;
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    .line 1055
    .local v36, "start":I
    iget-object v0, v8, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->myRank:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 1057
    .local v26, "pyKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v28, -0x1

    .line 1065
    .local v28, "rankLevel":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_e

    .line 1066
    const/16 v28, 0x0

    .line 1069
    :cond_e
    if-eqz v28, :cond_10

    .line 1070
    const/16 v30, 0x0

    .line 1071
    .local v30, "repeatCount":I
    add-int/lit8 v18, v36, -0x1

    .local v18, "k":I
    :goto_6
    if-gez v18, :cond_13

    .line 1084
    :cond_f
    move/from16 v28, v30

    .line 1086
    .end local v18    # "k":I
    .end local v30    # "repeatCount":I
    :cond_10
    const/4 v14, 0x0

    .line 1087
    .local v14, "ifMatchAll":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->length()I

    move-result v39

    iget v0, v8, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->nameLength:I

    move/from16 v41, v0

    move/from16 v0, v39

    move/from16 v1, v41

    if-ne v0, v1, :cond_11

    .line 1088
    const/4 v14, 0x1

    .line 1091
    :cond_11
    if-eqz p3, :cond_16

    .line 1092
    iget v0, v8, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->contactedNumber:I

    move/from16 v39, v0

    if-lez v39, :cond_16

    .line 1093
    iget v0, v8, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->contactedNumber:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1094
    .local v13, "idItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v13, :cond_12

    .line 1095
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "idItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    .restart local v13    # "idItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget v0, v8, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->contactedNumber:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    :cond_12
    int-to-long v0, v10

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    add-int/lit8 v39, v22, 0x1

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v22

    .line 1101
    new-instance v11, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;

    invoke-direct {v11}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;-><init>()V

    .line 1102
    .local v11, "format":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;
    move/from16 v0, v28

    iput v0, v11, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;->rankLevel:I

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->length()I

    move-result v39

    move/from16 v0, v39

    iput v0, v11, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;->matchnameLength:I

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mContactIdPosition:Ljava/util/HashMap;

    move-object/from16 v39, v0

    int-to-long v0, v10

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1072
    .end local v11    # "format":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;
    .end local v13    # "idItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v14    # "ifMatchAll":Z
    .restart local v18    # "k":I
    .restart local v30    # "repeatCount":I
    :cond_13
    move-object/from16 v0, v38

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1075
    .local v9, "curChar":C
    const/16 v39, 0x1

    move/from16 v0, v39

    if-eq v9, v0, :cond_f

    .line 1080
    const/16 v39, 0x32

    move/from16 v0, v39

    if-lt v9, v0, :cond_14

    const/16 v39, 0x39

    move/from16 v0, v39

    if-le v9, v0, :cond_15

    .line 1081
    :cond_14
    add-int/lit8 v30, v30, 0x1

    .line 1071
    :cond_15
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_6

    .line 1109
    .end local v9    # "curChar":C
    .end local v18    # "k":I
    .end local v30    # "repeatCount":I
    .restart local v14    # "ifMatchAll":Z
    :cond_16
    new-instance v31, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;

    .end local v31    # "result":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;-><init>(Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;)V

    .line 1110
    .restart local v31    # "result":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    int-to-long v0, v10

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->contactId:J

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->length()I

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, v31

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    .line 1113
    if-eqz v14, :cond_17

    .line 1114
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v39, v0

    add-int/lit8 v39, v39, 0xa

    move/from16 v0, v39

    move-object/from16 v1, v31

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    .line 1116
    :cond_17
    move/from16 v0, v28

    move-object/from16 v1, v31

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->rankLevel:I

    .line 1117
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->telephony:Z

    .line 1120
    iget-object v0, v8, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1121
    .local v24, "pinyinData":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1122
    .local v15, "index":I
    const/16 v20, 0x0

    .line 1123
    .local v20, "m":I
    :goto_7
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v39

    move/from16 v0, v20

    move/from16 v1, v39

    if-lt v0, v1, :cond_1a

    .line 1133
    :cond_18
    iget-object v0, v8, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v41

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    .line 1134
    iget v0, v8, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->nameLength:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v31

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->checkList:Ljava/util/BitSet;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v39

    if-eqz v39, :cond_1c

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->searchMap:Ljava/util/HashMap;

    move-object/from16 v39, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;

    .line 1138
    .local v35, "searchItem":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    move-object/from16 v0, v35

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v39, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v41, v0

    move/from16 v0, v39

    move/from16 v1, v41

    if-ge v0, v1, :cond_19

    .line 1139
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v35

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    .line 1140
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->rankLevel:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v35

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->rankLevel:I

    .line 1141
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v35

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    .line 1143
    :cond_19
    add-int/lit8 v39, v22, 0x1

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v22

    .line 1144
    goto/16 :goto_5

    .line 1124
    .end local v35    # "searchItem":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    :cond_1a
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1125
    .restart local v9    # "curChar":C
    const/16 v39, 0x1

    move/from16 v0, v39

    if-eq v9, v0, :cond_18

    .line 1127
    const/16 v39, 0x41

    move/from16 v0, v39

    if-lt v9, v0, :cond_1b

    const/16 v39, 0x5a

    move/from16 v0, v39

    if-gt v9, v0, :cond_1b

    .line 1128
    add-int/lit8 v15, v15, 0x1

    .line 1130
    :cond_1b
    const/16 v39, 0x2

    move/from16 v0, v39

    if-eq v15, v0, :cond_18

    .line 1123
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    .line 1146
    .end local v9    # "curChar":C
    :cond_1c
    const/4 v12, 0x1

    .line 1150
    .end local v14    # "ifMatchAll":Z
    .end local v15    # "index":I
    .end local v20    # "m":I
    .end local v24    # "pinyinData":Ljava/lang/String;
    .end local v26    # "pyKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "rankLevel":I
    .end local v36    # "start":I
    .end local v37    # "str":Ljava/lang/String;
    :cond_1d
    if-eqz v12, :cond_1e

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->checkList:Ljava/util/BitSet;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->searchMap:Ljava/util/HashMap;

    move-object/from16 v39, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    :cond_1e
    add-int/lit8 v39, v22, 0x1

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v22

    goto/16 :goto_5

    .line 1162
    .end local v6    # "cnList":Ljava/util/BitSet;
    .end local v8    # "contactInfo":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    .end local v10    # "currentIndex":I
    .end local v12    # "hasAdded":Z
    .end local v19    # "location":I
    .end local v21    # "match":Ljava/util/regex/Matcher;
    .end local v22    # "nextPosition":I
    .end local v23    # "pattern":Ljava/util/regex/Pattern;
    .end local v27    # "pyi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v31    # "result":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    .end local v38    # "truePinyin":Ljava/lang/String;
    .restart local v17    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1f
    sget-boolean v39, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v39, :cond_5

    .line 1165
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1167
    .local v7, "contactIdKey":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->searchMap:Ljava/util/HashMap;

    move-object/from16 v39, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;

    .line 1168
    .restart local v31    # "result":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v39, v0

    if-nez v39, :cond_20

    .line 1169
    new-instance v39, Ljava/util/TreeMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    .line 1171
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v39, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->rankLevel:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/TreeMap;

    .line 1173
    .local v29, "rankResult":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    if-eqz v29, :cond_24

    .line 1175
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/TreeMap;

    .line 1176
    .local v33, "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    if-eqz v33, :cond_23

    .line 1178
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v33

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    .line 1179
    .local v4, "allnameList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    if-nez v4, :cond_21

    .line 1180
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    .local v32, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    new-instance v4, Ljava/util/TreeMap;

    .end local v4    # "allnameList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 1184
    .restart local v4    # "allnameList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v33

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1188
    .end local v32    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    :cond_21
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 1189
    .restart local v32    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    if-nez v32, :cond_22

    .line 1190
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .restart local v32    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1195
    :cond_22
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1199
    .end local v4    # "allnameList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    .end local v32    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    :cond_23
    new-instance v33, Ljava/util/TreeMap;

    .end local v33    # "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    invoke-direct/range {v33 .. v33}, Ljava/util/TreeMap;-><init>()V

    .line 1201
    .restart local v33    # "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    .restart local v32    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 1205
    .local v5, "allnamelist":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v33

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1211
    .end local v5    # "allnamelist":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    .end local v32    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    .end local v33    # "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    :cond_24
    new-instance v29, Ljava/util/TreeMap;

    .end local v29    # "rankResult":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    invoke-direct/range {v29 .. v29}, Ljava/util/TreeMap;-><init>()V

    .line 1213
    .restart local v29    # "rankResult":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    new-instance v33, Ljava/util/TreeMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/TreeMap;-><init>()V

    .line 1215
    .restart local v33    # "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    .restart local v32    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 1219
    .restart local v5    # "allnamelist":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v33

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v39, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->rankLevel:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3
.end method

.method public getContactIndexListByZm(Ljava/lang/String;ILjava/util/TreeMap;)Ljava/util/TreeMap;
    .locals 43
    .param p1, "pinyin"    # Ljava/lang/String;
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
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;",
            ">;>;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1531
    .local p3, "contactedIdMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    invoke-static/range {p1 .. p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 1532
    const/16 v38, 0x0

    .line 1771
    :goto_0
    return-object v38

    .line 1535
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->checkList:Ljava/util/BitSet;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/BitSet;->clear()V

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v38, v0

    if-eqz v38, :cond_1

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/TreeMap;->clear()V

    .line 1541
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getT9StrFromLetters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1542
    .local v37, "t9Str":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getPinyinListByReg(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v22

    .line 1543
    .local v22, "pinyinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-nez v22, :cond_2

    .line 1544
    const/16 v38, 0x0

    goto :goto_0

    .line 1547
    :cond_2
    const-string v33, "()[]{}\\?+.*^|%"

    .line 1552
    .local v33, "special":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1554
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_3
    :goto_1
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-nez v39, :cond_4

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v38, v0

    goto :goto_0

    .line 1554
    :cond_4
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    .line 1555
    .local v25, "pyi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v35, 0x0

    .line 1556
    .local v35, "startLocation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1559
    sget-boolean v39, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v39, :cond_5

    .line 1560
    const/16 v38, 0x0

    goto :goto_0

    .line 1563
    :cond_5
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :goto_2
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-nez v40, :cond_6

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myDialerDict:Ljava/util/HashMap;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    .line 1590
    .local v6, "cnList":Ljava/util/BitSet;
    if-nez v6, :cond_a

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 1563
    .end local v6    # "cnList":Ljava/util/BitSet;
    :cond_6
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 1564
    .local v32, "s":Ljava/lang/String;
    sget-boolean v40, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v40, :cond_7

    .line 1565
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 1568
    :cond_7
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v24

    .line 1569
    .local v24, "pyLength":I
    add-int v40, v35, v24

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 1570
    .local v19, "p":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_8

    .line 1571
    new-instance v40, Ljava/lang/StringBuilder;

    const/16 v41, 0x0

    const/16 v42, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v41, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1573
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1575
    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1576
    .local v8, "cr":I
    const/16 v40, -0x1

    move/from16 v0, v40

    if-ne v8, v0, :cond_9

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v40, v0

    const-string v41, "[^\u0001A-Z]*?"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    add-int v35, v35, v24

    goto/16 :goto_2

    .line 1579
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v40, v0

    const-string v41, "\\"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1596
    .end local v8    # "cr":I
    .end local v19    # "p":Ljava/lang/String;
    .end local v24    # "pyLength":I
    .end local v32    # "s":Ljava/lang/String;
    .restart local v6    # "cnList":Ljava/util/BitSet;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v20

    .line 1598
    .local v20, "pattern":Ljava/util/regex/Pattern;
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v18

    .line 1599
    .local v18, "nextPosition":I
    :goto_4
    const/16 v39, -0x1

    move/from16 v0, v18

    move/from16 v1, v39

    if-eq v0, v1, :cond_3

    .line 1601
    sget-boolean v39, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v39, :cond_b

    .line 1602
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 1605
    :cond_b
    move/from16 v10, v18

    .line 1606
    .local v10, "currentIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->checkList:Ljava/util/BitSet;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v39

    if-eqz v39, :cond_c

    .line 1607
    add-int/lit8 v39, v18, 0x1

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v18

    .line 1608
    goto :goto_4

    .line 1611
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v39, v0

    int-to-long v0, v10

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;

    .line 1614
    .local v7, "contactInfo":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    if-eqz v7, :cond_1a

    iget-object v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_1a

    .line 1616
    const/16 v39, 0x1

    move/from16 v0, p2

    move/from16 v1, v39

    if-eq v0, v1, :cond_d

    .line 1617
    iget-boolean v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->havePhoneNumber:Z

    move/from16 v39, v0

    if-nez v39, :cond_d

    .line 1618
    add-int/lit8 v39, v18, 0x1

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v18

    .line 1619
    goto :goto_4

    .line 1622
    :cond_d
    iget-object v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 1624
    .local v17, "match":Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v39

    if-eqz v39, :cond_1a

    .line 1626
    const/16 v39, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v36

    .line 1627
    .local v36, "str":Ljava/lang/String;
    iget-object v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    .line 1629
    .local v34, "start":I
    iget-object v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->myRank:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 1631
    .local v23, "pyKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v26, -0x1

    .line 1638
    .local v26, "rankLevel":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_e

    .line 1639
    const/16 v26, 0x0

    .line 1643
    :cond_e
    if-eqz v26, :cond_10

    .line 1644
    const/16 v28, 0x0

    .line 1645
    .local v28, "repeatCount":I
    add-int/lit8 v15, v34, -0x1

    .local v15, "k":I
    :goto_5
    if-gez v15, :cond_13

    .line 1657
    :cond_f
    move/from16 v26, v28

    .line 1659
    .end local v15    # "k":I
    .end local v28    # "repeatCount":I
    :cond_10
    const/4 v13, 0x0

    .line 1660
    .local v13, "ifMatchAll":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->length()I

    move-result v39

    iget v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->nameLength:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_11

    .line 1661
    const/4 v13, 0x1

    .line 1664
    :cond_11
    if-eqz p3, :cond_16

    .line 1665
    iget v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->contactedNumber:I

    move/from16 v39, v0

    if-lez v39, :cond_16

    .line 1666
    iget v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->contactedNumber:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 1667
    .local v12, "idItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v12, :cond_12

    .line 1668
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "idItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1669
    .restart local v12    # "idItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->contactedNumber:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    :cond_12
    int-to-long v0, v10

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1672
    add-int/lit8 v39, v18, 0x1

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v18

    .line 1674
    new-instance v11, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;

    invoke-direct {v11}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;-><init>()V

    .line 1675
    .local v11, "format":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;
    move/from16 v0, v26

    iput v0, v11, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;->rankLevel:I

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->length()I

    move-result v39

    move/from16 v0, v39

    iput v0, v11, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;->matchnameLength:I

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mContactIdPosition:Ljava/util/HashMap;

    move-object/from16 v39, v0

    int-to-long v0, v10

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 1646
    .end local v11    # "format":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;
    .end local v12    # "idItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v13    # "ifMatchAll":Z
    .restart local v15    # "k":I
    .restart local v28    # "repeatCount":I
    :cond_13
    iget-object v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1647
    .local v9, "curChar":C
    const/16 v39, 0x1

    move/from16 v0, v39

    if-eq v9, v0, :cond_f

    .line 1650
    const/16 v39, 0x61

    move/from16 v0, v39

    if-lt v9, v0, :cond_14

    const/16 v39, 0x7a

    move/from16 v0, v39

    if-le v9, v0, :cond_15

    .line 1654
    :cond_14
    add-int/lit8 v28, v28, 0x1

    .line 1645
    :cond_15
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_5

    .line 1684
    .end local v9    # "curChar":C
    .end local v15    # "k":I
    .end local v28    # "repeatCount":I
    .restart local v13    # "ifMatchAll":Z
    :cond_16
    new-instance v29, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;-><init>(Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;)V

    .line 1685
    .local v29, "result":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    int-to-long v0, v10

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->contactId:J

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->checkList:Ljava/util/BitSet;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->length()I

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, v29

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    .line 1688
    if-eqz v13, :cond_17

    .line 1689
    move-object/from16 v0, v29

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v39, v0

    add-int/lit8 v39, v39, 0xa

    move/from16 v0, v39

    move-object/from16 v1, v29

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    .line 1691
    :cond_17
    move/from16 v0, v26

    move-object/from16 v1, v29

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->rankLevel:I

    .line 1692
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->telephony:Z

    .line 1693
    iget v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->nameLength:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v29

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    .line 1695
    iget-object v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1696
    .local v21, "pinyinData":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1697
    .local v14, "index":I
    const/16 v16, 0x0

    .line 1698
    .local v16, "m":I
    :goto_6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v39

    move/from16 v0, v16

    move/from16 v1, v39

    if-lt v0, v1, :cond_1b

    .line 1709
    :cond_18
    iget-object v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    .line 1710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v39, v0

    if-nez v39, :cond_19

    .line 1711
    new-instance v39, Ljava/util/TreeMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    .line 1713
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v39, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/TreeMap;

    .line 1714
    .local v27, "rankResult":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    if-eqz v27, :cond_20

    .line 1716
    move-object/from16 v0, v29

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/TreeMap;

    .line 1717
    .local v31, "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    if-eqz v31, :cond_1f

    .line 1719
    move-object/from16 v0, v29

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    .line 1720
    .local v4, "allnameList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    if-nez v4, :cond_1d

    .line 1721
    new-instance v4, Ljava/util/TreeMap;

    .end local v4    # "allnameList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 1722
    .restart local v4    # "allnameList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 1723
    .local v30, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1724
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    move-object/from16 v0, v29

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    .end local v4    # "allnameList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    .end local v13    # "ifMatchAll":Z
    .end local v14    # "index":I
    .end local v16    # "m":I
    .end local v17    # "match":Ljava/util/regex/Matcher;
    .end local v21    # "pinyinData":Ljava/lang/String;
    .end local v23    # "pyKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "rankLevel":I
    .end local v27    # "rankResult":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    .end local v29    # "result":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    .end local v30    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    .end local v31    # "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    .end local v34    # "start":I
    .end local v36    # "str":Ljava/lang/String;
    :cond_1a
    :goto_7
    add-int/lit8 v39, v18, 0x1

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v18

    goto/16 :goto_4

    .line 1699
    .restart local v13    # "ifMatchAll":Z
    .restart local v14    # "index":I
    .restart local v16    # "m":I
    .restart local v17    # "match":Ljava/util/regex/Matcher;
    .restart local v21    # "pinyinData":Ljava/lang/String;
    .restart local v23    # "pyKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v26    # "rankLevel":I
    .restart local v29    # "result":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    .restart local v34    # "start":I
    .restart local v36    # "str":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1700
    .restart local v9    # "curChar":C
    const/16 v39, 0x1

    move/from16 v0, v39

    if-eq v9, v0, :cond_18

    .line 1702
    const/16 v39, 0x41

    move/from16 v0, v39

    if-lt v9, v0, :cond_1c

    const/16 v39, 0x5a

    move/from16 v0, v39

    if-gt v9, v0, :cond_1c

    .line 1704
    add-int/lit8 v14, v14, 0x1

    .line 1706
    :cond_1c
    const/16 v39, 0x2

    move/from16 v0, v39

    if-eq v14, v0, :cond_18

    .line 1698
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 1727
    .end local v9    # "curChar":C
    .restart local v4    # "allnameList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    .restart local v27    # "rankResult":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    .restart local v31    # "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    :cond_1d
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/ArrayList;

    .line 1728
    .restart local v30    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    if-nez v30, :cond_1e

    .line 1729
    new-instance v30, Ljava/util/ArrayList;

    .end local v30    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 1730
    .restart local v30    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1732
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1734
    :cond_1e
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1738
    .end local v4    # "allnameList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    .end local v30    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    :cond_1f
    new-instance v31, Ljava/util/TreeMap;

    .end local v31    # "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    invoke-direct/range {v31 .. v31}, Ljava/util/TreeMap;-><init>()V

    .line 1740
    .restart local v31    # "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 1741
    .restart local v30    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1743
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 1744
    .local v5, "allnamelist":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    move-object/from16 v0, v29

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    move-object/from16 v0, v29

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1750
    .end local v5    # "allnamelist":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    .end local v30    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    .end local v31    # "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    :cond_20
    new-instance v27, Ljava/util/TreeMap;

    .end local v27    # "rankResult":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    invoke-direct/range {v27 .. v27}, Ljava/util/TreeMap;-><init>()V

    .line 1752
    .restart local v27    # "rankResult":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    new-instance v31, Ljava/util/TreeMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/TreeMap;-><init>()V

    .line 1754
    .restart local v31    # "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 1755
    .restart local v30    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1757
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 1758
    .restart local v5    # "allnamelist":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    move-object/from16 v0, v29

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    move-object/from16 v0, v29

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v39, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->rankLevel:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7
.end method

.method public getContactIndexListByZm(Ljava/lang/String;Ljava/lang/String;ILjava/util/TreeMap;)Ljava/util/TreeMap;
    .locals 45
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "pinyin"    # Ljava/lang/String;
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
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;",
            ">;>;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1236
    .local p4, "contactedIdMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    invoke-static/range {p2 .. p2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 1237
    const/16 v40, 0x0

    .line 1506
    :goto_0
    return-object v40

    .line 1241
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->checkList:Ljava/util/BitSet;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/BitSet;->clear()V

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/TreeMap;->clear()V

    .line 1247
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getT9StrFromLetters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1248
    .local v39, "t9Str":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getPinyinListByReg(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    .line 1249
    .local v24, "pinyinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-nez v24, :cond_2

    .line 1250
    const/16 v40, 0x0

    goto :goto_0

    .line 1253
    :cond_2
    const-string v35, "()[]{}\\?+.*^|%"

    .line 1259
    .local v35, "special":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1261
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_3
    :goto_1
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-nez v41, :cond_4

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v40, v0

    goto :goto_0

    .line 1261
    :cond_4
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    .line 1262
    .local v27, "pyi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v37, 0x0

    .line 1263
    .local v37, "startLocation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1266
    sget-boolean v41, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v41, :cond_5

    .line 1267
    const/16 v40, 0x0

    goto :goto_0

    .line 1270
    :cond_5
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_2
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-nez v42, :cond_6

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myGroupDialerDict:Ljava/util/HashMap;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;

    .line 1300
    .local v19, "myDialerDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/BitSet;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    .line 1301
    .local v6, "cnList":Ljava/util/BitSet;
    if-nez v6, :cond_a

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 1270
    .end local v6    # "cnList":Ljava/util/BitSet;
    .end local v19    # "myDialerDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/BitSet;>;"
    :cond_6
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 1271
    .local v34, "s":Ljava/lang/String;
    sget-boolean v42, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v42, :cond_7

    .line 1272
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 1275
    :cond_7
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v26

    .line 1277
    .local v26, "pyLength":I
    add-int v42, v37, v26

    .line 1276
    move-object/from16 v0, p2

    move/from16 v1, v37

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 1278
    .local v21, "p":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_8

    .line 1279
    new-instance v42, Ljava/lang/StringBuilder;

    const/16 v43, 0x0

    const/16 v44, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v43, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1281
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1283
    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1284
    .local v8, "cr":I
    const/16 v42, -0x1

    move/from16 v0, v42

    if-ne v8, v0, :cond_9

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v42, v0

    const-string v43, "[^\u0001A-Z]*?"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    add-int v37, v37, v26

    goto/16 :goto_2

    .line 1287
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v42, v0

    const-string v43, "\\"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1307
    .end local v8    # "cr":I
    .end local v21    # "p":Ljava/lang/String;
    .end local v26    # "pyLength":I
    .end local v34    # "s":Ljava/lang/String;
    .restart local v6    # "cnList":Ljava/util/BitSet;
    .restart local v19    # "myDialerDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/BitSet;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v22

    .line 1309
    .local v22, "pattern":Ljava/util/regex/Pattern;
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v20

    .line 1310
    .local v20, "nextPosition":I
    :goto_4
    const/16 v41, -0x1

    move/from16 v0, v20

    move/from16 v1, v41

    if-eq v0, v1, :cond_3

    .line 1312
    sget-boolean v41, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v41, :cond_b

    .line 1313
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 1316
    :cond_b
    move/from16 v10, v20

    .line 1317
    .local v10, "currentIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->checkList:Ljava/util/BitSet;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v41

    if-eqz v41, :cond_c

    .line 1318
    add-int/lit8 v41, v20, 0x1

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v20

    .line 1319
    goto :goto_4

    .line 1324
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myGroupContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/concurrent/ConcurrentHashMap;

    .line 1327
    .local v18, "myContactInfoDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;>;"
    int-to-long v0, v10

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;

    .line 1330
    .local v7, "contactInfo":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    if-eqz v7, :cond_19

    .line 1331
    iget-object v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_19

    .line 1341
    iget-object v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 1343
    .local v17, "match":Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v41

    if-eqz v41, :cond_19

    .line 1345
    const/16 v41, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v38

    .line 1346
    .local v38, "str":Ljava/lang/String;
    iget-object v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    .line 1348
    .local v36, "start":I
    iget-object v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->myRank:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v41, v0

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    .line 1351
    .local v25, "pyKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v28, -0x1

    .line 1358
    .local v28, "rankLevel":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_d

    .line 1359
    const/16 v28, 0x0

    .line 1363
    :cond_d
    if-eqz v28, :cond_f

    .line 1364
    const/16 v30, 0x0

    .line 1365
    .local v30, "repeatCount":I
    add-int/lit8 v15, v36, -0x1

    .local v15, "k":I
    :goto_5
    if-gez v15, :cond_12

    .line 1377
    :cond_e
    move/from16 v28, v30

    .line 1379
    .end local v15    # "k":I
    .end local v30    # "repeatCount":I
    :cond_f
    const/4 v13, 0x0

    .line 1380
    .local v13, "ifMatchAll":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->length()I

    move-result v41

    iget v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->nameLength:I

    move/from16 v42, v0

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_10

    .line 1381
    const/4 v13, 0x1

    .line 1384
    :cond_10
    if-eqz p4, :cond_15

    .line 1385
    iget v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->contactedNumber:I

    move/from16 v41, v0

    if-lez v41, :cond_15

    .line 1387
    iget v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->contactedNumber:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, p4

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 1388
    .local v12, "idItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v12, :cond_11

    .line 1389
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "idItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    .restart local v12    # "idItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->contactedNumber:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    .line 1390
    move-object/from16 v0, p4

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    :cond_11
    int-to-long v0, v10

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1396
    add-int/lit8 v41, v20, 0x1

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v20

    .line 1398
    new-instance v11, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;

    invoke-direct {v11}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;-><init>()V

    .line 1399
    .local v11, "format":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;
    move/from16 v0, v28

    iput v0, v11, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;->rankLevel:I

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->length()I

    move-result v41

    move/from16 v0, v41

    iput v0, v11, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;->matchnameLength:I

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mContactIdPosition:Ljava/util/HashMap;

    move-object/from16 v41, v0

    int-to-long v0, v10

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 1366
    .end local v11    # "format":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;
    .end local v12    # "idItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v13    # "ifMatchAll":Z
    .restart local v15    # "k":I
    .restart local v30    # "repeatCount":I
    :cond_12
    iget-object v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1367
    .local v9, "curChar":C
    const/16 v41, 0x1

    move/from16 v0, v41

    if-eq v9, v0, :cond_e

    .line 1370
    const/16 v41, 0x61

    move/from16 v0, v41

    if-lt v9, v0, :cond_13

    const/16 v41, 0x7a

    move/from16 v0, v41

    if-le v9, v0, :cond_14

    .line 1374
    :cond_13
    add-int/lit8 v30, v30, 0x1

    .line 1365
    :cond_14
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_5

    .line 1409
    .end local v9    # "curChar":C
    .end local v15    # "k":I
    .end local v30    # "repeatCount":I
    .restart local v13    # "ifMatchAll":Z
    :cond_15
    new-instance v31, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;-><init>(Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;)V

    .line 1410
    .local v31, "result":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    int-to-long v0, v10

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->contactId:J

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->checkList:Ljava/util/BitSet;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->key:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->length()I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, v31

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    .line 1413
    if-eqz v13, :cond_16

    .line 1414
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v41, v0

    add-int/lit8 v41, v41, 0xa

    move/from16 v0, v41

    move-object/from16 v1, v31

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    .line 1416
    :cond_16
    move/from16 v0, v28

    move-object/from16 v1, v31

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->rankLevel:I

    .line 1417
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->telephony:Z

    .line 1418
    iget v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->nameLength:I

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, v31

    iput v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    .line 1420
    iget-object v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1421
    .local v23, "pinyinData":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1422
    .local v14, "index":I
    const/16 v16, 0x0

    .line 1423
    .local v16, "m":I
    :goto_6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v41

    move/from16 v0, v16

    move/from16 v1, v41

    if-lt v0, v1, :cond_1a

    .line 1435
    :cond_17
    iget-object v0, v7, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->pinyinData:Ljava/lang/String;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v41, v0

    if-nez v41, :cond_18

    .line 1437
    new-instance v41, Ljava/util/TreeMap;

    invoke-direct/range {v41 .. v41}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    .line 1439
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v41, v0

    .line 1440
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/TreeMap;

    .line 1441
    .local v29, "rankResult":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    if-eqz v29, :cond_1f

    .line 1444
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/TreeMap;

    .line 1445
    .local v33, "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    if-eqz v33, :cond_1e

    .line 1449
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    .line 1450
    .local v4, "allnameList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    if-nez v4, :cond_1c

    .line 1451
    new-instance v4, Ljava/util/TreeMap;

    .end local v4    # "allnameList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 1452
    .restart local v4    # "allnameList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1453
    .local v32, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1454
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    .end local v4    # "allnameList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    .end local v13    # "ifMatchAll":Z
    .end local v14    # "index":I
    .end local v16    # "m":I
    .end local v17    # "match":Ljava/util/regex/Matcher;
    .end local v23    # "pinyinData":Ljava/lang/String;
    .end local v25    # "pyKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "rankLevel":I
    .end local v29    # "rankResult":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    .end local v31    # "result":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    .end local v32    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    .end local v33    # "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    .end local v36    # "start":I
    .end local v38    # "str":Ljava/lang/String;
    :cond_19
    :goto_7
    add-int/lit8 v41, v20, 0x1

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v20

    goto/16 :goto_4

    .line 1424
    .restart local v13    # "ifMatchAll":Z
    .restart local v14    # "index":I
    .restart local v16    # "m":I
    .restart local v17    # "match":Ljava/util/regex/Matcher;
    .restart local v23    # "pinyinData":Ljava/lang/String;
    .restart local v25    # "pyKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v28    # "rankLevel":I
    .restart local v31    # "result":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
    .restart local v36    # "start":I
    .restart local v38    # "str":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1425
    .restart local v9    # "curChar":C
    const/16 v41, 0x1

    move/from16 v0, v41

    if-eq v9, v0, :cond_17

    .line 1427
    const/16 v41, 0x41

    move/from16 v0, v41

    if-lt v9, v0, :cond_1b

    const/16 v41, 0x5a

    move/from16 v0, v41

    if-gt v9, v0, :cond_1b

    .line 1430
    add-int/lit8 v14, v14, 0x1

    .line 1432
    :cond_1b
    const/16 v41, 0x2

    move/from16 v0, v41

    if-eq v14, v0, :cond_17

    .line 1423
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 1459
    .end local v9    # "curChar":C
    .restart local v4    # "allnameList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    .restart local v29    # "rankResult":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    .restart local v33    # "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    :cond_1c
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 1460
    .restart local v32    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    if-nez v32, :cond_1d

    .line 1461
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1462
    .restart local v32    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1467
    :cond_1d
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1471
    .end local v4    # "allnameList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    .end local v32    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    :cond_1e
    new-instance v33, Ljava/util/TreeMap;

    .end local v33    # "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    invoke-direct/range {v33 .. v33}, Ljava/util/TreeMap;-><init>()V

    .line 1473
    .restart local v33    # "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1474
    .restart local v32    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 1477
    .local v5, "allnamelist":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1485
    .end local v5    # "allnamelist":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    .end local v32    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    .end local v33    # "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    :cond_1f
    new-instance v29, Ljava/util/TreeMap;

    .end local v29    # "rankResult":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    invoke-direct/range {v29 .. v29}, Ljava/util/TreeMap;-><init>()V

    .line 1487
    .restart local v29    # "rankResult":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;>;"
    new-instance v33, Ljava/util/TreeMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/TreeMap;-><init>()V

    .line 1489
    .restart local v33    # "resultList":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1490
    .restart local v32    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1492
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 1493
    .restart local v5    # "allnamelist":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;>;>;"
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->pinyin:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->allNameLength:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->matchnameLength:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->orderSet:Ljava/util/TreeMap;

    move-object/from16 v41, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->rankLevel:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7
.end method

.method public getContactInfo()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method getFirstCharTransform(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 177
    .restart local p1    # "str":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 178
    .local v1, "firstChar":C
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "leftString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 181
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/16 v4, 0x32

    if-lt v1, v4, :cond_0

    const/16 v4, 0x39

    if-gt v1, v4, :cond_0

    .line 182
    add-int/lit8 v4, v1, -0x20

    int-to-char v0, v4

    .line 183
    .local v0, "c":C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method getFirstCharUppercaseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 227
    .restart local p1    # "str":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 228
    .local v0, "firstChar":C
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "leftString":Ljava/lang/String;
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    .line 231
    :cond_2
    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    .line 232
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x20

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method getKeyFromPinyinList(Ljava/util/ArrayList;)Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    .local p1, "pyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 524
    .local v4, "retList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 537
    return-object v4

    .line 524
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 525
    .local v3, "py":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 526
    .local v2, "key":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 533
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 527
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 528
    .local v0, "c":C
    const/16 v6, 0x32

    if-lt v0, v6, :cond_3

    const/16 v6, 0x39

    if-le v0, v6, :cond_2

    const/16 v6, 0x61

    if-lt v0, v6, :cond_3

    :cond_2
    const/16 v6, 0x7a

    if-le v0, v6, :cond_4

    .line 529
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 526
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method getPinyinListByReg(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "pinyin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 358
    const/4 v1, 0x0

    .line 366
    .local v1, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myPinyinRegCacheDict:Ljava/util/Dictionary;

    if-nez v2, :cond_0

    .line 367
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myPinyinRegCacheDict:Ljava/util/Dictionary;

    .line 369
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myPinyinRegCacheList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 370
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myPinyinRegCacheList:Ljava/util/ArrayList;

    .line 373
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myPinyinRegCacheDict:Ljava/util/Dictionary;

    invoke-virtual {v2, p1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 374
    .restart local v1    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_3

    .line 375
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myPinyinRegCacheList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 390
    :goto_0
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myPinyinRegCacheList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 393
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myPinyinRegCacheList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_2

    .line 394
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myPinyinRegCacheList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myPinyinRegCacheList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    .local v0, "pyKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myPinyinRegCacheList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myPinyinRegCacheList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 396
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myPinyinRegCacheDict:Ljava/util/Dictionary;

    invoke-virtual {v2, v0}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "pyKey":Ljava/lang/String;
    :cond_2
    move-object v2, v1

    .line 399
    :goto_1
    return-object v2

    .line 377
    :cond_3
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getPinyinListByRegReal(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 379
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 387
    :cond_5
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myPinyinRegCacheDict:Ljava/util/Dictionary;

    invoke-virtual {v2, p1, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method getPinyinListByRegReal(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 22
    .param p1, "pinyin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 247
    invoke-static/range {p1 .. p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 248
    const/4 v15, 0x0

    .line 351
    :cond_0
    :goto_0
    return-object v15

    .line 252
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v13, "pySegStatck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v15, "retPyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;-><init>(Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;)V

    .line 256
    .local v3, "defaultPym":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;
    move-object/from16 v0, p1

    iput-object v0, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;->pinyinSeg:Ljava/lang/String;

    .line 257
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    iput-object v0, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;->pinyinNodeList:Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-gtz v20, :cond_6

    .line 329
    :cond_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 330
    .local v16, "size":I
    if-eqz v16, :cond_4

    add-int/lit8 v20, v16, -0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 331
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    .line 332
    .local v19, "upperPinyin":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v4, "egSpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-lt v5, v0, :cond_c

    .line 345
    :cond_5
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    .end local v4    # "egSpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v16    # "size":I
    .end local v19    # "upperPinyin":Ljava/lang/String;
    :cond_6
    sget-boolean v20, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v20, :cond_3

    .line 266
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 267
    .restart local v16    # "size":I
    add-int/lit8 v20, v16, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;

    .line 268
    .local v14, "pym":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;
    add-int/lit8 v20, v16, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 270
    iget-object v11, v14, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;->pinyinSeg:Ljava/lang/String;

    .line 271
    .local v11, "ps":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myRegPinyinArray:Ljava/util/HashSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 272
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getFirstCharTransform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 273
    .local v18, "transform":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v7, "ml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v14, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;->pinyinNodeList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 275
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .end local v7    # "ml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "transform":Ljava/lang/String;
    :cond_8
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 282
    .local v12, "psLength":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v12, v0, :cond_2

    .line 283
    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v12, :cond_2

    .line 286
    sget-boolean v20, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v20, :cond_2

    .line 289
    const/4 v6, 0x0

    .line 291
    .local v6, "isNotRegPinyin":Z
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 292
    .local v10, "prefixPy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myRegPinyinArray:Ljava/util/HashSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 293
    add-int/lit8 v20, v5, -0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 294
    .local v2, "curChar":C
    const/16 v20, 0x32

    move/from16 v0, v20

    if-lt v2, v0, :cond_9

    const/16 v20, 0x39

    move/from16 v0, v20

    if-le v2, v0, :cond_2

    .line 299
    :cond_9
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    .line 300
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v5, v0, :cond_a

    .line 301
    const/4 v6, 0x1

    .line 304
    .end local v2    # "curChar":C
    :cond_a
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v8, "newArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v14, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;->pinyinNodeList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 306
    if-eqz v6, :cond_b

    .line 307
    const/16 v20, 0x0

    add-int/lit8 v21, v5, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getFirstCharTransform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getFirstCharTransform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v9, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;-><init>(Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;)V

    .line 315
    .local v9, "newPm":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;
    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;->pinyinSeg:Ljava/lang/String;

    .line 317
    iput-object v8, v9, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;->pinyinNodeList:Ljava/util/ArrayList;

    .line 319
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 336
    .end local v6    # "isNotRegPinyin":Z
    .end local v8    # "newArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "newPm":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;
    .end local v10    # "prefixPy":Ljava/lang/String;
    .end local v11    # "ps":Ljava/lang/String;
    .end local v12    # "psLength":I
    .end local v14    # "pym":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;
    .restart local v4    # "egSpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "upperPinyin":Ljava/lang/String;
    :cond_c
    sget-boolean v20, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v20, :cond_5

    .line 339
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v17

    .line 340
    .local v17, "subString":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method declared-synchronized getPinyinReal(CLjava/util/ArrayList;)V
    .locals 11
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x6

    .line 454
    monitor-enter p0

    if-nez p2, :cond_1

    .line 501
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 455
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 456
    const/4 v4, 0x0

    .line 457
    .local v4, "needSetNull":Z
    iget-object v8, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHanziPinyin:Ljava/lang/StringBuilder;

    if-nez v8, :cond_2

    .line 458
    iget-object v8, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/lzx/iteam/util/StringUtil;->getHanziPinyin(Landroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v8

    iput-object v8, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHanziPinyin:Ljava/lang/StringBuilder;

    .line 459
    const/4 v4, 0x1

    .line 461
    :cond_2
    move v0, p1

    .line 462
    .local v0, "chCode":I
    const/4 v8, 0x6

    new-array v5, v8, [B

    .line 463
    .local v5, "p":[B
    const/16 v8, 0x4e00

    if-lt v0, v8, :cond_6

    const v8, 0x9fa6

    if-ge v0, v8, :cond_6

    .line 464
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_1
    const/4 v8, 0x3

    if-lt v1, v8, :cond_4

    .line 498
    .end local v1    # "count":I
    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    .line 499
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHanziPinyin:Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 454
    .end local v0    # "chCode":I
    .end local v4    # "needSetNull":Z
    .end local v5    # "p":[B
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 465
    .restart local v0    # "chCode":I
    .restart local v1    # "count":I
    .restart local v4    # "needSetNull":Z
    .restart local v5    # "p":[B
    :cond_4
    add-int/lit16 v8, v0, -0x4e00

    mul-int/lit8 v8, v8, 0x12

    mul-int/lit8 v9, v1, 0x6

    add-int v7, v8, v9

    .line 466
    .local v7, "startPostion":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-lt v2, v10, :cond_5

    .line 470
    :try_start_1
    invoke-static {v5}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v6

    .line 472
    .local v6, "pinyin":Ljava/lang/String;
    const-string v8, "      "

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 475
    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 467
    .end local v6    # "pinyin":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHanziPinyin:Ljava/lang/StringBuilder;

    add-int v9, v7, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    .line 466
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 479
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v7    # "startPostion":I
    :cond_6
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, "letter":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    .line 481
    const-string v8, "_"

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 483
    :cond_7
    const/16 v8, 0x32

    if-lt p1, v8, :cond_8

    const/16 v8, 0x39

    if-gt p1, v8, :cond_8

    .line 484
    add-int/lit8 v8, p1, -0x20

    int-to-char v8, v8

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 486
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method getPyFcSegs(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 8
    .param p1, "pyFc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 404
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 405
    .local v3, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    const/4 v3, 0x0

    .line 443
    .end local v3    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 410
    .restart local v3    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 412
    .local v2, "pyFcLength":I
    if-gt v2, v5, :cond_2

    .line 413
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    :cond_2
    if-ne v2, v6, :cond_3

    .line 418
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    :cond_3
    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    .line 426
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 436
    :cond_4
    move v0, v2

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_0

    .line 437
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    sub-int v4, v2, v0

    if-le v1, v4, :cond_5

    .line 436
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 438
    :cond_5
    add-int v4, v1, v0

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method getT9StrFromLetters(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "strLetters"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v2, "retStr":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 203
    .local v3, "strLettersLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 204
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 205
    .local v0, "c":C
    const/16 v5, 0x61

    if-lt v0, v5, :cond_2

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_2

    .line 206
    sget-object v5, Lcom/lzx/iteam/contactssearch/conversion/HanziUtil;->Data_Letters_To_T9:[C

    add-int/lit8 v6, v0, -0x61

    aget-char v0, v5, v6

    .line 214
    :cond_1
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_2
    const/16 v5, 0x41

    if-lt v0, v5, :cond_3

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_3

    .line 208
    sget-object v5, Lcom/lzx/iteam/contactssearch/conversion/HanziUtil;->Data_Letters_To_T9:[C

    add-int/lit8 v6, v0, -0x41

    aget-char v4, v5, v6

    .line 209
    .local v4, "temp":C
    add-int/lit8 v5, v4, -0x20

    int-to-char v0, v5

    .line 210
    goto :goto_1

    .end local v4    # "temp":C
    :cond_3
    const/16 v5, 0x32

    if-lt v0, v5, :cond_1

    const/16 v5, 0x39

    if-gt v0, v5, :cond_1

    .line 211
    add-int/lit8 v5, v0, -0x20

    int-to-char v0, v5

    goto :goto_1
.end method

.method initMyRegPinyinArray()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    .line 151
    iget-object v6, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myRegPinyinArray:Ljava/util/HashSet;

    .line 152
    .local v6, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-array v3, v10, [B

    .line 153
    .local v3, "p":[B
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    const/16 v7, 0xd9

    if-lt v2, v7, :cond_0

    .line 168
    return-void

    .line 154
    :cond_0
    mul-int/lit8 v4, v2, 0x6

    .line 155
    .local v4, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v10, :cond_1

    .line 159
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v8, "US-ASCII"

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "pyr":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lt v1, v7, :cond_2

    .line 153
    .end local v5    # "pyr":Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_1
    const-string v7, "2     24    26    264   22    224   226   2264  234   236   2364  2426  243   246   2464  28    23    242   2424  24264 2436  24364 244   24664 2468  248   2482  24824 24826 2482642484  2486  2664  268   2826  284   286   32    324   326   3264  33    334   336   3364  34    342   3426  343   3464  348   3664  368   38    3826  384   386   3     36    37    42    424   426   4264  43    434   436   4364  4664  468   48    482   4824  4826  48264 484   486   54    542   5426  54264 543   546   5464  54664 548   58    5826  583   586   52    524   526   5264  53    534   536   5364  5664  568   582   5824  58264 584   6     62    624   626   6264  63    634   636   6364  64    6426  643   646   6464  648   66    668   68    64264 6664  6826  686   683   72    724   726   7264  734   736   7364  74    7426  743   746   7464  76    768   78    742   74264 74664 748   7826  783   786   73    7664  784   7424  7434  7436  74364 744   7468  7482  74824 74826 7482647484  7486  82    824   826   8264  83    8364  84    8426  843   8464  8664  868   88    8826  884   886   92    924   926   9264  934   936   9364  96    98    94    942   9426  94264 943   946   9464  94664 948   9826  983   986   93    9664  968   9424  9434  9436  94364 944   9468  9482  94824 94826 9482649484  9486  984   "

    add-int v8, v4, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v3, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 162
    .restart local v5    # "pyr":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 164
    .end local v5    # "pyr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "initMyRegPinyinArray --> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public removeContactInfo(J)V
    .locals 3
    .param p1, "contactId"    # J

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    return-void
.end method

.method public searchExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashSet;
    .locals 15
    .param p1, "sInputName"    # Ljava/lang/String;
    .param p2, "internationalCode"    # Ljava/lang/String;
    .param p3, "countryCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1918
    iget-object v13, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v13}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1919
    .local v3, "contactIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1920
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1922
    .local v6, "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_2

    .line 2012
    :cond_1
    return-object v6

    .line 1924
    :cond_2
    sget-boolean v13, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v13, :cond_1

    .line 1927
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1928
    .local v4, "contactId":J
    const/4 v8, 0x0

    .line 1930
    .local v8, "found":Z
    iget-object v13, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;

    .line 1931
    .local v2, "contact":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    if-eqz v2, :cond_0

    .line 1936
    const-string v12, ""

    .line 1937
    .local v12, "strT9":Ljava/lang/String;
    invoke-static {v12}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1940
    const-string v13, "\\("

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1941
    const-string v13, "\\)"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1942
    const-string v13, "\\-"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1943
    const-string v13, " "

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1945
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 1947
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1948
    .local v7, "firstCharacter":C
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1949
    .local v11, "sb":Ljava/lang/StringBuffer;
    const/16 v13, 0x2b

    if-ne v7, v13, :cond_7

    .line 1951
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1952
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1957
    :goto_1
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 1959
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_3

    .line 1960
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1962
    const-string v13, "+"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1963
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1965
    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 1969
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "86"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1970
    .local v10, "sIsc":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_4

    .line 1971
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1972
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1975
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1977
    const-string v13, "86"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "61"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1978
    :cond_5
    const/16 v13, 0x30

    if-ne v7, v13, :cond_6

    .line 1979
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1980
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1981
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1982
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1983
    const/4 v8, 0x1

    .line 2006
    .end local v7    # "firstCharacter":C
    .end local v10    # "sIsc":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    :goto_2
    if-eqz v8, :cond_0

    .line 2007
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1954
    .restart local v7    # "firstCharacter":C
    .restart local v11    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 1989
    :cond_8
    const/4 v8, 0x1

    .line 1992
    goto :goto_2

    .line 1993
    :cond_9
    const/4 v8, 0x1

    .line 1995
    goto :goto_2

    .line 1996
    .end local v7    # "firstCharacter":C
    .end local v11    # "sb":Ljava/lang/StringBuffer;
    :cond_a
    const/4 v8, 0x1

    goto :goto_2
.end method

.method public serachForFuzzy(Ljava/lang/String;Z)Ljava/util/LinkedHashSet;
    .locals 24
    .param p1, "sInputName"    # Ljava/lang/String;
    .param p2, "bMohu"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1783
    const/16 v19, 0x0

    .line 1786
    .local v19, "lastIc":C
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1788
    .local v6, "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1789
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    .line 1790
    .local v16, "ilength":I
    if-nez v16, :cond_1

    .line 1791
    const/4 v6, 0x0

    .line 1912
    .end local v6    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    :cond_0
    return-object v6

    .line 1794
    .restart local v6    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1795
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, v16

    if-lt v10, v0, :cond_4

    .line 1879
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1880
    .local v3, "contactIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 1882
    .local v18, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_3
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1883
    sget-boolean v22, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v22, :cond_0

    .line 1886
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1887
    .local v4, "contactId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->temp:Ljava/lang/StringBuffer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->myContactInfoDict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v22, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;

    .line 1889
    .local v2, "contact":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    if-eqz v2, :cond_3

    iget-object v0, v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->fuzzyString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->temp:Ljava/lang/StringBuffer;

    move-object/from16 v22, v0

    iget-object v0, v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->fuzzyString:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    iget-object v0, v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->fuzzyString:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->temp:Ljava/lang/StringBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1892
    .local v9, "fuzzyString":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    .line 1894
    .local v17, "ioLen":I
    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    .line 1897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1898
    .local v8, "expStr":Ljava/lang/String;
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    .line 1899
    .local v21, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 1901
    .local v20, "match":Ljava/util/regex/Matcher;
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1902
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1904
    :catch_0
    move-exception v7

    .line 1906
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1796
    .end local v2    # "contact":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    .end local v3    # "contactIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v4    # "contactId":J
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "expStr":Ljava/lang/String;
    .end local v9    # "fuzzyString":Ljava/lang/String;
    .end local v17    # "ioLen":I
    .end local v18    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v20    # "match":Ljava/util/regex/Matcher;
    .end local v21    # "pattern":Ljava/util/regex/Pattern;
    :cond_4
    sget-boolean v22, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v22, :cond_2

    .line 1799
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1800
    .local v11, "ic":C
    const/16 v22, 0x2a

    move/from16 v0, v22

    if-ne v11, v0, :cond_6

    .line 1801
    const/16 v22, 0x2a

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 1802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string v23, ".+"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    :cond_5
    :goto_2
    move/from16 v19, v11

    .line 1795
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1805
    :cond_6
    const/4 v12, 0x0

    .line 1806
    .local v12, "ic1":C
    const/4 v13, 0x0

    .line 1807
    .local v13, "ic2":C
    const/4 v14, 0x0

    .line 1808
    .local v14, "ic3":C
    const/4 v15, 0x0

    .line 1809
    .local v15, "ic4":C
    const/16 v22, 0x3a

    move/from16 v0, v22

    if-ge v11, v0, :cond_7

    const/16 v22, 0x31

    move/from16 v0, v22

    if-le v11, v0, :cond_7

    .line 1810
    packed-switch v11, :pswitch_data_0

    .line 1862
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string v23, "["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1812
    :pswitch_0
    const/16 v12, 0x41

    .line 1813
    const/16 v13, 0x42

    .line 1814
    const/16 v14, 0x43

    .line 1815
    const/4 v15, 0x0

    .line 1816
    goto :goto_3

    .line 1818
    :pswitch_1
    const/16 v12, 0x44

    .line 1819
    const/16 v13, 0x45

    .line 1820
    const/16 v14, 0x46

    .line 1821
    const/4 v15, 0x0

    .line 1822
    goto :goto_3

    .line 1824
    :pswitch_2
    const/16 v12, 0x47

    .line 1825
    const/16 v13, 0x48

    .line 1826
    const/16 v14, 0x49

    .line 1827
    const/4 v15, 0x0

    .line 1828
    goto :goto_3

    .line 1830
    :pswitch_3
    const/16 v12, 0x4a

    .line 1831
    const/16 v13, 0x4b

    .line 1832
    const/16 v14, 0x4c

    .line 1833
    const/4 v15, 0x0

    .line 1834
    goto :goto_3

    .line 1836
    :pswitch_4
    const/16 v12, 0x4d

    .line 1837
    const/16 v13, 0x4e

    .line 1838
    const/16 v14, 0x4f

    .line 1839
    const/4 v15, 0x0

    .line 1840
    goto :goto_3

    .line 1842
    :pswitch_5
    const/16 v12, 0x50

    .line 1843
    const/16 v13, 0x51

    .line 1844
    const/16 v14, 0x52

    .line 1845
    const/16 v15, 0x53

    .line 1846
    goto :goto_3

    .line 1848
    :pswitch_6
    const/16 v12, 0x54

    .line 1849
    const/16 v13, 0x55

    .line 1850
    const/16 v14, 0x56

    .line 1851
    const/4 v15, 0x0

    .line 1852
    goto/16 :goto_3

    .line 1854
    :pswitch_7
    const/16 v12, 0x57

    .line 1855
    const/16 v13, 0x58

    .line 1856
    const/16 v14, 0x59

    .line 1857
    const/16 v15, 0x5a

    .line 1858
    goto/16 :goto_3

    .line 1870
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string v23, "["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->sExp:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1810
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
