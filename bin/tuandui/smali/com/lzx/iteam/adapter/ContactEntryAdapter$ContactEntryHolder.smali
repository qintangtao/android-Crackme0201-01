.class public final Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;
.super Ljava/lang/Object;
.source "ContactEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/ContactEntryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactEntryHolder"
.end annotation


# instance fields
.field public checkBox:Landroid/widget/CheckBox;

.field public contactDisturbStatus:Landroid/widget/ImageView;

.field public contactId:Ljava/lang/Long;

.field public inviteImg:Landroid/widget/ImageView;

.field public nameTextView:Landroid/widget/TextView;

.field public numberTextView:Landroid/widget/TextView;

.field public orgTextView:Landroid/widget/TextView;

.field public phoneNum:Ljava/lang/String;

.field public quickContact:Lcom/lzx/iteam/widget/RoundImageView;

.field public timesContactedView:Landroid/widget/TextView;

.field public wxIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
