.class public Lcom/lzx/iteam/net/EventListCenter;
.super Ljava/lang/Object;
.source "EventListCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/net/EventListCenter$EventDataListener;
    }
.end annotation


# static fields
.field private static final MSG_EVENT_GET_LIST:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "get_event_data"

.field private static sInstance:Lcom/lzx/iteam/net/EventListCenter;


# instance fields
.field private isUpDate:Z

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContext:Landroid/content/Context;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mEventListDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/lzx/iteam/net/EventListCenter$EventDataListener;

.field private mPageIndex:I

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "0"

    iput-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mType:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mEventListDatas:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Lcom/lzx/iteam/net/EventListCenter$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/net/EventListCenter$1;-><init>(Lcom/lzx/iteam/net/EventListCenter;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mHandler:Landroid/os/Handler;

    .line 119
    iput-object p1, p0, Lcom/lzx/iteam/net/EventListCenter;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 121
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 122
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/lzx/iteam/MainActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 123
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/net/EventListCenter;)V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/lzx/iteam/net/EventListCenter;->notifyEventList()V

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/net/EventListCenter;)Lcom/lzx/iteam/util/AllDialogUtil;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/net/EventListCenter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/net/EventListCenter;)Lcom/lzx/iteam/net/EventListCenter$EventDataListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mListener:Lcom/lzx/iteam/net/EventListCenter$EventDataListener;

    return-object v0
.end method

.method private deleteEventData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 309
    :cond_0
    const-string v1, "get_event_data"

    const-string v2, "deleteCloudGroupItem with null group list."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 317
    return-void

    .line 313
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/net/EventListCenter;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteEventByEventId(Ljava/lang/String;)I

    .line 314
    const-string v2, "get_event_data"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "--delete_event Id--"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/EventListCenter;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 126
    sget-object v0, Lcom/lzx/iteam/net/EventListCenter;->sInstance:Lcom/lzx/iteam/net/EventListCenter;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/lzx/iteam/net/EventListCenter;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/net/EventListCenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lzx/iteam/net/EventListCenter;->sInstance:Lcom/lzx/iteam/net/EventListCenter;

    .line 129
    :cond_0
    sget-object v0, Lcom/lzx/iteam/net/EventListCenter;->sInstance:Lcom/lzx/iteam/net/EventListCenter;

    return-object v0
.end method

.method private notifyEventList()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/net/EventListCenter;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->findEventsByType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mEventListDatas:Ljava/util/ArrayList;

    .line 322
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mListener:Lcom/lzx/iteam/net/EventListCenter$EventDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mListener:Lcom/lzx/iteam/net/EventListCenter$EventDataListener;

    iget-object v1, p0, Lcom/lzx/iteam/net/EventListCenter;->mEventListDatas:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/lzx/iteam/net/EventListCenter$EventDataListener;->onChange(Ljava/util/ArrayList;)V

    .line 323
    :cond_0
    return-void
.end method

