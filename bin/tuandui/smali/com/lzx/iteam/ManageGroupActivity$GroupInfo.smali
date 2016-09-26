.class Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;
.super Ljava/lang/Object;
.source "ManageGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ManageGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupInfo"
.end annotation


# instance fields
.field groupImg:Ljava/lang/String;

.field groupName:Ljava/lang/String;

.field groupType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "img"    # Ljava/lang/String;

    .prologue
    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    iput-object p1, p0, Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;->groupName:Ljava/lang/String;

    .line 955
    iput-object p2, p0, Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;->groupType:Ljava/lang/String;

    .line 956
    iput-object p3, p0, Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;->groupImg:Ljava/lang/String;

    .line 957
    return-void
.end method
