.class public Lmiuix/animation/ViewTarget;
.super Lmiuix/animation/IAnimTarget;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/ViewTarget$LifecycleCallbacks;,
        Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/IAnimTarget<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field public static final sCreator:Lmiuix/animation/ITargetCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/ITargetCreator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

.field private mViewLifecyclerObserver:Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiuix/animation/ViewTarget$1;

    .line 3
    invoke-direct {v0}, Lmiuix/animation/ViewTarget$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/animation/ViewTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Lmiuix/animation/IAnimTarget;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiuix/animation/ViewTarget;->registerLifecycle(Landroid/content/Context;)Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lmiuix/animation/ViewTarget$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/ViewTarget;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$100(Lmiuix/animation/ViewTarget;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/ViewTarget;->initLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lmiuix/animation/ViewTarget;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/animation/ViewTarget;->cleanViewTarget()V

    .line 4
    return-void
.end method

.method private cleanViewTarget()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/Context;

    .line 11
    invoke-direct {p0, v0}, Lmiuix/animation/ViewTarget;->unRegisterLifecycle(Landroid/content/Context;)Z

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lmiuix/animation/ViewTarget;->setCorner(F)V

    .line 18
    const/4 v0, 0x1

    .line 19
    new-array v0, v0, [Lmiuix/animation/ViewTarget;

    .line 21
    const/4 v1, 0x0

    .line 22
    aput-object p0, v0, v1

    .line 24
    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method private executeTask(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 4
    goto :goto_1b

    .line 5
    :catch_4
    move-exception p1

    .line 6
    const-string v0, "ViewTarget.executeTask failed, "

    .line 8
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "miuix_anim"

    .line 25
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :goto_1b
    return-void
.end method

.method private initLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 7
    if-eqz v1, :cond_47

    .line 9
    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_init_layout:I

    .line 11
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 21
    move-result v2

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 25
    move-result v3

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 29
    move-result v4

    .line 30
    const/16 v5, 0x8

    .line 32
    if-ne v4, v5, :cond_25

    .line 34
    const/4 v5, 0x4

    .line 35
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :cond_25
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 41
    move-result v5

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 45
    move-result v6

    .line 46
    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 52
    move-result v5

    .line 53
    add-int/2addr v5, v2

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 57
    move-result v6

    .line 58
    add-int/2addr v6, v3

    .line 59
    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 62
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 65
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 68
    const/4 p2, 0x0

    .line 69
    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 72
    :cond_47
    return-void
.end method

.method private registerLifecycle(Landroid/content/Context;)Z
    .registers 5

    .line 1
    :goto_0
    if-eqz p1, :cond_56

    .line 3
    instance-of v0, p1, Landroidx/lifecycle/m;

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_25

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 15
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewLifecyclerObserver:Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;

    .line 17
    if-nez v0, :cond_19

    .line 19
    new-instance v0, Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;

    .line 21
    invoke-direct {v0, p0}, Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;-><init>(Lmiuix/animation/ViewTarget;)V

    .line 24
    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mViewLifecyclerObserver:Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;

    .line 26
    :cond_19
    check-cast p1, Landroidx/lifecycle/m;

    .line 28
    invoke-interface {p1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewLifecyclerObserver:Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;

    .line 34
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 37
    return v1

    .line 38
    :cond_25
    instance-of v0, p1, Landroid/app/Activity;

    .line 40
    if-eqz v0, :cond_49

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    const/16 v2, 0x1d

    .line 46
    if-lt v0, v2, :cond_56

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 53
    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 55
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    .line 57
    if-nez v0, :cond_41

    .line 59
    new-instance v0, Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    .line 61
    invoke-direct {v0, p0}, Lmiuix/animation/ViewTarget$LifecycleCallbacks;-><init>(Lmiuix/animation/ViewTarget;)V

    .line 64
    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    .line 66
    :cond_41
    check-cast p1, Landroid/app/Activity;

    .line 68
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    .line 70
    invoke-static {p1, v0}, Lf1/x;->u(Landroid/app/Activity;Lmiuix/animation/ViewTarget$LifecycleCallbacks;)V

    .line 73
    return v1

    .line 74
    :cond_49
    instance-of v0, p1, Landroid/content/ContextWrapper;

    .line 76
    if-eqz v0, :cond_54

    .line 78
    check-cast p1, Landroid/content/ContextWrapper;

    .line 80
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 83
    move-result-object p1

    .line 84
    goto :goto_0

    .line 85
    :cond_54
    const/4 p1, 0x0

    .line 86
    goto :goto_0

    .line 87
    :cond_56
    const/4 p1, 0x0

    .line 88
    return p1
.end method

.method private setCorner(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    if-eqz v0, :cond_13

    .line 11
    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_hover_corners:I

    .line 13
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 20
    :cond_13
    return-void
.end method

.method private unRegisterLifecycle(Landroid/content/Context;)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Landroidx/lifecycle/m;

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1c

    .line 11
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewLifecyclerObserver:Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;

    .line 13
    if-eqz v0, :cond_19

    .line 15
    check-cast p1, Landroidx/lifecycle/m;

    .line 17
    invoke-interface {p1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewLifecyclerObserver:Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;

    .line 23
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/l;)V

    .line 26
    :cond_19
    iput-object v3, p0, Lmiuix/animation/ViewTarget;->mViewLifecyclerObserver:Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;

    .line 28
    return v2

    .line 29
    :cond_1c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    const/16 v4, 0x1d

    .line 33
    if-lt v1, v4, :cond_32

    .line 35
    instance-of v1, p1, Landroid/app/Activity;

    .line 37
    if-eqz v1, :cond_32

    .line 39
    iget-object v1, p0, Lmiuix/animation/ViewTarget;->mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    .line 41
    if-eqz v1, :cond_32

    .line 43
    check-cast p1, Landroid/app/Activity;

    .line 45
    invoke-static {p1, v1}, Lf1/x;->j(Landroid/app/Activity;Lmiuix/animation/ViewTarget$LifecycleCallbacks;)V

    .line 48
    iput-object v3, p0, Lmiuix/animation/ViewTarget;->mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    .line 50
    return v2

    .line 51
    :cond_32
    return v0
.end method


# virtual methods
.method public allowAnimRun()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-static {v0}, Lmiuix/animation/Folme;->isInDraggingState(Landroid/view/View;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public clean()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/Context;

    .line 11
    invoke-direct {p0, v0}, Lmiuix/animation/ViewTarget;->unRegisterLifecycle(Landroid/content/Context;)Z

    .line 14
    :cond_d
    return-void
.end method

.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    if-eqz v0, :cond_30

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x8

    .line 17
    if-ne v1, v2, :cond_2d

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_2d

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_24

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2d

    .line 37
    :cond_24
    new-instance v1, Lmiuix/animation/ViewTarget$2;

    .line 39
    invoke-direct {v1, p0, v0, p1}, Lmiuix/animation/ViewTarget$2;-><init>(Lmiuix/animation/ViewTarget;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 42
    invoke-virtual {p0, v1}, Lmiuix/animation/ViewTarget;->post(Ljava/lang/Runnable;)V

    .line 45
    goto :goto_30

    .line 46
    :cond_2d
    invoke-virtual {p0, p1}, Lmiuix/animation/ViewTarget;->post(Ljava/lang/Runnable;)V

    .line 49
    :cond_30
    :goto_30
    return-void
.end method

.method public getLocationOnScreen([I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    if-nez v0, :cond_14

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    const v2, 0x7fffffff

    .line 16
    aput v2, p1, v1

    .line 18
    aput v2, p1, v0

    .line 20
    goto :goto_17

    .line 21
    :cond_14
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 24
    :goto_17
    return-void
.end method

.method public getTargetObject()Landroid/view/View;
    .registers 2

    .line 2
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic getTargetObject()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public onFrameEnd(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    if-eqz p1, :cond_21

    .line 11
    if-eqz v0, :cond_21

    .line 13
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_set_height:I

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 19
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_set_width:I

    .line 21
    invoke-virtual {v0, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_view_hover_corners:I

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 34
    :cond_21
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v1, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 10
    invoke-virtual {v1}, Lmiuix/animation/internal/TargetHandler;->isInTargetThread()Z

    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_19

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_19

    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    invoke-direct {p0, p1}, Lmiuix/animation/ViewTarget;->executeTask(Ljava/lang/Runnable;)V

    .line 29
    :goto_1c
    return-void
.end method

.method public shouldUseIntValue(Lmiuix/animation/property/FloatProperty;)Z
    .registers 3

    .line 1
    sget-object v0, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 3
    if-eq p1, v0, :cond_16

    .line 5
    sget-object v0, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 7
    if-eq p1, v0, :cond_16

    .line 9
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCROLL_X:Lmiuix/animation/property/ViewProperty;

    .line 11
    if-eq p1, v0, :cond_16

    .line 13
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCROLL_Y:Lmiuix/animation/property/ViewProperty;

    .line 15
    if-ne p1, v0, :cond_11

    .line 17
    goto :goto_16

    .line 18
    :cond_11
    invoke-super {p0, p1}, Lmiuix/animation/IAnimTarget;->shouldUseIntValue(Lmiuix/animation/property/FloatProperty;)Z

    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_16
    :goto_16
    const/4 p1, 0x1

    .line 24
    return p1
.end method
