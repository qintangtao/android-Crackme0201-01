.class public Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
.super Ljava/lang/Object;
.source "MsgCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/MsgCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgDataItem"
.end annotation


# instance fields
.field public argList:Ljava/lang/String;

.field public cloudGroupId:Ljava/lang/String;

.field public cloudGroupInviteCode:Ljava/lang/String;

.field public cloudId:J

.field public dateTime:J

.field public displayText:Ljava/lang/String;

.field public execCode:I

.field public isReaded:I

.field public msgId:J

.field public msgTypeDrawableId:I

.field public nextActionDrawableId:I

.field public phoneNum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
