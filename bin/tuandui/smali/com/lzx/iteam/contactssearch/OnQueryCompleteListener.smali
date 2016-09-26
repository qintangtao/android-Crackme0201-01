.class public interface abstract Lcom/lzx/iteam/contactssearch/OnQueryCompleteListener;
.super Ljava/lang/Object;
.source "OnQueryCompleteListener.java"


# virtual methods
.method public abstract onQueryComplete(Landroid/database/Cursor;)V
.end method

.method public abstract onQueryComplete(Ljava/lang/String;Ljava/util/LinkedHashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQueryComplete(Ljava/util/LinkedHashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method
