.class public Lcom/android/fileexplorer/util/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMiuiVersion()I
    .registers 2

    .line 1
    const-string v0, "ro.miui.ui.version.code"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/UIUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_20

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/util/UIUtils;->isMiuiXIISdkSupported()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1e

    .line 14
    invoke-static {p0}, Lcom/android/fileexplorer/util/DisplayUtil;->isSupportGestureLine(Landroid/content/Context;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1e

    .line 20
    invoke-static {p0}, Lcom/android/fileexplorer/util/DisplayUtil;->isEnableGestureLine(Landroid/content/Context;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1e

    .line 26
    invoke-static {p0}, Lcom/android/fileexplorer/util/DisplayUtil;->getNavigationBarHeightFromProp(Landroid/content/Context;)I

    .line 29
    move-result p0

    .line 30
    goto :goto_24

    .line 31
    :cond_1e
    move p0, v1

    .line 32
    goto :goto_24

    .line 33
    :cond_20
    invoke-static {p0}, Lcom/android/fileexplorer/util/DisplayUtil;->getNavigationBarHeightFromProp(Landroid/content/Context;)I

    .line 36
    move-result p0

    .line 37
    :goto_24
    if-gez p0, :cond_27

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v1, p0

    .line 41
    :goto_28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v0, "getNavigationBarHeight = "

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    const-string v0, "UIUtils"

    .line 60
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return v1
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 4

    .line 1
    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "status_bar_height"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    move-result p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    .line 37
    goto :goto_2a

    .line 38
    :catch_25
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    const/4 p0, 0x0

    .line 43
    :goto_2a
    return p0
.end method

.method public static isAboveAndroidS()Z
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1f

    .line 5
    if-lt v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public static isInFullWindowGestureMode(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "force_fsg_nav_bar"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_e

    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_e
    return v1
.end method

.method public static isMiuiWidgetSupported(Landroid/content/Context;)Z
    .registers 5

    .line 1
    const-string v0, "isMiuiWidgetSupported"

    .line 3
    const-string v1, "content://com.miui.personalassistant.widget.external"

    .line 5
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object p0

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p0, v1, v0, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_1e

    .line 21
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 24
    move-result p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_1a

    .line 25
    move v2, p0

    .line 26
    goto :goto_1e

    .line 27
    :catch_1a
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    :cond_1e
    :goto_1e
    return v2
.end method

.method public static isMiuiXIISdkSupported()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/UIUtils;->getMiuiVersion()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 7
    if-lt v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method
