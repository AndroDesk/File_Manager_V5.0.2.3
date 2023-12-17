.class public abstract Lmiuix/autodensity/DensityProcessor;
.super Ljava/lang/Object;
.source "DensityProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/autodensity/DensityProcessor$DensityCallback;,
        Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;
    }
.end annotation


# instance fields
.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mModifier:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/autodensity/DensityProcessor$DensityCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    iput-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mUiHandler:Landroid/os/Handler;

    .line 18
    return-void
.end method


# virtual methods
.method public abstract isEnableProcessInActivity(Landroid/app/Activity;)Z
.end method

.method public onDensityChangedBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lmiuix/core/util/EnvStateManager;->updateWindowSizeByConfig(Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V

    .line 4
    invoke-static {p1, p3}, Lmiuix/core/util/EnvStateManager;->updateWindowMode(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    .line 7
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->markEnvStateDirty(Landroid/content/Context;)V

    .line 10
    invoke-static {p3}, Lmiuix/core/util/EnvStateManager;->markWindowInfoDirty(Lmiuix/core/util/WindowBaseInfo;)V

    .line 13
    return-void
.end method

.method public onDensityChangedOnActivityCreated(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/autodensity/DensityProcessor;->registerCallback(Landroid/app/Activity;)V

    .line 4
    return-void
.end method

.method public onDensityChangedOnActivityDisplayChanged(ILandroid/app/Activity;)V
    .registers 3

    return-void
.end method

.method public onDensityChangedOnAppConfigChanged(Landroid/app/Application;)V
    .registers 2

    return-void
.end method

.method public onRegisterDensityCallback(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public abstract prepareInApplication(Landroid/app/Application;)V
.end method

.method public abstract processBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
.end method

.method public abstract processOnActivityCreated(Landroid/app/Activity;)V
.end method

.method public abstract processOnActivityDestroyed(Landroid/app/Activity;)V
.end method

.method public abstract processOnActivityDisplayChanged(ILandroid/app/Activity;)V
.end method

.method public abstract processOnAppConfigChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V
.end method

.method public registerCallback(Landroid/app/Activity;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 3
    if-nez v0, :cond_12

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "display"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 17
    iput-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    .line 21
    if-nez v0, :cond_1d

    .line 23
    new-instance v0, Ljava/util/HashMap;

    .line 25
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    iput-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    .line 30
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lmiuix/autodensity/DensityProcessor$DensityCallback;

    .line 46
    if-nez v1, :cond_4e

    .line 48
    new-instance v1, Lmiuix/autodensity/DensityProcessor$DensityCallback;

    .line 50
    invoke-direct {v1, p0, p1, p0}, Lmiuix/autodensity/DensityProcessor$DensityCallback;-><init>(Lmiuix/autodensity/DensityProcessor;Landroid/app/Activity;Lmiuix/autodensity/DensityProcessor;)V

    .line 53
    iget-object v2, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 64
    iget-object v2, p0, Lmiuix/autodensity/DensityProcessor;->mUiHandler:Landroid/os/Handler;

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 76
    invoke-virtual {p1, v1}, Landroid/app/Activity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 79
    :cond_4e
    return-void
.end method

.method public unregisterCallback(Landroid/app/Activity;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    .line 3
    if-eqz v0, :cond_46

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lmiuix/autodensity/DensityProcessor$DensityCallback;

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v3, "unregisterCallback obj: "

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 41
    if-eqz v1, :cond_3d

    .line 43
    invoke-virtual {p0, v1}, Lmiuix/autodensity/DensityProcessor;->unregisterDisplayListener(Lmiuix/autodensity/DensityProcessor$DensityCallback;)V

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2, v1}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 53
    invoke-virtual {p1, v1}, Landroid/app/Activity;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 56
    invoke-virtual {v1, p1}, Lmiuix/autodensity/DensityProcessor$DensityCallback;->removeOnAttachStateChangeListener(Landroid/app/Activity;)V

    .line 59
    invoke-virtual {v1}, Lmiuix/autodensity/DensityProcessor$DensityCallback;->clear()V

    .line 62
    :cond_3d
    iget-object p1, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_46
    return-void
.end method

.method public unregisterDisplayListener(Lmiuix/autodensity/DensityProcessor$DensityCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 8
    :cond_7
    return-void
.end method
