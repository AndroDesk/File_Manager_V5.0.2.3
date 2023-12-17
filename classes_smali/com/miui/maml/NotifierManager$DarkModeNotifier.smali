.class public Lcom/miui/maml/NotifierManager$DarkModeNotifier;
.super Lcom/miui/maml/NotifierManager$BaseNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DarkModeNotifier"
.end annotation


# static fields
.field public static final DARK_MODE:I = 0x1

.field public static final DARK_WALLPAPER_MODE:I = 0x2


# instance fields
.field private mComponentCallback:Landroid/content/ComponentCallbacks2;

.field private mDarkModeName:Ljava/lang/String;

.field private mDarkModeObserver:Landroid/database/ContentObserver;

.field private mDarkWallpaperModeName:Ljava/lang/String;

.field private mDarkWallpaperModeObserver:Landroid/database/ContentObserver;

.field private mIsDarkMode:Z

.field private mIsDarkWallpaperMode:Z

.field private mIsUIModeNight:Z

.field private mMamlDarkMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lcom/miui/maml/NotifierManager$DarkModeNotifier$1;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p1, p0, v0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier$1;-><init>(Lcom/miui/maml/NotifierManager$DarkModeNotifier;Landroid/os/Handler;)V

    .line 10
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeObserver:Landroid/database/ContentObserver;

    .line 12
    new-instance p1, Lcom/miui/maml/NotifierManager$DarkModeNotifier$2;

    .line 14
    invoke-direct {p1, p0, v0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier$2;-><init>(Lcom/miui/maml/NotifierManager$DarkModeNotifier;Landroid/os/Handler;)V

    .line 17
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeObserver:Landroid/database/ContentObserver;

    .line 19
    new-instance p1, Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;

    .line 21
    invoke-direct {p1, p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;-><init>(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V

    .line 24
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    .line 26
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SettingsSecure_UI_NIGHT_MODE()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeName:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SystemSettingsSystem_DARKEN_WALLPAPER_UNDER_DARK_MODE()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static synthetic access$200(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateDarkMode()V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->checkIfNeedToNotify()V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateDarkWallpaperMode()V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/miui/maml/NotifierManager$DarkModeNotifier;Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateUIModeNight(Landroid/content/res/Configuration;)V

    .line 4
    return-void
.end method

.method private checkIfNeedToNotify()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsDarkMode:Z

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsUIModeNight:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 13
    :goto_c
    iget-boolean v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsDarkWallpaperMode:Z

    .line 15
    if-eqz v1, :cond_12

    .line 17
    or-int/lit8 v0, v0, 0x2

    .line 19
    :cond_12
    iget v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mMamlDarkMode:I

    .line 21
    if-eq v0, v1, :cond_36

    .line 23
    iput v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mMamlDarkMode:I

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0, v2, v2, v1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v2, "maml dark mode "

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    const-string v1, "NotifierManager"

    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_36
    return-void
.end method

.method private updateDarkMode()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeName:Ljava/lang/String;

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_11

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v2, 0x0

    .line 19
    :goto_12
    iput-boolean v2, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsDarkMode:Z

    .line 21
    return-void
.end method

.method private updateDarkWallpaperMode()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeName:Ljava/lang/String;

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsDarkWallpaperMode:Z

    .line 16
    return-void
.end method

.method private updateUIModeNight(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 3
    and-int/lit8 p1, p1, 0x30

    .line 5
    const/16 v0, 0x20

    .line 7
    if-ne p1, v0, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    :goto_b
    iput-boolean p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsUIModeNight:Z

    .line 14
    return-void
.end method


# virtual methods
.method public onListenerAdded(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mMamlDarkMode:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p1, v1, v1, v0}, Lcom/miui/maml/NotifierManager$OnNotifyListener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public onRegister()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_56

    .line 9
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeName:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_56

    .line 18
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeName:Ljava/lang/String;

    .line 26
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeObserver:Landroid/database/ContentObserver;

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 36
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeName:Ljava/lang/String;

    .line 44
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeObserver:Landroid/database/ContentObserver;

    .line 50
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 55
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3b} :catch_3c

    .line 60
    goto :goto_40

    .line 61
    :catch_3c
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    :goto_40
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateDarkMode()V

    .line 68
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateDarkWallpaperMode()V

    .line 71
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 80
    move-result-object v0

    .line 81
    invoke-direct {p0, v0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateUIModeNight(Landroid/content/res/Configuration;)V

    .line 84
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->checkIfNeedToNotify()V

    .line 87
    :cond_56
    :goto_56
    return-void
.end method

.method public onUnregister()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_33

    .line 9
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeName:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_33

    .line 18
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeObserver:Landroid/database/ContentObserver;

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 29
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeObserver:Landroid/database/ContentObserver;

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 40
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 42
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2e} :catch_2f

    .line 47
    goto :goto_33

    .line 48
    :catch_2f
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    :cond_33
    :goto_33
    return-void
.end method
