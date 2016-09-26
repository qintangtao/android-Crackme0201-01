.class public final Lcom/google/protobuf/jpush/g;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lcom/google/protobuf/jpush/g;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/jpush/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/jpush/g;-><init>(B)V

    sput-object v0, Lcom/google/protobuf/jpush/g;->b:Lcom/google/protobuf/jpush/g;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/jpush/g;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/jpush/g;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/google/protobuf/jpush/g;
    .locals 1

    sget-object v0, Lcom/google/protobuf/jpush/g;->b:Lcom/google/protobuf/jpush/g;

    return-object v0
.end method
