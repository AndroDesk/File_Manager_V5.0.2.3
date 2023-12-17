.class public Lmiuix/core/util/EnvStateManager;
.super Ljava/lang/Object;
.source "EnvStateManager.java"


# static fields
.field public static volatile mIsFullScreenGestureMode:Ljava/lang/Boolean;

.field public static final mNaviModeLock:Ljava/lang/Object;

.field public static volatile mNavigationBarHeight:I

.field public static volatile mNavigationBarHeightDp:I

.field public static final mNavigationBarHeightLock:Ljava/lang/Object;

.field public static volatile mStatusBarHeight:I

.field public static volatile mStatusBarHeightDp:I

.field public static final mStatusBarHeightLock:Ljava/lang/Object;

.field public static sOriginConfig:Lmiuix/view/DisplayConfig;

.field public static final sScreenSize:Landroid/graphics/Point;

.field public static final sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/core/util/WindowBaseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 7
    sput-object v0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    sput-object v0, Lmiuix/core/util/EnvStateManager;->sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    sput-object v0, Lmiuix/core/util/EnvStateManager;->mNaviModeLock:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/lang/Object;

    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    sput-object v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightLock:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    sput-object v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightLock:Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    .line 38
    sput-object v0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    .line 40
    sput v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 42
    sput v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    .line 44
    sput v1, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    .line 46
    sput v1, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightDp:I

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureOriginConfigExist(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lmiuix/view/DisplayConfig;

    .line 7
    invoke-direct {v0, p0}, Lmiuix/view/DisplayConfig;-><init>(Landroid/content/res/Configuration;)V

    .line 10
    sput-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    .line 12
    :cond_b
    return-void
.end method

.method private static getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result p0

    .line 9
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lmiuix/core/util/WindowBaseInfo;

    .line 21
    if-nez v1, :cond_22

    .line 23
    new-instance v1, Lmiuix/core/util/WindowBaseInfo;

    .line 25
    invoke-direct {v1}, Lmiuix/core/util/WindowBaseInfo;-><init>()V

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_22
    return-object v1
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;Z)I
    .registers 5

    .line 1
    sget v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_2c

    .line 6
    sget-object v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    sget v2, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    .line 11
    if-ne v2, v1, :cond_27

    .line 13
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    .line 16
    move-result v1

    .line 17
    sput v1, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    move-result-object p0

    .line 27
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 29
    int-to-float p0, p0

    .line 30
    const/high16 v1, 0x43200000  # 160.0f

    .line 32
    div-float/2addr p0, v1

    .line 33
    sget v1, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    .line 35
    int-to-float v1, v1

    .line 36
    div-float/2addr v1, p0

    .line 37
    float-to-int p0, v1

    .line 38
    sput p0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightDp:I

    .line 40
    :cond_27
    monitor-exit v0

    .line 41
    goto :goto_2c

    .line 42
    :catchall_29
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_29

    .line 44
    throw p0

    .line 45
    :cond_2c
    :goto_2c
    if-eqz p1, :cond_31

    .line 47
    sget p0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightDp:I

    .line 49
    goto :goto_33

    .line 50
    :cond_31
    sget p0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    .line 52
    :goto_33
    return p0
.end method

.method public static getScreenShortEdge(Landroid/content/Context;)I
    .registers 2

    .line 1
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 4
    move-result-object p0

    .line 5
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 7
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 9
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 3

    .line 1
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    .line 3
    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->isSizeDirty(Landroid/graphics/Point;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_f

    .line 9
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1, p0}, Lmiuix/core/util/EnvStateManager;->updateScreenSize(Landroid/view/WindowManager;Landroid/content/Context;)V

    .line 16
    :cond_f
    return-object v0
.end method

.method public static getSmallestScreenWidthDp(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->ensureOriginConfigExist(Landroid/content/res/Configuration;)V

    .line 12
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    .line 14
    iget v0, v0, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 16
    int-to-float v0, v0

    .line 17
    const/high16 v1, 0x3f800000  # 1.0f

    .line 19
    mul-float/2addr v0, v1

    .line 20
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 22
    int-to-float v1, v1

    .line 23
    div-float/2addr v0, v1

    .line 24
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 26
    int-to-float p0, p0

    .line 27
    mul-float/2addr p0, v0

    .line 28
    float-to-int p0, p0

    .line 29
    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;Z)I
    .registers 5

    .line 1
    sget v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_2c

    .line 6
    sget-object v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    sget v2, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 11
    if-ne v2, v1, :cond_27

    .line 13
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 16
    move-result v1

    .line 17
    sput v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    move-result-object p0

    .line 27
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 29
    int-to-float p0, p0

    .line 30
    const/high16 v1, 0x43200000  # 160.0f

    .line 32
    div-float/2addr p0, v1

    .line 33
    sget v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 35
    int-to-float v1, v1

    .line 36
    div-float/2addr v1, p0

    .line 37
    float-to-int p0, v1

    .line 38
    sput p0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    .line 40
    :cond_27
    monitor-exit v0

    .line 41
    goto :goto_2c

    .line 42
    :catchall_29
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_29

    .line 44
    throw p0

    .line 45
    :cond_2c
    :goto_2c
    if-eqz p1, :cond_31

    .line 47
    sget p0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    .line 49
    goto :goto_33

    .line 50
    :cond_31
    sget p0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 52
    :goto_33
    return p0
