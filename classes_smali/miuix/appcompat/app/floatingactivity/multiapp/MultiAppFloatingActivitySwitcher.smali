.class public final Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
.super Ljava/lang/Object;
.source "MultiAppFloatingActivitySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;,
        Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$OpenExitAnimationExecutor;,
        Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;,
        Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;
    }
.end annotation


# static fields
.field private static final INVOKE_THRESHOLD:J = 0x64L

.field private static final SAVED_INSTANCE_KEY:Ljava/lang/String; = "floating_switcher_saved_key"

.field public static final SERVICE_FIRST_FLOATING:Ljava/lang/String; = "first_floating_activity"

.field public static final SERVICE_ORIGINAL_PAGE_INDEX:Ljava/lang/String; = "floating_service_original_page_index"

.field public static final SERVICE_PAGE_INDEX:Ljava/lang/String; = "service_page_index"

.field public static final SERVICE_PATH:Ljava/lang/String; = "floating_service_path"

.field public static final SERVICE_PKG:Ljava/lang/String; = "floating_service_pkg"

.field private static final TAG:Ljava/lang/String; = "MFloatingSwitcher"

.field private static mAllowedPackageList:[Ljava/lang/String;

.field private static sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;


# instance fields
.field private final mActivityCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCloseAllActivityTime:J

.field private mEnableDragToDismiss:Z

.field private final mExitAnimationHandler:Landroid/os/Handler;

.field private mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

.field private mLastActivityPanel:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDragEndTime:J

.field private mOnDragStartTime:J

.field private mServiceConnected:Z

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mExitAnimationHandler:Landroid/os/Handler;

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    .line 17
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 20
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mEnableDragToDismiss:Z

    .line 25
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$1;

    .line 27
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$1;-><init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V

    .line 30
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 32
    return-void
.end method

.method public static synthetic access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->setIFloatingService(Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->onDragEnd()V

    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->closeAllActivity()V

    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->unbindService(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->closeAllPage()V

    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mExitAnimationHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1500(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->checkRegister()V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->unRegisterAll()V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;II)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->shouldAllFloatingClose(II)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;I)Landroid/os/Bundle;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(I)Landroid/os/Bundle;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$700(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mEnableDragToDismiss:Z

    .line 3
    return p0
.end method

.method public static synthetic access$800(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Landroid/util/SparseArray;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->hideBehindPages()V

    .line 4
    return-void
.end method

.method private bindService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "floating_service_pkg"

    .line 8
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isPackageAllowed(Ljava/lang/String;)Z

    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_12

    .line 18
    return-void

    .line 19
    :cond_12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v2, "floating_service_path"

    .line 24
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_22

    .line 34
    return-void

    .line 35
    :cond_22
    new-instance v2, Landroid/content/ComponentName;

    .line 37
    invoke-direct {v2, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    move-result-object p1

    .line 47
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 53
    return-void
.end method

.method private checkRegister()V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_33

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_30

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 34
    iget-boolean v3, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->register:Z

    .line 36
    if-nez v3, :cond_15

    .line 38
    invoke-direct {p0, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->invokeRegister(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;)V

    .line 41
    iget v3, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    .line 43
    iget-object v2, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, v3, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->checkBg(ILjava/lang/String;)V

    .line 48
    goto :goto_15

    .line 49
    :cond_30
    add-int/lit8 v0, v0, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_33
    return-void
.end method

.method private closeAllActivity()V
    .registers 7

    .line 1
    iget-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mCloseAllActivityTime:J

    .line 3
    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isCalled(J)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mCloseAllActivityTime:J

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_10
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 22
    move-result v1

    .line 23
    if-ge v0, v1, :cond_53

    .line 25
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v2

    .line 37
    add-int/lit8 v2, v2, -0x1

    .line 39
    :goto_26
    if-ltz v2, :cond_50

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 47
    iget-object v3, v3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 55
    iget v4, v4, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    .line 57
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 63
    iget v5, v5, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    .line 65
    invoke-virtual {p0, v5}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getServicePageCount(I)I

    .line 68
    move-result v5

    .line 69
    if-eqz v3, :cond_4d

    .line 71
    add-int/lit8 v5, v5, -0x1

    .line 73
    if-eq v4, v5, :cond_4d

    .line 75
    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    .line 78
    :cond_4d
    add-int/lit8 v2, v2, -0x1

    .line 80
    goto :goto_26

    .line 81
    :cond_50
    add-int/lit8 v0, v0, 0x1

    .line 83
    goto :goto_10

    .line 84
    :cond_53
    return-void
.end method

.method private closeAllPage()V
    .registers 7

    .line 1
    iget-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mCloseAllActivityTime:J

    .line 3
    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isCalled(J)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mCloseAllActivityTime:J

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_10
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 22
    move-result v1

    .line 23
    if-ge v0, v1, :cond_53

    .line 25
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v2

    .line 37
    add-int/lit8 v2, v2, -0x1

    .line 39
    :goto_26
    if-ltz v2, :cond_50

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 47
    iget-object v3, v3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 55
    iget v4, v4, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    .line 57
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 63
    iget v5, v5, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    .line 65
    invoke-virtual {p0, v5}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getServicePageCount(I)I

    .line 68
    move-result v5

    .line 69
    if-eqz v3, :cond_4d

    .line 71
    add-int/lit8 v5, v5, -0x1

    .line 73
    if-eq v4, v5, :cond_4d

    .line 75
    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    .line 78
    :cond_4d
    add-int/lit8 v2, v2, -0x1

    .line 80
    goto :goto_26

    .line 81
    :cond_50
    add-int/lit8 v0, v0, 0x1

    .line 83
    goto :goto_10

    .line 84
    :cond_53
    return-void
.end method

.method public static configureFloatingService(Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object v0, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 10
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    iget-object v0, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 11
    :cond_15
    invoke-static {p0, p1, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->configureFloatingService(Landroid/content/Intent;Landroid/content/Intent;I)V

    return-void
.end method

.method private static configureFloatingService(Landroid/content/Intent;Landroid/content/Intent;I)V
    .registers 6

    const-string v0, "floating_service_pkg"

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "floating_service_path"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "first_floating_activity"

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "service_page_index"

    if-nez v0, :cond_45

    const/4 v0, -0x1

    .line 16
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_3f

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the value of SERVICE_PAGE_INDEX is invalid  , index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , please check it"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MFloatingSwitcher"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    add-int/lit8 p1, p1, 0x1

    .line 18
    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_48

    .line 19
    :cond_45
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    :goto_48
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 21
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getServicePageCount(I)I

    move-result p1

    const-string p2, "floating_service_original_page_index"

    .line 22
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_57
    return-void
.end method

.method public static configureFloatingService(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->configureFloatingService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static configureFloatingService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "floating_service_pkg"

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 4
    const-class p1, Lmiuix/appcompat/app/floatingactivity/multiapp/FloatingService;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_11
    const-string p1, "floating_service_path"

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    const-string p2, "service_page_index"

    .line 6
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_29

    const/4 p1, 0x1

    const-string v0, "first_floating_activity"

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_29
    return-void
.end method

.method public static configureFloatingService(Landroid/content/Intent;Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    invoke-static {p0, v0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->configureFloatingService(Landroid/content/Intent;Landroid/content/Intent;I)V

    return-void
.end method

.method private getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/ArrayList;

    .line 9
    if-eqz p1, :cond_23

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_23

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 27
    iget-object v1, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    .line 29
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_e

    .line 35
    return-object v0

    .line 36
    :cond_23
    const/4 p1, 0x0

    .line 37
    return-object p1
.end method

.method public static getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 3
    return-object v0
.end method

.method private hideBehindPages()V
    .registers 6

    .line 1
    iget-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mOnDragStartTime:J

    .line 3
    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isCalled(J)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mOnDragStartTime:J

    .line 16
    const/4 v0, 0x0

    .line 17
    move v1, v0

    .line 18
    :goto_11
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 23
    move-result v2

    .line 24
    if-ge v1, v2, :cond_45

    .line 26
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v2

    .line 38
    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_42

    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 50
    iget-boolean v4, v3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->resumed:Z

    .line 52
    if-nez v4, :cond_25

    .line 54
    iget-object v3, v3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 56
    if-eqz v3, :cond_25

    .line 58
    new-instance v4, Lmiuix/appcompat/app/floatingactivity/multiapp/a;

    .line 60
    invoke-direct {v4, v3, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/a;-><init>(Lmiuix/appcompat/app/AppCompatActivity;I)V

    .line 63
    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 66
    goto :goto_25

    .line 67
    :cond_42
    add-int/lit8 v1, v1, 0x1

    .line 69
    goto :goto_11

    .line 70
    :cond_45
    return-void
.end method

.method private hideTopBgs(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/ArrayList;

    .line 9
    if-eqz p1, :cond_2b

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_2b

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 24
    iget v1, v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 32
    iget-object v2, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 34
    if-eqz v2, :cond_28

    .line 36
    if-eqz v1, :cond_28

    .line 38
    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingDimBackground()V

    .line 41
    :cond_28
    add-int/lit8 v0, v0, 0x1

    .line 43
    goto :goto_b

    .line 44
    :cond_2b
    return-void
.end method

.method private init(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/FloatingHelperFactory;->getFloatingHelperType(Lmiuix/appcompat/app/AppCompatActivity;)I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->stashActivity(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 11
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->registerActivityToService(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 14
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 17
    move-result-object p2

    .line 18
    new-instance p3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;

    .line 20
    invoke-direct {p3, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 23
    invoke-virtual {p2, p3}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 26
    iget-boolean p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mEnableDragToDismiss:Z

    .line 28
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->setEnableSwipToDismiss(Z)V

    .line 31
    new-instance p2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;

    .line 33
    invoke-direct {p2, p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;-><init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 36
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V

    .line 39
    return-void
.end method

.method public static install(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/Intent;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->install(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static install(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    .line 2
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isFromMultiApp(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3
    invoke-static {p0, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->install(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    return-void

    .line 4
    :cond_a
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    if-nez v0, :cond_2a

    .line 5
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    invoke-direct {v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;-><init>()V

    sput-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 6
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mAllowedPackageList:[Ljava/lang/String;

    if-nez v0, :cond_25

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$array;->multi_floating_package_allow_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mAllowedPackageList:[Ljava/lang/String;

    .line 8
    :cond_25
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->bindService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 9
    :cond_2a
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    invoke-direct {v0, p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->init(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private invokeRegister(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;)V
    .registers 5

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    .line 6
    if-eqz v0, :cond_4e

    .line 8
    :try_start_7
    iget-object v1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    .line 10
    iget v2, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    .line 12
    invoke-virtual {p0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getIdentity(Ljava/lang/Object;I)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->registerServiceNotify(Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;Ljava/lang/String;)I

    .line 19
    iget-object v0, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    .line 21
    iget v1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    .line 23
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getIdentity(Ljava/lang/Object;I)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    iget v1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    .line 29
    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->updateServerActivityIndex(Ljava/lang/String;I)V

    .line 32
    iget-boolean v0, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->register:Z

    .line 34
    if-nez v0, :cond_2a

    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->register:Z

    .line 39
    iget v0, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    .line 41
    iput v0, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotifyIndex:I

    .line 43
    :cond_2a
    iget-object v0, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->pendingTasks:Ljava/util/List;

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v0

    .line 49
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_40

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/Runnable;

    .line 61
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 64
    goto :goto_30

    .line 65
    :cond_40
    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->pendingTasks:Ljava/util/List;

    .line 67
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_45} :catch_46

    .line 70
    goto :goto_4e

    .line 71
    :catch_46
    move-exception p1

    .line 72
    const-string v0, "MFloatingSwitcher"

    .line 74
    const-string v1, "catch register service notify exception"

    .line 76
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :cond_4e
    :goto_4e
    return-void
.end method

.method private isActivityStashed(Lmiuix/appcompat/app/AppCompatActivity;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, v1, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_13

    .line 19
    const/4 v0, 0x1

    .line 20
    :cond_13
    return v0
.end method

.method private isCalled(J)Z
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p1

    .line 6
    const-wide/16 p1, 0x64

    .line 8
    cmp-long p1, v0, p1

    .line 10
    if-gtz p1, :cond_d

    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    :goto_e
    return p1
.end method

.method public static isFromMultiApp(Landroid/content/Intent;)Z
    .registers 2

    .line 1
    const-string v0, "floating_service_pkg"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1a

    .line 13
    const-string v0, "floating_service_path"

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_1a

    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p0, 0x0

    .line 28
    :goto_1b
    return p0
.end method

.method private isPackageAllowed(Ljava/lang/String;)Z
    .registers 7

    .line 1
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mAllowedPackageList:[Ljava/lang/String;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_5
    if-ge v3, v1, :cond_14

    .line 8
    aget-object v4, v0, v3

    .line 10
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_11

    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_11
    add-int/lit8 v3, v3, 0x1

    .line 20
    goto :goto_5

    .line 21
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v1, "Package is not allowed:"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string p1, ". Please contact the MIUIX developer!"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const-string v0, "MFloatingSwitcher"

    .line 45
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return v2
.end method

.method private notifyService(I)Landroid/os/Bundle;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private notifyService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    const-string v1, "MFloatingSwitcher"

    if-eqz v0, :cond_12

    .line 3
    :try_start_6
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->callServiceMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    const-string p2, "catch call service method exception"

    .line 4
    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :cond_12
    const-string p1, "ifloatingservice is null"

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    const/4 p1, 0x0

    return-object p1
.end method

.method private onDragEnd()V
    .registers 6

    .line 1
    iget-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mOnDragEndTime:J

    .line 3
    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isCalled(J)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mOnDragEndTime:J

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_10
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 22
    move-result v1

    .line 23
    if-ge v0, v1, :cond_45

    .line 25
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v1

    .line 37
    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_42

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 49
    iget-boolean v3, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->resumed:Z

    .line 51
    if-nez v3, :cond_24

    .line 53
    iget-object v2, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 55
    if-eqz v2, :cond_24

    .line 57
    new-instance v3, Lmiuix/appcompat/app/floatingactivity/multiapp/a;

    .line 59
    const/4 v4, 0x1

    .line 60
    invoke-direct {v3, v2, v4}, Lmiuix/appcompat/app/floatingactivity/multiapp/a;-><init>(Lmiuix/appcompat/app/AppCompatActivity;I)V

    .line 63
    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 66
    goto :goto_24

    .line 67
    :cond_42
    add-int/lit8 v0, v0, 0x1

    .line 69
    goto :goto_10

    .line 70
    :cond_45
    return-void
.end method

.method public static onSaveInstanceState(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_11

    .line 13
    const-string p1, "floating_switcher_saved_key"

    .line 15
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    :cond_11
    return-void
.end method

.method private registerActivityToService(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1a

    .line 15
    iget-object v1, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    .line 17
    if-nez v1, :cond_1a

    .line 19
    new-instance v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    .line 21
    invoke-direct {v1, p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;-><init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 24
    iput-object v1, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    .line 26
    goto :goto_21

    .line 27
    :cond_1a
    if-eqz v0, :cond_21

    .line 29
    iget-object v1, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    .line 31
    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->resetAppCompatActivity(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 34
    :cond_21
    :goto_21
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->invokeRegister(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;)V

    .line 37
    return-void
.end method

.method private setIFloatingService(Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mServiceConnected:Z

    .line 6
    return-void
.end method

.method private shouldAllFloatingClose(II)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x4

    .line 3
    if-eq p1, v1, :cond_7

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne p1, v1, :cond_f

    .line 8
    :cond_7
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getServicePageCount(I)I

    .line 11
    move-result p1

    .line 12
    if-gt p1, v0, :cond_e

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :cond_f
    :goto_f
    return v0
.end method

.method private stashActivity(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 9

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isActivityStashed(Lmiuix/appcompat/app/AppCompatActivity;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_70

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p3, :cond_12

    .line 10
    const-string v0, "floating_switcher_saved_key"

    .line 12
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 15
    move-result-object p3

    .line 16
    move-object v0, p3

    .line 17
    check-cast v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 19
    :cond_12
    const/4 p3, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-nez v0, :cond_29

    .line 23
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 25
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;-><init>(Z)V

    .line 28
    if-nez p2, :cond_21

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 33
    move-result-object p2

    .line 34
    :cond_21
    const-string v2, "service_page_index"

    .line 36
    invoke-virtual {p2, v2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 39
    move-result p2

    .line 40
    iput p2, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    .line 42
    :cond_29
    iput-object p1, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    .line 47
    move-result p2

    .line 48
    iput p2, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    .line 50
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 53
    move-result-object p2

    .line 54
    iput-object p2, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    .line 56
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 58
    iget v2, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    .line 60
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Ljava/util/ArrayList;

    .line 66
    if-nez p2, :cond_4f

    .line 68
    new-instance p2, Ljava/util/ArrayList;

    .line 70
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 75
    iget v3, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    .line 77
    invoke-virtual {v2, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    :cond_4f
    iget v2, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    .line 82
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result v3

    .line 86
    sub-int/2addr v3, v1

    .line 87
    :goto_56
    if-ltz v3, :cond_68

    .line 89
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 95
    iget v4, v4, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    .line 97
    if-le v2, v4, :cond_65

    .line 99
    add-int/lit8 p3, v3, 0x1

    .line 101
    goto :goto_68

    .line 102
    :cond_65
    add-int/lit8 v3, v3, -0x1

    .line 104
    goto :goto_56

    .line 105
    :cond_68
    :goto_68
    invoke-virtual {p2, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 108
    iget p2, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    .line 110
    invoke-static {p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->markedPageIndex(Lmiuix/appcompat/app/AppCompatActivity;I)V

    .line 113
    :cond_70
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    .line 116
    move-result p1

    .line 117
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->hideTopBgs(I)V

    .line 120
    return-void
.end method

.method private unRegisterActivityFromService(ILjava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    .line 3
    if-eqz v0, :cond_22

    .line 5
    :try_start_4
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_22

    .line 11
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    .line 13
    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p2, p1, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->unregisterServiceNotify(Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    .line 26
    goto :goto_22

    .line 27
    :catch_1a
    move-exception p1

    .line 28
    const-string p2, "MFloatingSwitcher"

    .line 30
    const-string v0, "catch unregister service notify exception"

    .line 32
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :cond_22
    :goto_22
    return-void
.end method

.method private unRegisterAll()V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2c

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_29

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 34
    iget v3, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->taskId:I

    .line 36
    iget-object v2, v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    .line 38
    invoke-direct {p0, v3, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->unRegisterActivityFromService(ILjava/lang/String;)V

    .line 41
    goto :goto_15

    .line 42
    :cond_29
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_2c
    return-void
.end method

.method private unbindService(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mServiceConnected:Z

    .line 3
    if-eqz v0, :cond_10

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mServiceConnected:Z

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 17
    :cond_10
    return-void
.end method

.method private updateServerActivityIndex(Ljava/lang/String;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    :try_start_4
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->upDateRemoteActivityInfo(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 8
    goto :goto_10

    .line 9
    :catch_8
    move-exception p1

    .line 10
    const-string p2, "MFloatingSwitcher"

    .line 12
    const-string v0, "catch updateServerActivityIndex service notify exception"

    .line 14
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    :cond_10
    :goto_10
    return-void
.end method


# virtual methods
.method public checkBg(ILjava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_11

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 16
    if-gt v0, v1, :cond_17

    .line 18
    :cond_11
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getServicePageCount(I)I

    .line 21
    move-result v0

    .line 22
    if-le v0, v1, :cond_28

    .line 24
    :cond_17
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_28

    .line 30
    iget p2, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotifyIndex:I

    .line 32
    if-lez p2, :cond_28

    .line 34
    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 36
    if-eqz p1, :cond_28

    .line 38
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingDimBackground()V

    .line 41
    :cond_28
    return-void
.end method

.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    .line 9
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 12
    :cond_b
    return-void
.end method

.method public getActivity(ILjava/lang/String;)Lmiuix/appcompat/app/AppCompatActivity;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 9
    return-object p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public getCurrentPageCount(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/ArrayList;

    .line 9
    if-eqz p1, :cond_f

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public getIdentity(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 9
    move-result p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string p1, ":"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public getLastActivityPanel()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_c

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/View;

    .line 13
    :goto_c
    return-object v0
.end method

.method public getServicePageCount(I)I
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string v1, "key_task_id"

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    const/4 v1, 0x6

    .line 12
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1a

    .line 18
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 25
    move-result v0

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/util/ArrayList;

    .line 36
    if-eqz p1, :cond_3e

    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p1

    .line 42
    :cond_29
    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3e

    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 54
    iget v1, v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    .line 56
    add-int/lit8 v2, v1, 0x1

    .line 58
    if-le v2, v0, :cond_29

    .line 60
    add-int/lit8 v0, v1, 0x1

    .line 62
    goto :goto_29

    .line 63
    :cond_3e
    return v0
.end method

.method public isAboveActivityFinishing(ILjava/lang/String;)Z
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_8

    .line 8
    return v0

    .line 9
    :cond_8
    new-instance v1, Landroid/os/Bundle;

    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    iget-object p2, p2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 19
    move-result p2

    .line 20
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    const-string v2, "key_request_identity"

    .line 26
    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string p2, "key_task_id"

    .line 31
    invoke-virtual {v1, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 34
    const/16 p1, 0x9

    .line 36
    invoke-direct {p0, p1, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_32

    .line 42
    const-string p2, "check_finishing"

    .line 44
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_32

    .line 50
    const/4 v0, 0x1

    .line 51
    :cond_32
    return v0
.end method

.method public isActivityOpenEnterAnimExecuted(ILjava/lang/String;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    iget-boolean p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public isServiceAvailable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public markActivityOpenEnterAnimExecutedInternal(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    .line 10
    :cond_9
    return-void
.end method

.method public notifyPreviousActivitySlide(ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance p2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$2;

    .line 10
    invoke-direct {p2, p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$2;-><init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;)V

    .line 13
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isServiceAvailable()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_16

    .line 19
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 22
    goto :goto_1b

    .line 23
    :cond_16
    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->pendingTasks:Ljava/util/List;

    .line 25
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :goto_1b
    return-void
.end method

.method public postEnterAnimationTask(ILjava/lang/String;Ljava/lang/Runnable;)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isActivityOpenEnterAnimExecuted(ILjava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getCurrentPageCount(I)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-gt v0, v1, :cond_14

    .line 15
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getServicePageCount(I)I

    .line 18
    move-result v0

    .line 19
    if-le v0, v1, :cond_17

    .line 21
    :cond_14
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->markActivityOpenEnterAnimExecutedInternal(ILjava/lang/String;)V

    .line 24
    :cond_17
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isServiceAvailable()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_21

    .line 30
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 33
    goto :goto_2c

    .line 34
    :cond_21
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_2c

    .line 40
    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->pendingTasks:Ljava/util/List;

    .line 42
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_35

    .line 7
    iget-object v1, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 9
    if-eqz v1, :cond_35

    .line 11
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->unRegisterActivityFromService(ILjava/lang/String;)V

    .line 14
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Ljava/util/ArrayList;

    .line 22
    if-eqz p2, :cond_25

    .line 24
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_25

    .line 33
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 38
    :cond_25
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 40
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_35

    .line 46
    iget-object p1, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 48
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->unbindService(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->clear()V

    .line 54
    :cond_35
    return-void
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;ILjava/lang/String;)V
    .registers 11

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-direct {p0, p2, p3}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 7
    move-result-object p3

    .line 8
    if-nez p3, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 22
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mIFloatingService:Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 31
    move-result v4

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 35
    move-result p1

    .line 36
    iget-object p3, p3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->serviceNotify:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;

    .line 38
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    .line 41
    move-result p3

    .line 42
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    move-object v0, v1

    .line 47
    move-object v1, v3

    .line 48
    move v3, v4

    .line 49
    move v4, p1

    .line 50
    move v6, p2

    .line 51
    invoke-static/range {v0 .. v6}, Lmiuix/appcompat/app/floatingactivity/MemoryFileUtil;->sendToFdServer(Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;[BIIILjava/lang/String;I)V

    .line 54
    return-void
.end method

.method public setLastActivityPanel(Landroid/view/View;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    .line 8
    return-void
.end method

.method public updateResumeState(ILjava/lang/String;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivitySpec(ILjava/lang/String;)Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_8

    .line 7
    iput-boolean p3, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->resumed:Z

    .line 9
    :cond_8
    return-void
.end method
