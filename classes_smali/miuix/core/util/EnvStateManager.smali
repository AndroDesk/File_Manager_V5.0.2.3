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

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->mNaviModeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    sput v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    sput v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    sput v1, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    sput v1, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightDp:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureOriginConfigExist(Landroid/content/res/Configuration;)V
    .registers 2

    sget-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    if-nez v0, :cond_b

    new-instance v0, Lmiuix/view/DisplayConfig;

    invoke-direct {v0, p0}, Lmiuix/view/DisplayConfig;-><init>(Landroid/content/res/Configuration;)V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    :cond_b
    return-void
.end method

.method private static getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    sget-object v0, Lmiuix/core/util/EnvStateManager;->sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/util/WindowBaseInfo;

    if-nez v1, :cond_22

    new-instance v1, Lmiuix/core/util/WindowBaseInfo;

    invoke-direct {v1}, Lmiuix/core/util/WindowBaseInfo;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-object v1
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;Z)I
    .registers 5

    sget v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2c

    sget-object v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    sget v2, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    if-ne v2, v1, :cond_27

    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    sput v1, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v1, 0x43200000  # 160.0f

    div-float/2addr p0, v1

    sget v1, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    int-to-float v1, v1

    div-float/2addr v1, p0

    float-to-int p0, v1

    sput p0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightDp:I

    :cond_27
    monitor-exit v0

    goto :goto_2c

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_29

    throw p0

    :cond_2c
    :goto_2c
    if-eqz p1, :cond_31

    sget p0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightDp:I

    goto :goto_33

    :cond_31
    sget p0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    :goto_33
    return p0
.end method

