.class public Lcom/xiaomi/stat/ah;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/ah$a;
    }
.end annotation


# static fields
.field public static final a:I

.field private static final b:I

.field private static final c:I


# instance fields
.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;

.field private f:Landroid/os/HandlerThread;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/ah;->a:I

    const v0, 0x90a86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/ah;->b:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/ah;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/stat/ah;->g:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/xiaomi/stat/ah;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/stat/ah;->i:I

    iput-boolean v0, p0, Lcom/xiaomi/stat/ah;->j:Z

    iput-object p1, p0, Lcom/xiaomi/stat/ah;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/stat/ah;)I
    .registers 1

    iget p0, p0, Lcom/xiaomi/stat/ah;->g:I

    return p0
.end method

.method public static synthetic b(Lcom/xiaomi/stat/ah;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/stat/ah;->e:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic c(Lcom/xiaomi/stat/ah;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/xiaomi/stat/ah;->j:Z

    return p0
.end method

.method public static synthetic d(Lcom/xiaomi/stat/ah;)I
    .registers 1

    iget p0, p0, Lcom/xiaomi/stat/ah;->h:I

    return p0
.end method

.method private d()V
    .registers 6

    new-instance v0, Lcom/xiaomi/stat/ah$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/stat/ah$a;-><init>(Lcom/xiaomi/stat/ah;Lcom/xiaomi/stat/ai;)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, ""

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/stat/ah;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/stat/ah;->f:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/xiaomi/stat/ah;->d:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/xiaomi/stat/ah$a;->a(Lcom/xiaomi/stat/ah$a;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/stat/ah;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_25

    :cond_b
    invoke-direct {p0}, Lcom/xiaomi/stat/ah;->d()V

    iget-object v0, p0, Lcom/xiaomi/stat/ah;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/xiaomi/stat/ah;->j:Z

    iget-object v1, p0, Lcom/xiaomi/stat/ah;->d:Landroid/os/Handler;

    iget v2, p0, Lcom/xiaomi/stat/ah;->i:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_25
    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/xiaomi/stat/ah;->i:I

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/stat/ah;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/stat/ah;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/stat/ah;->j:Z

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/xiaomi/stat/ah;->g:I

    return-void
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/xiaomi/stat/ah;->h:I

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/stat/ah;->j:Z

    return v0
.end method
