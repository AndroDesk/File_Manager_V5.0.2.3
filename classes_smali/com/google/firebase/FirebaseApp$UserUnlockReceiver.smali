.class Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FirebaseApp.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/FirebaseApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserUnlockReceiver"
.end annotation


# static fields
.field private static INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final applicationContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 6
    sput-object v0, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;->applicationContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method public static synthetic access$200(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;->ensureReceiverRegistered(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method private static ensureReceiverRegistered(Landroid/content/Context;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_2b

    .line 9
    new-instance v0, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;

    .line 11
    invoke-direct {v0, p0}, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;-><init>(Landroid/content/Context;)V

    .line 14
    sget-object v1, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    const/4 v2, 0x0

    .line 17
    :cond_10
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_18

    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_1f

    .line 25
    :cond_18
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_10

    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_1f
    if-eqz v1, :cond_2b

    .line 34
    new-instance v1, Landroid/content/IntentFilter;

    .line 36
    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 38
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    :cond_2b
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->access$300()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    monitor-enter p1

    .line 6
    :try_start_5
    sget-object p2, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    .line 8
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 11
    move-result-object p2

    .line 12
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p2

    .line 16
    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1f

    .line 22
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/google/firebase/FirebaseApp;

    .line 28
    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->access$400(Lcom/google/firebase/FirebaseApp;)V

    .line 31
    goto :goto_f

    .line 32
    :cond_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    .line 33
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;->unregister()V

    .line 36
    return-void

    .line 37
    :catchall_24
    move-exception p2

    .line 38
    :try_start_25
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    .line 39
    throw p2
.end method

.method public unregister()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;->applicationContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    return-void
.end method