.end method

.method public static getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lmiuix/core/util/WindowBaseInfo;
    .registers 4

    .line 3
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    .line 4
    invoke-static {p0, v0, p1, p2}, Lmiuix/core/util/EnvStateManager;->updateWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;Z)V

    return-object v0
.end method

.method public static getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 3

    .line 7
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    .line 8
    iget-boolean v1, v0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    if-eqz v1, :cond_b

    .line 9
    invoke-static {p0, v0}, Lmiuix/core/util/EnvStateManager;->updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    .line 10
    :cond_b
    iget-object p0, v0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public static getWindowSize(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/graphics/Point;
    .registers 4

    .line 1
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    .line 2
    iget-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    if-eqz v0, :cond_17

    .line 3
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->ensureOriginConfigExist(Landroid/content/res/Configuration;)V

    .line 4
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    iget v0, v0, Lmiuix/view/DisplayConfig;->densityDpi:I

    iget-object v1, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    invoke-static {p1, v0, v1}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/res/Configuration;ILandroid/graphics/Point;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    .line 6
    :cond_17
    iget-object p0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public static init(Landroid/app/Application;)V
    .registers 2

    .line 1
    new-instance v0, Lmiuix/view/DisplayConfig;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lmiuix/view/DisplayConfig;-><init>(Landroid/content/res/Configuration;)V

    .line 14
    sput-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    .line 16
    return-void
.end method

.method public static isFreeFormMode(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 4
    move-result-object p0

    .line 5
    iget p0, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 7
    invoke-static {p0}, Lmiuix/core/util/ScreenModeHelper;->isInFreeFormMode(I)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static isFullScreenGestureMode(Landroid/content/Context;)Z
    .registers 3

    .line 1
    sget-object v0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_1a

    .line 5
    sget-object v0, Lmiuix/core/util/EnvStateManager;->mNaviModeLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    .line 10
    if-nez v1, :cond_15

    .line 12
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isFullScreenGestureMode(Landroid/content/Context;)Z

    .line 15
    move-result p0

    .line 16
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    move-result-object p0

    .line 20
    sput-object p0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    .line 22
    :cond_15
    monitor-exit v0

    .line 23
    goto :goto_1a

    .line 24
    :catchall_17
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    .line 26
    throw p0

    .line 27
    :cond_1a
    :goto_1a
    sget-object p0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method private static isSizeDirty(Landroid/graphics/Point;)Z
    .registers 3

    .line 1
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_b

    .line 6
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 8
    if-ne p0, v1, :cond_b

    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p0, 0x0

    .line 13
    :goto_c
    return p0
.end method

.method public static markEnvStateDirty(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget-object p0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_3
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->markSizeDirty(Landroid/graphics/Point;)V

    .line 7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_29

    .line 8
    sget-object v0, Lmiuix/core/util/EnvStateManager;->mNaviModeLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    const/4 p0, 0x0

    .line 12
    :try_start_b
    sput-object p0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    .line 14
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_26

    .line 15
    sget-object p0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightLock:Ljava/lang/Object;

    .line 17
    monitor-enter p0

    .line 18
    const/4 v0, -0x1

    .line 19
    :try_start_12
    sput v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    .line 21
    sput v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightDp:I

    .line 23
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_23

    .line 24
    sget-object v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightLock:Ljava/lang/Object;

    .line 26
    monitor-enter v1

    .line 27
    :try_start_1a
    sput v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 29
    sput v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    .line 31
    monitor-exit v1

    .line 32
    return-void

    .line 33
    :catchall_20
    move-exception p0

    .line 34
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    .line 35
    throw p0

    .line 36
    :catchall_23
    move-exception v0

    .line 37
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    .line 38
    throw v0

    .line 39
    :catchall_26
    move-exception p0

    .line 40
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    .line 41
    throw p0

    .line 42
    :catchall_29
    move-exception v0

    .line 43
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    .line 44
    throw v0
.end method

.method public static markSizeDirty(Landroid/graphics/Point;)V
    .registers 3

    .line 1
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_9

    .line 6
    iget v0, p0, Landroid/graphics/Point;->y:I

    .line 8
    if-eq v0, v1, :cond_d

    .line 10
    :cond_9
    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 12
    iput v1, p0, Landroid/graphics/Point;->y:I

    .line 14
    :cond_d
    return-void
.end method

.method public static declared-synchronized markWindowInfoDirty(Landroid/content/Context;)V
    .registers 2

    const-class v0, Lmiuix/core/util/EnvStateManager;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->markWindowInfoDirty(Lmiuix/core/util/WindowBaseInfo;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 3
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static markWindowInfoDirty(Lmiuix/core/util/WindowBaseInfo;)V
    .registers 2

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    .line 5
    iput-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    return-void
.end method

.method public static removeInfoOfContext(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result p0

    .line 9
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method

.method public static updateOriginConfig(Lmiuix/view/DisplayConfig;)V
    .registers 1

    .line 1
    sput-object p0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    .line 3
    return-void
.end method

.method public static updateScreenAndWindowSize(Landroid/view/WindowManager;Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 7
    move-result-object v1

    .line 8
    invoke-static {p0, p1, v0, v1}, Lmiuix/core/util/WindowUtils;->getScreenAndWindowSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_c
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    .line 15
    throw p0
.end method

.method public static updateScreenSize(Landroid/view/WindowManager;Landroid/content/Context;)V
    .registers 3

    .line 1
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {p0, p1, v0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    .line 11
    throw p0
.end method

.method public static updateWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;Z)V
    .registers 5

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-boolean v0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    .line 6
    if-nez v0, :cond_9

    .line 8
    if-eqz p3, :cond_12

    .line 10
    :cond_9
    if-eqz p2, :cond_f

    .line 12
    invoke-static {p2, p1}, Lmiuix/core/util/EnvStateManager;->updateWindowSizeByConfig(Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V

    .line 15
    goto :goto_12

    .line 16
    :cond_f
    invoke-static {p0, p1}, Lmiuix/core/util/EnvStateManager;->updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    .line 19
    :cond_12
    :goto_12
    iget-boolean p2, p1, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    .line 21
    if-nez p2, :cond_18

    .line 23
    if-eqz p3, :cond_1b

    .line 25
    :cond_18
    invoke-static {p0, p1}, Lmiuix/core/util/EnvStateManager;->updateWindowMode(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    .line 28
    :cond_1b
    return-void
.end method

.method public static updateWindowMode(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V
    .registers 3

    .line 1
    iget-boolean v0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-static {p0, p1}, Lmiuix/core/util/EnvStateManager;->updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    .line 8
    :cond_7
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {p0, p1, v0}, Lmiuix/core/util/ScreenModeHelper;->detectWindowMode(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/graphics/Point;)V

    .line 15
    const/4 p0, 0x0

    .line 16
    iput-boolean p0, p1, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    .line 18
    return-void
.end method

.method public static updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 3
    invoke-static {p0, v0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    move-result-object p0

    .line 14
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 16
    int-to-float p0, p0

    .line 17
    const/high16 v0, 0x43200000  # 160.0f

    .line 19
    div-float/2addr p0, v0

    .line 20
    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    .line 22
    iget-object v1, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 24
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 26
    int-to-float v1, v1

    .line 27
    invoke-static {p0, v1}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    .line 30
    move-result v1

    .line 31
    iget-object v2, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 33
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 35
    int-to-float v2, v2

    .line 36
    invoke-static {p0, v2}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    .line 39
    move-result p0

    .line 40
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Point;->set(II)V

    .line 43
    iget-object p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    .line 45
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 47
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 49
    invoke-static {v0, p0}, Lmiuix/responsive/ResponsiveStateHelper;->detectResponsiveWindowType(II)I

    .line 52
    move-result p0

    .line 53
    iput p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    .line 55
    const/4 p0, 0x0

    .line 56
    iput-boolean p0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    .line 58
    return-void
.end method

.method public static updateWindowSizeByConfig(Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V
    .registers 7

    .line 1
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->ensureOriginConfigExist(Landroid/content/res/Configuration;)V

    .line 4
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 6
    int-to-float v1, v0

    .line 7
    const/high16 v2, 0x43200000  # 160.0f

    .line 9
    div-float/2addr v1, v2

    .line 10
    sget-object v2, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    .line 12
    iget v2, v2, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 14
    int-to-float v2, v2

    .line 15
    const/high16 v3, 0x3f800000  # 1.0f

    .line 17
    mul-float/2addr v2, v3

    .line 18
    int-to-float v0, v0

    .line 19
    div-float/2addr v2, v0

    .line 20
    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 22
    mul-float/2addr v1, v2

    .line 23
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 25
    int-to-float v3, v3

    .line 26
    invoke-static {v1, v3}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    .line 29
    move-result v3

    .line 30
    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 32
    int-to-float v4, v4

    .line 33
    invoke-static {v1, v4}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Point;->set(II)V

    .line 40
    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    .line 42
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 44
    int-to-float v1, v1

    .line 45
    mul-float/2addr v1, v2

    .line 46
    float-to-int v1, v1

    .line 47
    iget p0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 49
    int-to-float p0, p0

    .line 50
    mul-float/2addr p0, v2

    .line 51
    float-to-int p0, p0

    .line 52
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Point;->set(II)V

    .line 55
    iget-object p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    .line 57
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 59
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 61
    invoke-static {v0, p0}, Lmiuix/responsive/ResponsiveStateHelper;->detectResponsiveWindowType(II)I

    .line 64
    move-result p0

    .line 65
    iput p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    .line 67
    const/4 p0, 0x0

    .line 68
    iput-boolean p0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    .line 70
    return-void
.end method
