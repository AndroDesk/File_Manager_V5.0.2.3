.class public Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;
.super Ljava/lang/Object;
.source "FloatingActivitySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;,
        Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;
    }
.end annotation


# static fields
.field private static final SAVED_FLOATING_INFO_KEY:Ljava/lang/String; = "miuix_floating_activity_info_key"

.field private static final TAG:Ljava/lang/String; = "FloatingActivity"

.field private static final mActivityInfoStack:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;


# instance fields
.field private final mActivityCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEnableDragToDismiss:Z

.field private mLastActivityPanel:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mWillDestroyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mWillDestroyList:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method public static synthetic access$1000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mWillDestroyList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100()Ljava/util/HashMap;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public static synthetic access$500(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->closeTopActivity(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mEnableDragToDismiss:Z

    .line 3
    return p0
.end method

.method public static synthetic access$700(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Landroid/util/SparseArray;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->hideBehindPages(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->showBehindPages(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private closeTopActivity(Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 9
    if-eqz p1, :cond_2d

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 13
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    .line 16
    move-result p1

    .line 17
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/util/ArrayList;

    .line 23
    if-eqz p1, :cond_2d

    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_2d

    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result v0

    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 37
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    .line 43
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    .line 46
    :cond_2d
    return-void
.end method

.method private execEnterNormalRom(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_11

    .line 14
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->clearFloatingWindowAnim(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 17
    goto :goto_14

    .line 18
    :cond_11
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->execFloatingWindowEnterAnimRomNormal(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 21
    :goto_14
    return-void
.end method

.method public static getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 3
    return-object v0
.end method

.method private static getOrCreateActivitySpec(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;
    .registers 9

    .line 1
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 13
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 16
    move-result-object v1

    .line 17
    if-eqz v0, :cond_13

    .line 19
    goto :goto_33

    .line 20
    :cond_13
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    if-nez v1, :cond_21

    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_25

    .line 34
    :cond_21
    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    .line 37
    move-result v1

    .line 38
    :goto_25
    move v4, v1

    .line 39
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 46
    move-result v6

    .line 47
    const/4 v7, 0x0

    .line 48
    move-object v2, v0

    .line 49
    invoke-direct/range {v2 .. v7}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 52
    :goto_33
    return-object v0
.end method

.method private hideBehindPages(Ljava/lang/String;)V
    .registers 6

    .line 1
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 9
    if-eqz v0, :cond_44

    .line 11
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 13
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    .line 16
    move-result v0

    .line 17
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/ArrayList;

    .line 23
    const/4 v1, -0x1

    .line 24
    if-eqz v0, :cond_34

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v3

    .line 31
    if-ge v2, v3, :cond_34

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lmiuix/appcompat/app/AppCompatActivity;

    .line 39
    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_31

    .line 49
    move v1, v2

    .line 50
    :cond_31
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_1a

    .line 53
    :cond_34
    add-int/lit8 v1, v1, -0x1

    .line 55
    :goto_36
    if-ltz v1, :cond_44

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    .line 63
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingBrightPanel()V

    .line 66
    add-int/lit8 v1, v1, -0x1

    .line 68
    goto :goto_36

    .line 69
    :cond_44
    return-void
.end method

.method private hideTopBgs(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/util/ArrayList;

    .line 13
    if-eqz p1, :cond_3b

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, -0x1

    .line 21
    if-ge v0, v1, :cond_26

    .line 23
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lmiuix/appcompat/app/AppCompatActivity;

    .line 29
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_23

    .line 35
    goto :goto_27

    .line 36
    :cond_23
    add-int/lit8 v0, v0, 0x1

    .line 38
    goto :goto_f

    .line 39
    :cond_26
    move v0, v2

    .line 40
    :goto_27
    if-eq v0, v2, :cond_3b

    .line 42
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 47
    move-result v1

    .line 48
    if-ge v0, v1, :cond_3b

    .line 50
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lmiuix/appcompat/app/AppCompatActivity;

    .line 56
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingDimBackground()V

    .line 59
    goto :goto_29

    .line 60
    :cond_3b
    return-void
.end method

.method private init(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .registers 4

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
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->stashActivity(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 14
    move-result-object p2

    .line 15
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;

    .line 17
    invoke-direct {v0, p1}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 20
    invoke-virtual {p2, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 23
    iget-boolean p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mEnableDragToDismiss:Z

    .line 25
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->setEnableSwipToDismiss(Z)V

    .line 28
    new-instance p2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;

    .line 30
    invoke-direct {p2, p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;-><init>(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 33
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V

    .line 36
    return-void
.end method

.method private insertActivityByIndex(Ljava/util/ArrayList;ILmiuix/appcompat/app/AppCompatActivity;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;I",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_6
    const/4 v1, 0x0

    .line 8
    if-ltz v0, :cond_29

    .line 10
    sget-object v2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lmiuix/appcompat/app/AppCompatActivity;

    .line 18
    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 28
    if-eqz v2, :cond_21

    .line 30
    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$400(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    .line 33
    move-result v1

    .line 34
    :cond_21
    if-le p2, v1, :cond_26

    .line 36
    add-int/lit8 v1, v0, 0x1

    .line 38
    goto :goto_29

    .line 39
    :cond_26
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_6

    .line 42
    :cond_29
    :goto_29
    invoke-virtual {p1, v1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 45
    return-void
.end method

.method public static install(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->install(Lmiuix/appcompat/app/AppCompatActivity;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static install(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->install(Lmiuix/appcompat/app/AppCompatActivity;ZLandroid/os/Bundle;)V

    return-void
.end method

.method private static install(Lmiuix/appcompat/app/AppCompatActivity;ZLandroid/os/Bundle;)V
    .registers 4

    .line 3
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    if-nez v0, :cond_d

    .line 4
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-direct {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;-><init>()V

    sput-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 5
    iput-boolean p1, v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mEnableDragToDismiss:Z

    .line 6
    :cond_d
    sget-object p1, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-direct {p1, p0, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->init(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method private isActivityStashed(Lmiuix/appcompat/app/AppCompatActivity;)Z
    .registers 3

    .line 1
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_e

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    return p1
.end method

.method public static onSaveInstanceState(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    if-eqz p1, :cond_11

    .line 9
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getOrCreateActivitySpec(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 12
    move-result-object p0

    .line 13
    const-string v0, "miuix_floating_activity_info_key"

    .line 15
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    :cond_11
    return-void
.end method

.method private recoverFromSavedInstanceState(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;
    .registers 10

    .line 1
    const-string v0, "miuix_floating_activity_info_key"

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 9
    if-nez p2, :cond_29

    .line 11
    const-string p2, "FloatingActivity"

    .line 13
    const-string v0, "FloatingActivitySwitcher restore a full ActivitySpec instance with savedInstanceState fail, Check if you have replaced the theme in the float window !"

    .line 15
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance p2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    .line 36
    move-result v5

    .line 37
    const/4 v6, 0x0

    .line 38
    move-object v1, p2

    .line 39
    invoke-direct/range {v1 .. v6}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 42
    :cond_29
    return-object p2
.end method

.method private showBehindPages(Ljava/lang/String;)V
    .registers 6

    .line 1
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 9
    if-eqz v0, :cond_44

    .line 11
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 13
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    .line 16
    move-result v0

    .line 17
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/ArrayList;

    .line 23
    const/4 v1, -0x1

    .line 24
    if-eqz v0, :cond_34

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v3

    .line 31
    if-ge v2, v3, :cond_34

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lmiuix/appcompat/app/AppCompatActivity;

    .line 39
    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_31

    .line 49
    move v1, v2

    .line 50
    :cond_31
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_1a

    .line 53
    :cond_34
    add-int/lit8 v1, v1, -0x1

    .line 55
    :goto_36
    if-ltz v1, :cond_44

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    .line 63
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->showFloatingBrightPanel()V

    .line 66
    add-int/lit8 v1, v1, -0x1

    .line 68
    goto :goto_36

    .line 69
    :cond_44
    return-void
.end method

.method private stashActivity(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V
    .registers 10

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->isActivityStashed(Lmiuix/appcompat/app/AppCompatActivity;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_77

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    if-nez v1, :cond_1e

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    :cond_1e
    if-eqz p2, :cond_47

    .line 33
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->recoverFromSavedInstanceState(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-static {p2, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$202(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {p2, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$302(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$400(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    .line 58
    move-result v0

    .line 59
    invoke-direct {p0, v1, v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->insertActivityByIndex(Ljava/util/ArrayList;ILmiuix/appcompat/app/AppCompatActivity;)V

    .line 62
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 64
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    goto :goto_77

    .line 72
    :cond_47
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 78
    move-result-object p2

    .line 79
    new-instance v6, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    if-nez p2, :cond_5c

    .line 91
    const/4 p2, 0x0

    .line 92
    goto :goto_60

    .line 93
    :cond_5c
    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    .line 96
    move-result p2

    .line 97
    :goto_60
    move v2, p2

    .line 98
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    .line 105
    move-result v4

    .line 106
    const/4 v5, 0x0

    .line 107
    move-object v0, v6

    .line 108
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 111
    sget-object p2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 113
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_77
    :goto_77
    sget-object p2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 122
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-result-object p2

    .line 130
    check-cast p2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 132
    if-eqz p2, :cond_8c

    .line 134
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$400(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    .line 137
    move-result p2

    .line 138
    invoke-static {p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->markedPageIndex(Lmiuix/appcompat/app/AppCompatActivity;I)V

    .line 141
    :cond_8c
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->execEnterNormalRom(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 144
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->hideTopBgs(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 147
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    .line 14
    sput-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 16
    return-void
.end method

.method public closeAllFloatingPage(Ljava/lang/String;)V
    .registers 6

    .line 1
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 9
    if-eqz v0, :cond_47

    .line 11
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 13
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    .line 16
    move-result v0

    .line 17
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/ArrayList;

    .line 23
    if-eqz v0, :cond_47

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 31
    :goto_1e
    if-ltz v1, :cond_47

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lmiuix/appcompat/app/AppCompatActivity;

    .line 39
    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_44

    .line 49
    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingBrightPanel()V

    .line 52
    iget-object v3, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mWillDestroyList:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    sget-object v3, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 62
    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_44
    add-int/lit8 v1, v1, -0x1

    .line 71
    goto :goto_1e

    .line 72
    :cond_47
    return-void
.end method

.method public getActivity(Ljava/lang/String;)Lmiuix/appcompat/app/AppCompatActivity;
    .registers 3

    .line 4
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    if-eqz v0, :cond_13

    .line 5
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivity(Ljava/lang/String;I)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public getActivity(Ljava/lang/String;I)Lmiuix/appcompat/app/AppCompatActivity;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_25

    .line 2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method public getActivityCache()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 3
    return-object v0
.end method

.method public getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I
    .registers 4

    .line 1
    if-eqz p1, :cond_15

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    if-eqz v0, :cond_15

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_15
    const/4 p1, -0x1

    .line 23
    return p1
.end method

.method public getActivityList(I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/ArrayList;

    .line 9
    return-object p1
.end method

.method public getLastActivityPanel()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

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

.method public getPreviousActivity(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/AppCompatActivity;
    .registers 6

    .line 1
    if-eqz p1, :cond_2d

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    if-eqz v0, :cond_15

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 20
    move-result p1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 p1, -0x1

    .line 23
    :goto_16
    if-lez p1, :cond_2d

    .line 25
    add-int/lit8 p1, p1, -0x1

    .line 27
    move v1, p1

    .line 28
    :goto_1b
    if-ltz v1, :cond_2d

    .line 30
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lmiuix/appcompat/app/AppCompatActivity;

    .line 36
    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2a

    .line 42
    return-object v2

    .line 43
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    .line 45
    goto :goto_1b

    .line 46
    :cond_2d
    const/4 p1, 0x0

    .line 47
    return-object p1
.end method

.method public isActivityOpenEnterAnimExecuted(Lmiuix/appcompat/app/AppCompatActivity;)Z
    .registers 3

    .line 1
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 13
    if-eqz p1, :cond_16

    .line 15
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$100(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_16

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    :goto_17
    return p1
.end method

.method public markActivityOpenEnterAnimExecutedInternal(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 1
    sget-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 13
    if-eqz p1, :cond_12

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-static {p1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$102(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;Z)Z

    .line 19
    :cond_12
    return-void
.end method

.method public remove(Ljava/lang/String;I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    if-eqz v0, :cond_38

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 17
    :goto_10
    if-ltz v1, :cond_2d

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lmiuix/appcompat/app/AppCompatActivity;

    .line 25
    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_25

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    :cond_25
    iget-object v3, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mWillDestroyList:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v1, v1, -0x1

    .line 45
    goto :goto_10

    .line 46
    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_38

    .line 52
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 57
    :cond_38
    sget-object p2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;

    .line 59
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;

    .line 64
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_48

    .line 70
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->clear()V

    .line 73
    :cond_48
    return-void
.end method

.method public setLastActivityPanel(Landroid/view/View;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;

    .line 8
    return-void
.end method
