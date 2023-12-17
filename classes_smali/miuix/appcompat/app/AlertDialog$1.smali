.class Lmiuix/appcompat/app/AlertDialog$1;
.super Ln/b;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertDialog;->createSpecialUiTaskExecutor()Ln/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private volatile mSpecialMainHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/app/AlertDialog;)V
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/app/AlertDialog$1;->this$0:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ln/b;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/AlertDialog$1;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private createAsync(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    invoke-static {p1}, Lmiuix/appcompat/app/f;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    return-object p1

    :cond_b
    :try_start_b
    const-class v0, Landroid/os/Handler;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/Looper;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/os/Handler$Callback;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x0

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;
    :try_end_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_34} :catch_3b
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_34} :catch_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_34} :catch_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_34} :catch_35

    return-object v0

    :catch_35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0

    :catch_3b
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method


# virtual methods
.method public isMainThread()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$1;->mSpecialMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$1;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$1;->mSpecialMainHandler:Landroid/os/Handler;

    if-nez v1, :cond_15

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertDialog$1;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/AlertDialog$1;->mSpecialMainHandler:Landroid/os/Handler;

    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p1

    :cond_1a
    :goto_1a
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$1;->mSpecialMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
