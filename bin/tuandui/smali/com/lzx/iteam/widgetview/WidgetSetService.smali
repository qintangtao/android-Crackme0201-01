.class public Lcom/lzx/iteam/widgetview/WidgetSetService;
.super Landroid/widget/RemoteViewsService;
.source "WidgetSetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;
    }
.end annotation


# instance fields
.field private mCalendarData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDate:Ljava/lang/String;

.field private mScheduleDB:Lcom/lzx/iteam/provider/ScheduleDB;

.field private mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetService;->mCalendarData:Ljava/util/List;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/widgetview/WidgetSetService;Lcom/lzx/iteam/provider/ScheduleDB;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lzx/iteam/widgetview/WidgetSetService;->mScheduleDB:Lcom/lzx/iteam/provider/ScheduleDB;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/widgetview/WidgetSetService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lzx/iteam/widgetview/WidgetSetService;->mDate:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/widgetview/WidgetSetService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lzx/iteam/widgetview/WidgetSetService;->mUid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetService;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetService;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/widgetview/WidgetSetService;)Lcom/lzx/iteam/provider/ScheduleDB;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetService;->mScheduleDB:Lcom/lzx/iteam/provider/ScheduleDB;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/widgetview/WidgetSetService;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lzx/iteam/widgetview/WidgetSetService;->mCalendarData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$7(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetService;->mCalendarData:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    new-instance v0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;

    invoke-virtual {p0}, Lcom/lzx/iteam/widgetview/WidgetSetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;-><init>(Lcom/lzx/iteam/widgetview/WidgetSetService;Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
