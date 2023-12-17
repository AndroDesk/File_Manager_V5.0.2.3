.class public Lmiuix/autodensity/ConfigurationChangeFragment;
.super Landroid/app/Fragment;
.source "ConfigurationChangeFragment.java"


# instance fields
.field private mDensityProcessor:Lmiuix/autodensity/AutoDensityConfig;

.field private mRemoveDensityChangeFlag:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mRemoveDensityChangeFlag:Z

    .line 7
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 1
    const-string v0, "ConfigChangeFragment activity: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mDensityProcessor:Lmiuix/autodensity/AutoDensityConfig;

    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lmiuix/autodensity/AutoDensityConfig;->updateApplicationDensity(Landroid/app/Application;)V

    .line 34
    invoke-static {v0}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 37
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    :try_start_27
    iget-boolean p1, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mRemoveDensityChangeFlag:Z

    .line 42
    if-eqz p1, :cond_3e

    .line 44
    const-class p1, Landroid/app/Activity;

    .line 46
    const-string v1, "mActivityInfo"

    .line 48
    invoke-static {p1, v0, v1}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/content/pm/ActivityInfo;

    .line 54
    iget v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 56
    and-int/lit16 v0, v0, -0x1001

    .line 58
    iput v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 60
    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mRemoveDensityChangeFlag:Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3e} :catch_3e

    .line 63
    :catch_3e
    :cond_3e
    return-void
.end method

.method public removeDensityChangeFlag()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mRemoveDensityChangeFlag:Z

    .line 4
    return-void
.end method

.method public setDensityProcessor(Lmiuix/autodensity/AutoDensityConfig;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mDensityProcessor:Lmiuix/autodensity/AutoDensityConfig;

    .line 3
    return-void
.end method
