.class public Lcn/jpush/b/a/b/i;
.super Lcn/jpush/b/a/b/q;


# instance fields
.field a:J
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field


# virtual methods
.method final a(JLjava/lang/String;)Lcn/jpush/b/a/b/p;
    .locals 9

    invoke-static {}, Lcn/jpush/a/a/h;->f()Lcn/jpush/a/a/i;

    move-result-object v0

    iget-wide v2, p0, Lcn/jpush/b/a/b/i;->a:J

    invoke-virtual {v0, v2, v3}, Lcn/jpush/a/a/i;->a(J)Lcn/jpush/a/a/i;

    move-result-object v0

    new-instance v1, Lcn/jpush/b/a/b/p;

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcn/jpush/a/a/i;->a()Lcn/jpush/a/a/h;

    move-result-object v7

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcn/jpush/b/a/b/p;-><init>(IIJLjava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method
