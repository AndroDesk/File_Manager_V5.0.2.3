.class final Lcom/xiaomi/onetrack/d/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/onetrack/d/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/d/f;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/d/f;-><init>(Lcom/xiaomi/onetrack/d/g;)V

    .line 7
    sput-object v0, Lcom/xiaomi/onetrack/d/f$a;->a:Lcom/xiaomi/onetrack/d/f;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/xiaomi/onetrack/d/f;
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/d/f$a;->a:Lcom/xiaomi/onetrack/d/f;

    .line 3
    return-object v0
.end method
