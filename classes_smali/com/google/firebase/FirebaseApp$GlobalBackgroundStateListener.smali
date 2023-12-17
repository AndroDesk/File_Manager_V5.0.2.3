.class Lcom/google/firebase/FirebaseApp$GlobalBackgroundStateListener;
.super Ljava/lang/Object;
.source "FirebaseApp.java"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/FirebaseApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlobalBackgroundStateListener"
.end annotation


# static fields
.field private static INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/firebase/FirebaseApp$GlobalBackgroundStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 6
    sput-object v0, Lcom/google/firebase/FirebaseApp$GlobalBackgroundStateListener;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp$GlobalBackgroundStateListener;->ensureBackgroundStateListenerRegistered(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method private static ensureBackgroundStateListenerRegistered(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastIceCreamSandwich()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_40

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Landroid/app/Application;

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_40

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/app/Application;

    .line 22
    sget-object v0, Lcom/google/firebase/FirebaseApp$GlobalBackgroundStateListener;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_40

    .line 30
    new-instance v0, Lcom/google/firebase/FirebaseApp$GlobalBackgroundStateListener;

    .line 32
    invoke-direct {v0}, Lcom/google/firebase/FirebaseApp$GlobalBackgroundStateListener;-><init>()V

    .line 35
    sget-object v1, Lcom/google/firebase/FirebaseApp$GlobalBackgroundStateListener;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    const/4 v2, 0x0

    .line 38
    :cond_25
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2d

    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_34

    .line 46
    :cond_2d
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_25

    .line 52
    const/4 v1, 0x0

    .line 53
    :goto_34
    if-eqz v1, :cond_40

    .line 55
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->initialize(Landroid/app/Application;)V

    .line 58
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->addListener(Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;)V

    .line 65
    :cond_40
    :goto_40
    return-void
.end method


# virtual methods
.method public onBackgroundStateChanged(Z)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->access$300()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    sget-object v2, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    .line 10
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 21
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2e

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/google/firebase/FirebaseApp;

    .line 33
    invoke-static {v2}, Lcom/google/firebase/FirebaseApp;->access$500(Lcom/google/firebase/FirebaseApp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_14

    .line 43
    invoke-static {v2, p1}, Lcom/google/firebase/FirebaseApp;->access$600(Lcom/google/firebase/FirebaseApp;Z)V

    .line 46
    goto :goto_14

    .line 47
    :cond_2e
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :catchall_30
    move-exception p1

    .line 50
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_30

    .line 51
    throw p1
.end method