.method public static getScreenShortEdge(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 3

    sget-object v0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->isSizeDirty(Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-static {v1, p0}, Lmiuix/core/util/EnvStateManager;->updateScreenSize(Landroid/view/WindowManager;Landroid/content/Context;)V

    :cond_f
    return-object v0
.end method

.method public static getSmallestScreenWidthDp(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->ensureOriginConfigExist(Landroid/content/res/Configuration;)V

    sget-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    iget v0, v0, Lmiuix/view/DisplayConfig;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;Z)I
    .registers 5

    sget v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2c

    sget-object v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    sget v2, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    if-ne v2, v1, :cond_27

    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sput v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v1, 0x43200000  # 160.0f

    div-float/2addr p0, v1

    sget v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    int-to-float v1, v1

    div-float/2addr v1, p0

    float-to-int p0, v1

    sput p0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    :cond_27
    monitor-exit v0

    goto :goto_2c

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_29

    throw p0

    :cond_2c
    :goto_2c
    if-eqz p1, :cond_31

    sget p0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    goto :goto_33

    :cond_31
    sget p0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    :goto_33
    return p0
.end method

.method public static getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lmiuix/core/util/WindowBaseInfo;
    .registers 4

    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lmiuix/core/util/EnvStateManager;->updateWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;Z)V

    return-object v0
.end method

.method public static getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 3

    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    iget-boolean v1, v0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    if-eqz v1, :cond_b

    invoke-static {p0, v0}, Lmiuix/core/util/EnvStateManager;->updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    :cond_b
    iget-object p0, v0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public static getWindowSize(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/graphics/Point;
    .registers 4

    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    iget-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    if-eqz v0, :cond_17

    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->ensureOriginConfigExist(Landroid/content/res/Configuration;)V

    sget-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    iget v0, v0, Lmiuix/view/DisplayConfig;->densityDpi:I

    iget-object v1, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    invoke-static {p1, v0, v1}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/res/Configuration;ILandroid/graphics/Point;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    :cond_17
    iget-object p0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public static init(Landroid/app/Application;)V
    .registers 2

    new-instance v0, Lmiuix/view/DisplayConfig;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {v0, p0}, Lmiuix/view/DisplayConfig;-><init>(Landroid/content/res/Configuration;)V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    return-void
.end method

.method public static isFreeFormMode(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    iget p0, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    invoke-static {p0}, Lmiuix/core/util/ScreenModeHelper;->isInFreeFormMode(I)Z

    move-result p0

    return p0
.end method

.method public static isFullScreenGestureMode(Landroid/content/Context;)Z
    .registers 3

    sget-object v0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    if-nez v0, :cond_1a

    sget-object v0, Lmiuix/core/util/EnvStateManager;->mNaviModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    if-nez v1, :cond_15

    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isFullScreenGestureMode(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0

    :cond_1a
    :goto_1a
    sget-object p0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static isSizeDirty(Landroid/graphics/Point;)Z
    .registers 3

    iget v0, p0, Landroid/graphics/Point;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-ne p0, v1, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static markEnvStateDirty(Landroid/content/Context;)V
    .registers 3

    sget-object p0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    monitor-enter p0

    :try_start_3
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->markSizeDirty(Landroid/graphics/Point;)V

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_29

    sget-object v0, Lmiuix/core/util/EnvStateManager;->mNaviModeLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 p0, 0x0

    :try_start_b
    sput-object p0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_26

    sget-object p0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_12
    sput v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    sput v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightDp:I

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_23

    sget-object v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1a
    sput v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    sput v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    monitor-exit v1

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw p0

    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0

    :catchall_26
    move-exception p0

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0

    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public static markSizeDirty(Landroid/graphics/Point;)V
    .registers 3

    iget v0, p0, Landroid/graphics/Point;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroid/graphics/Point;->y:I

    if-eq v0, v1, :cond_d

    :cond_9
    iput v1, p0, Landroid/graphics/Point;->x:I

    iput v1, p0, Landroid/graphics/Point;->y:I

    :cond_d
    return-void
.end method

.method public static declared-synchronized markWindowInfoDirty(Landroid/content/Context;)V
    .registers 2

    const-class v0, Lmiuix/core/util/EnvStateManager;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->markWindowInfoDirty(Lmiuix/core/util/WindowBaseInfo;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

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

    iput-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    iput-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    return-void
.end method

.method public static removeInfoOfContext(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    sget-object v0, Lmiuix/core/util/EnvStateManager;->sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static updateOriginConfig(Lmiuix/view/DisplayConfig;)V
    .registers 1

    sput-object p0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    return-void
.end method

.method public static updateScreenAndWindowSize(Landroid/view/WindowManager;Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    monitor-enter v0

    :try_start_3
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lmiuix/core/util/WindowUtils;->getScreenAndWindowSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static updateScreenSize(Landroid/view/WindowManager;Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    monitor-enter v0

    :try_start_3
    invoke-static {p0, p1, v0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V

    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public static updateWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;Z)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-boolean v0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    if-nez v0, :cond_9

    if-eqz p3, :cond_12

    :cond_9
    if-eqz p2, :cond_f

    invoke-static {p2, p1}, Lmiuix/core/util/EnvStateManager;->updateWindowSizeByConfig(Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V

    goto :goto_12

    :cond_f
    invoke-static {p0, p1}, Lmiuix/core/util/EnvStateManager;->updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    :cond_12
    :goto_12
    iget-boolean p2, p1, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    if-nez p2, :cond_18

    if-eqz p3, :cond_1b

    :cond_18
    invoke-static {p0, p1}, Lmiuix/core/util/EnvStateManager;->updateWindowMode(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    :cond_1b
    return-void
.end method

.method public static updateWindowMode(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V
    .registers 3

    iget-boolean v0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Lmiuix/core/util/EnvStateManager;->updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    :cond_7
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiuix/core/util/ScreenModeHelper;->detectWindowMode(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/graphics/Point;)V

    const/4 p0, 0x0

    iput-boolean p0, p1, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    return-void
.end method

.method public static updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V
    .registers 5

    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    invoke-static {p0, v0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000  # 160.0f

    div-float/2addr p0, v0

    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget-object v1, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-static {p0, v1}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v1

    iget-object v2, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-static {p0, v2}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Point;->set(II)V

    iget-object p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Lmiuix/responsive/ResponsiveStateHelper;->detectResponsiveWindowType(II)I

    move-result p0

    iput p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    const/4 p0, 0x0

    iput-boolean p0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    return-void
.end method

.method public static updateWindowSizeByConfig(Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V
    .registers 7

    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->ensureOriginConfigExist(Landroid/content/res/Configuration;)V

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v0

    const/high16 v2, 0x43200000  # 160.0f

    div-float/2addr v1, v2

    sget-object v2, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    iget v2, v2, Lmiuix/view/DisplayConfig;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    mul-float/2addr v1, v2

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v3

    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v4, v4

    invoke-static {v1, v4}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget p0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p0, p0

    mul-float/2addr p0, v2

    float-to-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Point;->set(II)V

    iget-object p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Lmiuix/responsive/ResponsiveStateHelper;->detectResponsiveWindowType(II)I

    move-result p0

    iput p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    const/4 p0, 0x0

    iput-boolean p0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    return-void
.end method
