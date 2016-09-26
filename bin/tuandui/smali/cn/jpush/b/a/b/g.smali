.class public Lcn/jpush/b/a/b/g;
.super Lcn/jpush/b/a/b/q;


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field

.field c:I
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field

.field d:I
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field


# virtual methods
.method protected final a(JLjava/lang/String;)Lcn/jpush/b/a/b/p;
    .locals 9

    invoke-static {}, Lcn/jpush/a/a/o;->n()Lcn/jpush/a/a/p;

    move-result-object v0

    iget v1, p0, Lcn/jpush/b/a/b/g;->c:I

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/p;->b(I)Lcn/jpush/a/a/p;

    move-result-object v0

    iget v1, p0, Lcn/jpush/b/a/b/g;->d:I

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/p;->a(I)Lcn/jpush/a/a/p;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/b/a/b/g;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/jpush/b/a/b/g;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/jpush/c;->a(Ljava/lang/String;)Lcom/google/protobuf/jpush/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/p;->a(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/p;

    :cond_0
    iget-object v1, p0, Lcn/jpush/b/a/b/g;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/jpush/b/a/b/g;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/jpush/c;->a(Ljava/lang/String;)Lcom/google/protobuf/jpush/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/p;->b(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/p;

    :cond_1
    new-instance v1, Lcn/jpush/b/a/b/p;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcn/jpush/a/a/p;->a()Lcn/jpush/a/a/o;

    move-result-object v7

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcn/jpush/b/a/b/p;-><init>(IIJLjava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method
