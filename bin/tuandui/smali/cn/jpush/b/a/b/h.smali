.class public Lcn/jpush/b/a/b/h;
.super Lcn/jpush/b/a/b/q;


# instance fields
.field a:Ljava/util/List;
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method final a(JLjava/lang/String;)Lcn/jpush/b/a/b/p;
    .locals 9

    invoke-static {}, Lcn/jpush/a/a/f;->d()Lcn/jpush/a/a/g;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/b/a/b/h;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/g;->a(Ljava/lang/Iterable;)Lcn/jpush/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/g;->a()Lcn/jpush/a/a/f;

    move-result-object v7

    new-instance v1, Lcn/jpush/b/a/b/p;

    const/16 v2, 0x13

    const/4 v3, 0x1

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcn/jpush/b/a/b/p;-><init>(IIJLjava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method
