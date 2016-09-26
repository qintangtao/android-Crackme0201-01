.class public Lcom/lzx/iteam/bean/EventVoteBean;
.super Ljava/lang/Object;
.source "EventVoteBean.java"


# instance fields
.field private count:I

.field private vote:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/lzx/iteam/bean/EventVoteBean;->count:I

    return v0
.end method

.method public getVote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lzx/iteam/bean/EventVoteBean;->vote:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/lzx/iteam/bean/EventVoteBean;->count:I

    .line 25
    return-void
.end method

.method public setVote(Ljava/lang/String;)V
    .locals 0
    .param p1, "vote"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lzx/iteam/bean/EventVoteBean;->vote:Ljava/lang/String;

    .line 17
    return-void
.end method
