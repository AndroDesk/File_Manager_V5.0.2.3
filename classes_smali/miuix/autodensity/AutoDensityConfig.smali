.class public Lmiuix/autodensity/AutoDensityConfig;
.super Lmiuix/autodensity/DensityProcessor;
.source "AutoDensityConfig.java"


# static fields
.field private static final TAG_CONFIG_CHANGE_FRAGMENT:Ljava/lang/String; = "ConfigurationChangeFragment"

.field private static sInstance:Lmiuix/autodensity/AutoDensityConfig; = null

.field private static sUpdateSystemResources:Z = true


# instance fields
.field private sCanAccessHiddenAPI:Z


# direct methods
.method private constructor <init>(Landroid/app/Application;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/autodensity/DensityProcessor;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/autodensity/AutoDensityConfig;->sCanAccessHiddenAPI:Z

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->prepareInApplication(Landroid/app/Application;)V

    .line 10
    instance-of v0, p1, Lmiuix/app/Application;

    .line 12
    if-eqz v0, :cond_21

    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lmiuix/app/Application;

    .line 17
    new-instance v1, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;

    .line 19
    invoke-direct {v1, p0}, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;-><init>(Lmiuix/autodensity/DensityProcessor;)V

    .line 22
    invoke-virtual {v0, v1}, Lmiuix/app/Application;->registerActivityLifecycleSubCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 25
    new-instance v1, Lmiuix/autodensity/AutoDensityConfig$1;

    .line 27
    invoke-direct {v1, p0, p1}, Lmiuix/autodensity/AutoDensityConfig$1;-><init>(Lmiuix/autodensity/AutoDensityConfig;Landroid/app/Application;)V

    .line 30
    invoke-virtual {v0, v1}, Lmiuix/app/Application;->registerComponentSubCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 33
    goto :goto_31

    .line 34
    :cond_21
    new-instance v0, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;

    .line 36
    invoke-direct {v0, p0}, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;-><init>(Lmiuix/autodensity/DensityProcessor;)V

    .line 39
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 42
    new-instance v0, Lmiuix/autodensity/AutoDensityConfig$2;

    .line 44
    invoke-direct {v0, p0, p1}, Lmiuix/autodensity/AutoDensityConfig$2;-><init>(Lmiuix/autodensity/AutoDensityConfig;Landroid/app/Application;)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 50
    :goto_31
    return-void
.end method

.method private addForOnConfigurationChange(Landroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->getConfigurationChangeFragment(Landroid/app/Activity;)Landroid/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_20

    .line 7
    new-instance v0, Lmiuix/autodensity/ConfigurationChangeFragment;

    .line 9
    invoke-direct {v0}, Lmiuix/autodensity/ConfigurationChangeFragment;-><init>()V

    .line 12
    invoke-virtual {v0, p0}, Lmiuix/autodensity/ConfigurationChangeFragment;->setDensityProcessor(Lmiuix/autodensity/AutoDensityConfig;)V

    .line 15
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 22
    move-result-object p1

    .line 23
    const-string v1, "ConfigurationChangeFragment"

    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 32
    goto :goto_2c

    .line 33
    :cond_20
    check-cast v0, Lmiuix/autodensity/ConfigurationChangeFragment;

    .line 35
    invoke-virtual {v0, p0}, Lmiuix/autodensity/ConfigurationChangeFragment;->setDensityProcessor(Lmiuix/autodensity/AutoDensityConfig;)V

    .line 38
    const-string p1, "AutoDensity"

    .line 40
    const-string v0, "ConfigurationChangeFragment has already added"

    .line 42
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_2c
    return-void
.end method

.method private changeCurrentConfig(Landroid/app/Activity;)V
    .registers 5

    .line 1
    const-class v0, Landroid/app/Activity;

    .line 3
    :try_start_2
    const-string v1, "mCurrentConfig"

    .line 5
    invoke-static {v0, p1, v1}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/content/res/Configuration;

    .line 11
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    .line 18
    move-result-object v2

    .line 19
    iget v2, v2, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 21
    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 23
    const-string v1, "mActivityInfo"

    .line 25
    invoke-static {v0, p1, v1}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 31
    iget v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 33
    and-int/lit16 v2, v1, 0x1000

    .line 35
    if-nez v2, :cond_38

    .line 37
    or-int/lit16 v1, v1, 0x1000

    .line 39
    iput v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 41
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->getConfigurationChangeFragment(Landroid/app/Activity;)Landroid/app/Fragment;

    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_38

    .line 47
    check-cast p1, Lmiuix/autodensity/ConfigurationChangeFragment;

    .line 49
    invoke-virtual {p1}, Lmiuix/autodensity/ConfigurationChangeFragment;->removeDensityChangeFlag()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_34

    .line 52
    goto :goto_38

    .line 53
    :catch_34
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method public static forceUpdateDensity(Landroid/content/Context;)V
    .registers 2

    .line 1
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 8
    :cond_7
    return-void
.end method

.method private getConfigurationChangeFragment(Landroid/app/Activity;)Landroid/app/Fragment;
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "ConfigurationChangeFragment"

    .line 7
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public static init(Landroid/app/Application;)Lmiuix/autodensity/AutoDensityConfig;
    .registers 2

    .line 1
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lmiuix/autodensity/AutoDensityConfig;->init(Landroid/app/Application;Z)Lmiuix/autodensity/AutoDensityConfig;

    move-result-object p0

    sput-object p0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    .line 3
    :cond_b
    sget-object p0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    return-object p0
.end method

.method public static init(Landroid/app/Application;Z)Lmiuix/autodensity/AutoDensityConfig;
    .registers 3

    .line 4
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    if-nez v0, :cond_d

    .line 5
    sput-boolean p1, Lmiuix/autodensity/AutoDensityConfig;->sUpdateSystemResources:Z

    .line 6
    new-instance p1, Lmiuix/autodensity/AutoDensityConfig;

    invoke-direct {p1, p0}, Lmiuix/autodensity/AutoDensityConfig;-><init>(Landroid/app/Application;)V

    sput-object p1, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    .line 7
    :cond_d
    sget-object p0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    return-object p0
.end method

.method private isShouldAdaptAutoDensity(Landroid/app/Application;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lmiuix/autodensity/IDensity;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p1, Lmiuix/autodensity/IDensity;

    .line 7
    invoke-interface {p1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    .line 10
    move-result p1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x1

    .line 13
    :goto_c
    return p1
.end method

.method private removeCurrentConfig(Landroid/app/Activity;)V
    .registers 5

    .line 1
    :try_start_0
    const-class v0, Landroid/app/Activity;

    .line 3
    const-string v1, "mCurrentConfig"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, p1, v1, v2}, Lmiuix/reflect/ReflectionHelper;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    goto :goto_d

    .line 10
    :catch_9
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :goto_d
    return-void
.end method

.method public static setUpdateSystemRes(Z)V
    .registers 1

    .line 1
    if-eqz p0, :cond_e

    .line 3
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->setSystemResources(Lmiuix/view/DisplayConfig;)V

    .line 14
    goto :goto_19

    .line 15
    :cond_e
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->getOriginConfig()Lmiuix/autodensity/DensityConfig;

    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->setSystemResources(Lmiuix/view/DisplayConfig;)V

    .line 26
    :goto_19
    return-void
.end method

.method public static shouldUpdateSystemResource()Z
    .registers 1

    .line 1
    sget-boolean v0, Lmiuix/autodensity/AutoDensityConfig;->sUpdateSystemResources:Z

    .line 3
    return v0
.end method

.method private tryToAddActivityConfigCallback(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/autodensity/AutoDensityConfig;->sCanAccessHiddenAPI:Z

    .line 3
    if-eqz v0, :cond_30

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v1, 0x1a

    .line 9
    if-lt v0, v1, :cond_30

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_15

    .line 21
    return-void

    .line 22
    :cond_15
    new-instance v1, Lmiuix/autodensity/AutoDensityConfig$3;

    .line 24
    invoke-direct {v1, p0, p1}, Lmiuix/autodensity/AutoDensityConfig$3;-><init>(Lmiuix/autodensity/AutoDensityConfig;Landroid/app/Activity;)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 30
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 35
    move-result p1

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lmiuix/autodensity/DensityProcessor$DensityCallback;

    .line 46
    invoke-virtual {p1, v1}, Lmiuix/autodensity/DensityProcessor$DensityCallback;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 49
    :cond_30
    return-void
.end method

.method public static updateDensity(Landroid/content/Context;)V
    .registers 2

    .line 1
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    instance-of v0, p0, Landroid/app/Activity;

    .line 8
    if-eqz v0, :cond_15

    .line 10
    instance-of v0, p0, Lmiuix/autodensity/IDensity;

    .line 12
    if-eqz v0, :cond_15

    .line 14
    move-object v0, p0

    .line 15
    check-cast v0, Lmiuix/autodensity/IDensity;

    .line 17
    invoke-interface {v0}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    .line 20
    move-result v0

    .line 21
    goto :goto_29

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    instance-of v0, v0, Lmiuix/autodensity/IDensity;

    .line 28
    if-eqz v0, :cond_28

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lmiuix/autodensity/IDensity;

    .line 36
    invoke-interface {v0}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    .line 39
    move-result v0

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    const/4 v0, 0x0

    .line 42
    :goto_29
    if-eqz v0, :cond_2e

    .line 44
    invoke-static {p0}, Lmiuix/autodensity/AutoDensityConfig;->forceUpdateDensity(Landroid/content/Context;)V

    .line 47
    :cond_2e
    return-void
.end method


# virtual methods
.method public isEnableProcessInActivity(Landroid/app/Activity;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    instance-of v1, p1, Lmiuix/autodensity/IDensity;

    .line 4
    if-eqz v1, :cond_d

    .line 6
    check-cast p1, Lmiuix/autodensity/IDensity;

    .line 8
    invoke-interface {p1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    .line 11
    move-result p1

    .line 12
    :goto_b
    move v0, p1

    .line 13
    goto :goto_20

    .line 14
    :cond_d
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 17
    move-result-object v1

    .line 18
    instance-of v1, v1, Lmiuix/autodensity/IDensity;

    .line 20
    if-eqz v1, :cond_20

    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lmiuix/autodensity/IDensity;

    .line 28
    invoke-interface {p1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    .line 31
    move-result p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    .line 32
    goto :goto_b

    .line 33
    :catch_20
    :cond_20
    :goto_20
    return v0
.end method

.method public onDensityChangedOnActivityCreated(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedOnActivityCreated(Landroid/app/Activity;)V

    .line 4
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->addForOnConfigurationChange(Landroid/app/Activity;)V

    .line 7
    return-void
.end method

.method public onRegisterDensityCallback(Ljava/lang/Object;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "registerCallback obj: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public prepareInApplication(Landroid/app/Application;)V
    .registers 7

    .line 1
    :try_start_0
    const-class v0, Landroid/content/pm/ApplicationInfo;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "isAllowedToUseHiddenApis"

    .line 9
    const/4 v3, 0x0

    .line 10
    new-array v4, v3, [Ljava/lang/Class;

    .line 12
    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    invoke-static {v0, v1, v2, v4, v3}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result v0

    .line 24
    iput-boolean v0, p0, Lmiuix/autodensity/AutoDensityConfig;->sCanAccessHiddenAPI:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_19

    .line 26
    :catch_19
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->initAutoDensityDebugEnable()V

    .line 29
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Lmiuix/autodensity/DensityConfigManager;->init(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2c

    .line 42
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 45
    :cond_2c
    return-void
.end method

.method public processBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V

    .line 11
    iget p2, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 13
    invoke-static {p2}, Lmiuix/core/util/ScreenModeHelper;->isInSplitScreenMode(I)Z

    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_20

    .line 19
    iget p2, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 21
    invoke-static {p2}, Lmiuix/core/util/ScreenModeHelper;->isInFreeFormMode(I)Z

    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_20

    .line 27
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    const/16 v0, 0x18

    .line 31
    if-le p2, v0, :cond_2d

    .line 33
    :cond_20
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    const/16 v0, 0x1f

    .line 37
    if-gt p2, v0, :cond_2a

    .line 39
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->removeCurrentConfig(Landroid/app/Activity;)V

    .line 42
    goto :goto_2d

    .line 43
    :cond_2a
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->changeCurrentConfig(Landroid/app/Activity;)V

    .line 46
    :cond_2d
    :goto_2d
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->getConfigurationChangeFragment(Landroid/app/Activity;)Landroid/app/Fragment;

    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_38

    .line 52
    check-cast p1, Lmiuix/autodensity/ConfigurationChangeFragment;

    .line 54
    invoke-virtual {p1, p0}, Lmiuix/autodensity/ConfigurationChangeFragment;->setDensityProcessor(Lmiuix/autodensity/AutoDensityConfig;)V

    .line 57
    :cond_38
    return-void
.end method

.method public processOnActivityCreated(Landroid/app/Activity;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lmiuix/autodensity/IDensity;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lmiuix/autodensity/IDensity;

    .line 8
    invoke-interface {v0}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    .line 11
    move-result v0

    .line 12
    goto :goto_14

    .line 13
    :cond_c
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    .line 20
    move-result v0

    .line 21
    :goto_14
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v1}, Lmiuix/autodensity/AutoDensityConfig;->updateApplicationDensity(Landroid/app/Application;)V

    .line 28
    if-eqz v0, :cond_23

    .line 30
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->onDensityChangedOnActivityCreated(Landroid/app/Activity;)V

    .line 36
    :cond_23
    return-void
.end method

.method public processOnActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/autodensity/DensityProcessor;->unregisterCallback(Landroid/app/Activity;)V

    .line 4
    return-void
.end method

.method public processOnActivityDisplayChanged(ILandroid/app/Activity;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onDisplayChanged activity: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 21
    invoke-static {p2}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0, p1, p2}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedOnActivityDisplayChanged(ILandroid/app/Activity;)V

    .line 27
    return-void
.end method

.method public processOnAppConfigChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lmiuix/autodensity/DensityConfigManager;->updateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 8
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_25

    .line 14
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0, p1}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedOnAppConfigChanged(Landroid/app/Application;)V

    .line 20
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    const/16 v0, 0x18

    .line 24
    if-le p1, v0, :cond_25

    .line 26
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    .line 33
    move-result-object p1

    .line 34
    iget p1, p1, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 36
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 38
    :cond_25
    return-void
.end method

.method public registerCallback(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/autodensity/DensityProcessor;->registerCallback(Landroid/app/Activity;)V

    .line 4
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->tryToAddActivityConfigCallback(Landroid/app/Activity;)V

    .line 7
    return-void
.end method

.method public updateApplicationDensity(Landroid/app/Application;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-ne v0, v1, :cond_f

    .line 7
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 16
    :cond_f
    return-void
.end method
