.class Lcom/koushikdutta/async/util/HashList$TaggedList;
.super Ljava/util/ArrayList;
.source "HashList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/util/HashList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaggedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field tag:Ljava/lang/Object;

.field final synthetic this$0:Lcom/koushikdutta/async/util/HashList;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/util/HashList;)V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/koushikdutta/async/util/HashList$TaggedList;, "Lcom/koushikdutta/async/util/HashList<TT;>.TaggedList<TT;>;"
    iput-object p1, p0, Lcom/koushikdutta/async/util/HashList$TaggedList;->this$0:Lcom/koushikdutta/async/util/HashList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method
