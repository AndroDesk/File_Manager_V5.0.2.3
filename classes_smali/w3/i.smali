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

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lw3/i;->c:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1388
        0x2710
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lw3/h;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lw3/i;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Landroid/accounts/AccountManagerFuture;)Ljava/lang/String;
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-gez v4, :cond_31

    invoke-interface {p0}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {p0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string v0, "authtoken"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_6

    :cond_31
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0
.end method

.method public static synthetic b(Lw3/i;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lw3/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lw3/i;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lw3/i;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lw3/c$a;
    .registers 2

    new-instance v0, Lw3/i$a;

    invoke-direct {v0, p0}, Lw3/i$a;-><init>(Lw3/i;)V

    return-object v0
.end method
