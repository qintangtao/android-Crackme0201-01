.class Lcom/lzx/iteam/ScheduleDetailActivity$2;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "ScheduleDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ScheduleDetailActivity;->calendarGet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ScheduleDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ScheduleDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleDetailActivity$2;->this$0:Lcom/lzx/iteam/ScheduleDetailActivity;

    .line 113
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 122
    return-void
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 117
    return-void
.end method
