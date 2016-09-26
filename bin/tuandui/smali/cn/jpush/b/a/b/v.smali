.class public Lcn/jpush/b/a/b/v;
.super Lcn/jpush/b/a/b/q;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field b:J
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcn/jpush/b/a/b/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/b/a/b/v;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a(JLjava/lang/String;)Lcn/jpush/b/a/b/p;
    .locals 9

    invoke-static {}, Lcn/jpush/a/a/bi;->j()Lcn/jpush/a/a/bj;

    move-result-object v0

    iget-wide v2, p0, Lcn/jpush/b/a/b/v;->b:J

    invoke-virtual {v0, v2, v3}, Lcn/jpush/a/a/bj;->a(J)Lcn/jpush/a/a/bj;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/b/a/b/v;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/jpush/a/a/bg;->j()Lcn/jpush/a/a/bh;

    move-result-object v1

    iget-object v2, p0, Lcn/jpush/b/a/b/v;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/protobuf/jpush/c;->a(Ljava/lang/String;)Lcom/google/protobuf/jpush/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/jpush/a/a/bh;->a(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/bh;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jpush/a/a/bh;->a()Lcn/jpush/a/a/bg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/bj;->a(Lcn/jpush/a/a/bg;)Lcn/jpush/a/a/bj;

    :cond_0
    new-instance v1, Lcn/jpush/b/a/b/p;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcn/jpush/a/a/bj;->a()Lcn/jpush/a/a/bi;

    move-result-object v7

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcn/jpush/b/a/b/p;-><init>(IIJLjava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method
