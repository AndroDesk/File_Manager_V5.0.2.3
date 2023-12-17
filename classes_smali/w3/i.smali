.class public final Lw3/i;
.super Lw3/h;
.source "RequestEnvBuilderCompat_V18.java"


# static fields
.field public static final c:[I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_a

    .line 7
    sput-object v0, Lw3/i;->c:[I

    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_a
    .array-data 4
        0x1388
        0x2710
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lw3/h;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 6
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 9
    iput-object v0, p0, Lw3/i;->b:Ljava/lang/ThreadLocal;

    .line 11
    return-void
.end method

.method public static a(Landroid/accounts/AccountManagerFuture;)Ljava/lang/String;
    .registers 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x1

    .line 7
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v4

    .line 11
    sub-long/2addr v4, v0

    .line 12
    const-wide/16 v6, 0x7530

    .line 14
    cmp-long v4, v4, v6

    .line 16
    if-gez v4, :cond_31

    .line 18
    invoke-interface {p0}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_24

    .line 24
    invoke-interface {p0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroid/os/Bundle;

    .line 30
    const-string v0, "authtoken"

    .line 32
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_24
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 40
    const-wide/16 v4, 0x2

    .line 42
    mul-long/2addr v2, v4

    .line 43
    const-wide/16 v4, 0x12c

    .line 45
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 48
    move-result-wide v2

    .line 49
    goto :goto_6

    .line 50
    :cond_31
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    .line 52
    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .line 55
    throw p0
.end method

.method public static synthetic b(Lw3/i;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lw3/i;->a:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lw3/i;Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lw3/i;->a:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public final build()Lw3/c$a;
    .registers 2

    .line 1
    new-instance v0, Lw3/i$a;

    .line 3
    invoke-direct {v0, p0}, Lw3/i$a;-><init>(Lw3/i;)V

    .line 6
    return-object v0
.end method