.method private removeEventById(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/lzx/iteam/bean/EventListData;
    .locals 2
    .param p1, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;)",
            "Lcom/lzx/iteam/bean/EventListData;"
        }
    .end annotation

    .prologue
    .line 174
    .local p2, "localEventData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 179
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 175
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/EventListData;

    goto :goto_1

    .line 174
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateCloudEventData(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "localEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    .local p2, "cloudEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    const/4 v4, 0x0

    .line 274
    .local v4, "needUpdate":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 275
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    move v5, v4

    .line 303
    .end local v1    # "i":I
    .end local v4    # "needUpdate":Z
    .local v5, "needUpdate":Z
    :goto_1
    return v5

    .line 276
    .end local v5    # "needUpdate":Z
    .restart local v1    # "i":I
    .restart local v4    # "needUpdate":Z
    :cond_0
    iget-object v7, p0, Lcom/lzx/iteam/net/EventListCenter;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v7, v6}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertEvent(Lcom/lzx/iteam/bean/EventListData;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_2
    or-int/2addr v4, v6

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 281
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 282
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/bean/EventListData;>;"
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 299
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 300
    invoke-direct {p0, p1}, Lcom/lzx/iteam/net/EventListCenter;->deleteEventData(Ljava/util/ArrayList;)V

    .line 301
    const/4 v4, 0x1

    :cond_4
    move v5, v4

    .line 303
    .end local v4    # "needUpdate":Z
    .restart local v5    # "needUpdate":Z
    goto :goto_1

    .line 283
    .end local v5    # "needUpdate":Z
    .restart local v4    # "needUpdate":Z
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventListData;

    .line 284
    .local v0, "cloudItem":Lcom/lzx/iteam/bean/EventListData;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 286
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcom/lzx/iteam/net/EventListCenter;->removeEventById(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/lzx/iteam/bean/EventListData;

    move-result-object v3

    .line 288
    .local v3, "localItem":Lcom/lzx/iteam/bean/EventListData;
    if-nez v3, :cond_7

    .line 289
    iget-object v6, p0, Lcom/lzx/iteam/net/EventListCenter;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v6, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertEvent(Lcom/lzx/iteam/bean/EventListData;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    :goto_4
    or-int/2addr v4, v6

    .line 290
    goto :goto_3

    .line 289
    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    .line 293
    :cond_7
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/EventListData;->getUpdateTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 294
    iget-object v6, p0, Lcom/lzx/iteam/net/EventListCenter;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateEventData(Ljava/lang/String;Lcom/lzx/iteam/bean/EventListData;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    :goto_5
    or-int/2addr v4, v6

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    goto :goto_5
.end method


# virtual methods
.method public eraseEventData()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteAllEvents()Z

    .line 185
    invoke-direct {p0}, Lcom/lzx/iteam/net/EventListCenter;->notifyEventList()V

    .line 186
    return-void
.end method

.method public getEventData(IZI)Ljava/util/ArrayList;
    .locals 2
    .param p1, "pageIndex"    # I
    .param p2, "update"    # Z
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iput-boolean p2, p0, Lcom/lzx/iteam/net/EventListCenter;->isUpDate:Z

    .line 149
    iput p1, p0, Lcom/lzx/iteam/net/EventListCenter;->mPageIndex:I

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mType:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mEventListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/net/EventListCenter;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->findEventsByType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mEventListDatas:Ljava/util/ArrayList;

    .line 167
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mType:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/lzx/iteam/net/EventListCenter;->getEventsList(Ljava/lang/String;I)V

    .line 169
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter;->mEventListDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEventsList(Ljava/lang/String;I)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pageIndex"    # I

    .prologue
    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 198
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_type"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-boolean v2, p0, Lcom/lzx/iteam/net/EventListCenter;->isUpDate:Z

    if-eqz v2, :cond_0

    .line 201
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pagesize"

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0xa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pageindex"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :goto_0
    new-instance v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;

    iget-object v2, p0, Lcom/lzx/iteam/net/EventListCenter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/net/EventListCenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3, p1, p2}, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;-><init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;I)V

    .line 208
    .local v0, "eventListData":Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;
    const-string v2, "/api/event/list_v3"

    iput-object v2, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;->mApi:Ljava/lang/String;

    .line 209
    iput-object v1, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;->mParams:Ljava/util/List;

    .line 210
    iget-object v2, p0, Lcom/lzx/iteam/net/EventListCenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 211
    return-void

    .line 204
    .end local v0    # "eventListData":Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;
    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pagesize"

    const-string v4, "10"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pageindex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getEventsList(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pageIndex"    # I
    .param p3, "eventIds"    # Ljava/lang/String;

    .prologue
    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 245
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_type"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-static {p3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_ids"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pagesize"

    const-string v4, "10"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-boolean v2, p0, Lcom/lzx/iteam/net/EventListCenter;->isUpDate:Z

    if-eqz v2, :cond_1

    .line 251
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pageindex"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :goto_0
    new-instance v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;

    iget-object v2, p0, Lcom/lzx/iteam/net/EventListCenter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/net/EventListCenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3, p1}, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;-><init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;)V

    .line 256
    .local v0, "eventListData":Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;
    const-string v2, "/api/event/list"

    iput-object v2, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mApi:Ljava/lang/String;

    .line 257
    iput-object v1, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mParams:Ljava/util/List;

    .line 258
    iget-object v2, p0, Lcom/lzx/iteam/net/EventListCenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 259
    return-void

    .line 253
    .end local v0    # "eventListData":Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;
    :cond_1
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pageindex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getEventsList(Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pageIndex"    # I
    .param p3, "update"    # Z

    .prologue
    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 221
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_type"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    if-eqz p3, :cond_0

    .line 224
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pagesize"

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0xa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pageindex"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :goto_0
    new-instance v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;

    iget-object v2, p0, Lcom/lzx/iteam/net/EventListCenter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/net/EventListCenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3, p1, p2}, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;-><init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;I)V

    .line 231
    .local v0, "eventListData":Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;
    const-string v2, "/api/event/list_v3"

    iput-object v2, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;->mApi:Ljava/lang/String;

    .line 232
    iput-object v1, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;->mParams:Ljava/util/List;

    .line 233
    iget-object v2, p0, Lcom/lzx/iteam/net/EventListCenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 234
    return-void

    .line 227
    .end local v0    # "eventListData":Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;
    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pagesize"

    const-string v4, "10"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pageindex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setUpdateEventListener(Lcom/lzx/iteam/net/EventListCenter$EventDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/net/EventListCenter$EventDataListener;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/lzx/iteam/net/EventListCenter;->mListener:Lcom/lzx/iteam/net/EventListCenter$EventDataListener;

    .line 145
    return-void
.end method
