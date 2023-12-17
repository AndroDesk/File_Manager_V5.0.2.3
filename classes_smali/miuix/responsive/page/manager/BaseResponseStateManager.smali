.class public abstract Lmiuix/responsive/page/manager/BaseResponseStateManager;
.super Lmiuix/responsive/page/manager/BaseStateManager;
.source "BaseResponseStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;,
        Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;
    }
.end annotation


# instance fields
.field public mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

.field public mResponsiveMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;",
            ">;"
        }
    .end annotation
.end field

.field public mResponsiveMapChild:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lmiuix/responsive/map/ResponsiveViewSpec;",
            ">;>;"
        }
    .end annotation
.end field

.field public mResponsiveViewGroup:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/responsive/map/ResponsiveViewSpec;",
            ">;"
        }
    .end annotation
.end field

.field public mRootView:Landroid/view/View;

.field public mViewResponsives:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/responsive/interfaces/IViewResponsive;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/responsive/interfaces/IResponsive;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/responsive/page/manager/BaseStateManager;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

    .line 6
    invoke-interface {p1}, Lmiuix/responsive/interfaces/IResponsive;->getResponsiveSubject()Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    instance-of p1, p1, Landroidx/lifecycle/m;

    .line 12
    if-eqz p1, :cond_18

    .line 14
    iget-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

    .line 16
    invoke-interface {p1}, Lmiuix/responsive/interfaces/IResponsive;->getResponsiveSubject()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroidx/lifecycle/m;

    .line 22
    invoke-direct {p0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->registerLifecycle(Landroidx/lifecycle/m;)V

    .line 25
    :cond_18
    new-instance p1, Landroid/util/ArrayMap;

    .line 27
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 30
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    .line 32
    new-instance p1, Landroid/util/ArrayMap;

    .line 34
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 37
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    .line 39
    new-instance p1, Landroid/util/ArrayMap;

    .line 41
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 44
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    .line 46
    new-instance p1, Landroid/util/ArrayMap;

    .line 48
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 51
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mViewResponsives:Landroid/util/ArrayMap;

    .line 53
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 60
    move-result-object p1

    .line 61
    new-instance v0, Lmiuix/responsive/page/manager/BaseResponseStateManager$1;

    .line 63
    invoke-direct {v0, p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager$1;-><init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;)V

    .line 66
    invoke-static {p1, v0}, Lmiuix/responsive/wrapper/WrapperHelper;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 69
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->computeResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    .line 75
    return-void
.end method

.method public static synthetic access$000(Lmiuix/responsive/page/manager/BaseResponseStateManager;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->parseResponsiveViews(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private bindResponseView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    new-instance v1, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;

    invoke-direct {v1, p0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;-><init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;Landroid/view/View;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 4
    new-instance v0, Lmiuix/responsive/map/ResponsiveViewSpec;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Lmiuix/responsive/map/ResponsiveViewSpec;-><init>(I)V

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/responsive/map/ResponsiveViewSpec;->setEffectiveScreenOrientation(I)V

    .line 6
    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    return-void
.end method

.method private injectOnHierarchyChangeListener(Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/responsive/page/manager/BaseResponseStateManager$2;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager$2;-><init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 9
    return-void
.end method

.method private parseResponsiveViews(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mRootView:Landroid/view/View;

    .line 3
    if-nez v0, :cond_6

    .line 5
    iput-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mRootView:Landroid/view/View;

    .line 7
    :cond_6
    sget-object v0, Lmiuix/core/R$styleable;->ResponsiveSpec:[I

    .line 9
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p1

    .line 13
    const-string p3, "\\."

    .line 15
    invoke-virtual {p4, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    move-result-object p3

    .line 19
    array-length p3, p3

    .line 20
    const/4 v0, 0x1

    .line 21
    const/4 v1, -0x1

    .line 22
    if-le p3, v0, :cond_35

    .line 24
    invoke-static {p4}, Lmiuix/reflect/Reflects;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    move-result-object p3

    .line 28
    const-class p4, Lmiuix/responsive/interfaces/IViewResponsive;

    .line 30
    invoke-virtual {p4, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 33
    move-result p3

    .line 34
    if-eqz p3, :cond_35

    .line 36
    sget p3, Lmiuix/core/R$styleable;->ResponsiveSpec_android_id:I

    .line 38
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 41
    move-result p3

    .line 42
    if-eq p3, v1, :cond_35

    .line 44
    iget-object p4, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mViewResponsives:Landroid/util/ArrayMap;

    .line 46
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p3

    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p4, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_35
    sget p3, Lmiuix/core/R$styleable;->ResponsiveSpec_effectiveScreenOrientation:I

    .line 56
    const/4 p4, 0x0

    .line 57
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 60
    move-result p3

    .line 61
    if-eqz p3, :cond_58

    .line 63
    sget p2, Lmiuix/core/R$styleable;->ResponsiveSpec_android_id:I

    .line 65
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 68
    move-result p2

    .line 69
    if-eq p2, v1, :cond_8c

    .line 71
    new-instance p4, Lmiuix/responsive/map/ResponsiveViewSpec;

    .line 73
    invoke-direct {p4, p2}, Lmiuix/responsive/map/ResponsiveViewSpec;-><init>(I)V

    .line 76
    invoke-virtual {p4, p3}, Lmiuix/responsive/map/ResponsiveViewSpec;->setEffectiveScreenOrientation(I)V

    .line 79
    iget-object p3, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p3, p2, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    goto :goto_8c

    .line 89
    :cond_58
    sget p3, Lmiuix/core/R$styleable;->ResponsiveSpec_hideInScreenMode:I

    .line 91
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 94
    move-result p3

    .line 95
    if-eqz p3, :cond_8c

    .line 97
    iget-object p4, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    .line 99
    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    move-result-object p4

    .line 103
    check-cast p4, Ljava/util/List;

    .line 105
    if-nez p4, :cond_7c

    .line 107
    new-instance p4, Ljava/util/ArrayList;

    .line 109
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    .line 114
    invoke-virtual {v0, p2, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-direct {p0, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->bindResponseView(Landroid/view/View;)V

    .line 120
    check-cast p2, Landroid/view/ViewGroup;

    .line 122
    invoke-direct {p0, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->injectOnHierarchyChangeListener(Landroid/view/ViewGroup;)V

    .line 125
    :cond_7c
    sget p2, Lmiuix/core/R$styleable;->ResponsiveSpec_android_id:I

    .line 127
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 130
    move-result p2

    .line 131
    if-eq p2, v1, :cond_8c

    .line 133
    new-instance v0, Lmiuix/responsive/map/ResponsiveViewSpec;

    .line 135
    invoke-direct {v0, p2, p3}, Lmiuix/responsive/map/ResponsiveViewSpec;-><init>(II)V

    .line 138
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_8c
    :goto_8c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    return-void
.end method

.method private registerLifecycle(Landroidx/lifecycle/m;)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;

    .line 7
    invoke-direct {v0, p0, p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;-><init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;Lmiuix/responsive/page/manager/BaseResponseStateManager;)V

    .line 10
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 13
    return-void
.end method


# virtual methods
.method public afterConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/responsive/page/manager/BaseStateManager;->isSupportResponsive()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1e

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/responsive/page/manager/BaseStateManager;->computeResponsiveStateFromConfig(Landroid/content/res/Configuration;)Lmiuix/responsive/map/ResponsiveState;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    .line 13
    invoke-virtual {p0, p1}, Lmiuix/responsive/page/manager/BaseStateManager;->onAfterConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 16
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    .line 18
    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mOldState:Lmiuix/responsive/map/ResponsiveState;

    .line 20
    invoke-virtual {p0, v0, v1}, Lmiuix/responsive/page/manager/BaseStateManager;->isStateEquals(Lmiuix/responsive/map/ResponsiveState;Lmiuix/responsive/map/ResponsiveState;)Z

    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    .line 26
    xor-int/lit8 v0, v0, 0x1

    .line 28
    invoke-virtual {p0, p1, v1, v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->notifyResponseChange(Landroid/content/res/Configuration;Lmiuix/responsive/map/ResponsiveState;Z)V

    .line 31
    :cond_1e
    return-void
.end method

.method public beforeConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/responsive/page/manager/BaseStateManager;->isSupportResponsive()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mOldState:Lmiuix/responsive/map/ResponsiveState;

    .line 9
    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    .line 11
    invoke-virtual {v0, v1}, Lmiuix/responsive/map/ResponsiveState;->setTo(Lmiuix/responsive/map/ResponsiveState;)V

    .line 14
    invoke-virtual {p0, p1}, Lmiuix/responsive/page/manager/BaseStateManager;->onBeforeConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 17
    :cond_10
    return-void
.end method

.method public bindResponseView(Landroid/view/ViewGroup;Lmiuix/responsive/interfaces/IViewResponsive;)V
    .registers 4

    .line 7
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 8
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;

    invoke-virtual {p1, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->setIViewResponsive(Lmiuix/responsive/interfaces/IViewResponsive;)V

    :cond_13
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->onDestroy()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

    .line 7
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    .line 9
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 12
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 17
    return-void
.end method

.method public getState()Lmiuix/responsive/map/ResponsiveState;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    .line 3
    return-object v0
.end method

.method public notifyResponseChange(Landroid/content/res/Configuration;Lmiuix/responsive/map/ResponsiveState;Z)V
    .registers 8

    .line 1
    new-instance v0, Lmiuix/responsive/map/ScreenSpec;

    .line 3
    invoke-direct {v0}, Lmiuix/responsive/map/ScreenSpec;-><init>()V

    .line 6
    if-eqz p2, :cond_a

    .line 8
    invoke-virtual {p2, v0}, Lmiuix/responsive/map/ResponsiveState;->toScreenSpec(Lmiuix/responsive/map/ScreenSpec;)V

    .line 11
    :cond_a
    iget-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

    .line 13
    invoke-interface {p2, p1, v0, p3}, Lmiuix/responsive/interfaces/IResponsive;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 16
    iget-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    .line 18
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 21
    move-result-object p2

    .line 22
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p2

    .line 26
    :cond_19
    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_33

    .line 32
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/view/View;

    .line 38
    iget-object v2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lmiuix/responsive/interfaces/IResponsive;

    .line 46
    if-eqz v1, :cond_19

    .line 48
    invoke-interface {v1, p1, v0, p3}, Lmiuix/responsive/interfaces/IResponsive;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 51
    goto :goto_19

    .line 52
    :cond_33
    iget-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mViewResponsives:Landroid/util/ArrayMap;

    .line 54
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 57
    move-result-object p2

    .line 58
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object p2

    .line 62
    :goto_3d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_68

    .line 68
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Ljava/lang/Integer;

    .line 74
    iget-object v2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mViewResponsives:Landroid/util/ArrayMap;

    .line 76
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lmiuix/responsive/interfaces/IViewResponsive;

    .line 82
    if-nez v2, :cond_64

    .line 84
    iget-object v2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mRootView:Landroid/view/View;

    .line 86
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 89
    move-result v3

    .line 90
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lmiuix/responsive/interfaces/IViewResponsive;

    .line 96
    iget-object v3, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mViewResponsives:Landroid/util/ArrayMap;

    .line 98
    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_64
    invoke-interface {v2, p1, v0, p3}, Lmiuix/responsive/interfaces/IViewResponsive;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)Z

    .line 104
    goto :goto_3d

    .line 105
    :cond_68
    return-void
.end method

.method public notifyResponseOnCreate()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseStateManager;->mState:Lmiuix/responsive/map/ResponsiveState;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v0, v2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->notifyResponseChange(Landroid/content/res/Configuration;Lmiuix/responsive/map/ResponsiveState;Z)V

    .line 8
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-static {}, Lmiuix/responsive/map/ResponsiveStateManager;->getInstance()Lmiuix/responsive/map/ResponsiveStateManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/responsive/map/ResponsiveStateManager;->remove(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public testNotifyResponseChange(I)V
    .registers 7

    .line 1
    new-instance v0, Lmiuix/responsive/map/ScreenSpec;

    .line 3
    invoke-direct {v0}, Lmiuix/responsive/map/ScreenSpec;-><init>()V

    .line 6
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->getState()Lmiuix/responsive/map/ResponsiveState;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Lmiuix/responsive/map/ResponsiveState;->toScreenSpec(Lmiuix/responsive/map/ScreenSpec;)V

    .line 13
    iput p1, v0, Lmiuix/responsive/map/ScreenSpec;->screenMode:I

    .line 15
    iget-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mPageInfo:Lmiuix/responsive/interfaces/IResponsive;

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-interface {p1, v1, v0, v2}, Lmiuix/responsive/interfaces/IResponsive;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 22
    iget-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    .line 24
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p1

    .line 32
    :cond_1f
    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_39

    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/view/View;

    .line 44
    iget-object v4, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMap:Landroid/util/ArrayMap;

    .line 46
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lmiuix/responsive/interfaces/IResponsive;

    .line 52
    if-eqz v3, :cond_1f

    .line 54
    invoke-interface {v3, v1, v0, v2}, Lmiuix/responsive/interfaces/IResponsive;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 57
    goto :goto_1f

    .line 58
    :cond_39
    return-void
.end method

.method public updateResponsiveState()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->computeResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    .line 4
    return-void
.end method
