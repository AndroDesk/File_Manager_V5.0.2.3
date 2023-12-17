.class public Lcom/android/fileexplorer/util/MiHomeUtils;
.super Ljava/lang/Object;
.source "MiHomeUtils.java"


# static fields
.field private static final METHOD_IS_HIDE:Ljava/lang/String; = "isAppHidded"

.field private static final METHOD_RESTORE:Ljava/lang/String; = "restoreHiddenApp"

.field private static final PARAM_ACTIVITY_NAME:Ljava/lang/String; = "activityName"

.field private static final PARAM_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final PARAM_SERIAL_NUMBER:Ljava/lang/String; = "serialNumber"

.field private static final URI_APP_HIDE:Ljava/lang/String; = "content://com.miui.home.app.hide"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static isFileExplorerHidden(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {p0, v0, v1}, Lcom/android/fileexplorer/util/MiHomeUtils;->isLauncherIconHidden(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static isLauncherIconHidden(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    const-string v0, "content://com.miui.home.app.hide"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 9
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    const-string v2, "packageName"

    .line 14
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string p1, "activityName"

    .line 19
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string p1, "serialNumber"

    .line 24
    const-string p2, "0"

    .line 26
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    move-result-object p0

    .line 33
    const-string p1, "isAppHidded"

    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_30

    .line 42
    const-string p1, "result"

    .line 44
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2f} :catch_39

    .line 48
    goto :goto_32

    .line 49
    :cond_30
    const-string p0, ""

    .line 51
    :goto_32
    :try_start_32
    const-string p1, "true"

    .line 53
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 56
    move-result p0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_38} :catch_39

    .line 57
    return p0

    .line 58
    :catch_39
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    const/4 p0, 0x0

    .line 63
    return p0
.end method

.method public static restoreFileExplorer(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {p0, v0, v1}, Lcom/android/fileexplorer/util/MiHomeUtils;->restoreLauncherIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static restoreLauncherIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "content://com.miui.home.app.hide"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 9
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    const-string v2, "packageName"

    .line 14
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string p1, "activityName"

    .line 19
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string p1, "serialNumber"

    .line 24
    const-string p2, "0"

    .line 26
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    move-result-object p0

    .line 33
    const-string p1, "restoreHiddenApp"

    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_27

    .line 39
    goto :goto_2b

    .line 40
    :catch_27
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    :goto_2b
    return-void
.end method
