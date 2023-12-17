.class public Lcom/android/fileexplorer/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field private static final APP_PERMISSION_EXTRA_PKG:Ljava/lang/String; = "extra_pkgname"

.field private static final APP_PERMISSION_MANAGE_ACTION:Ljava/lang/String; = "miui.intent.action.APP_PERM_EDITOR"

.field private static final APP_PERMISSION_MANAGE_PKG:Ljava/lang/String; = "com.miui.securitycenter"

.field public static final PERMISSIONS_REQUIRED:[Ljava/lang/String;

.field public static final PERMISSIONS_REQUIRED_ABOVE_API33:[Ljava/lang/String;

.field public static final PERMISSION_FLAG_ASK:I = 0x1

.field public static final PERMISSION_FLAG_DENIED:I = -0x1

.field public static final PERMISSION_FLAG_FOREGROUND:I = 0x2

.field public static final PERMISSION_FLAG_GRANTED:I = 0x0

.field public static final PERMISSION_FLAG_UNSUPPORT:I = -0x2

.field private static sHasPermission:Z = true


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/fileexplorer/util/PermissionUtils;->PERMISSIONS_REQUIRED:[Ljava/lang/String;

    .line 9
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 11
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    .line 13
    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    .line 15
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/android/fileexplorer/util/PermissionUtils;->PERMISSIONS_REQUIRED_ABOVE_API33:[Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static STORAGE()[Ljava/lang/String;
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x21

    .line 5
    if-lt v0, v1, :cond_9

    .line 7
    sget-object v0, Lcom/android/fileexplorer/util/PermissionUtils;->PERMISSIONS_REQUIRED_ABOVE_API33:[Ljava/lang/String;

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    sget-object v0, Lcom/android/fileexplorer/util/PermissionUtils;->PERMISSIONS_REQUIRED:[Ljava/lang/String;

    .line 12
    :goto_b
    return-object v0
.end method

.method public static STORAGE_CONTAINS_WRITE()[Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lorg/swiftp/Util;->concatStrArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static checkReadExternalStoragePermission(Landroid/content/Context;)Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid33AndLater()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_23

    .line 9
    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    .line 11
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_21

    .line 17
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 19
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_21

    .line 25
    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 27
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_21

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v1, v2

    .line 35
    :goto_22
    return v1

    .line 36
    :cond_23
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 38
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_2c

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move v1, v2

    .line 46
    :goto_2d
    return v1
.end method

.method public static getPermissionStatus(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    const/4 v0, -0x2

    .line 1
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "permissionName"

    .line 2
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.lbe.security.miui.autostartmgr"

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "getPermissionState"

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_25

    const-string p1, "flag"

    .line 5
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_26

    return p0

    :cond_25
    return v0

    :catch_26
    move-exception p0

    const-string p1, "getPermissionStatus error:"

    .line 6
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PermissionUtils"

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getPermissionStatus(Landroid/content/Context;[Ljava/lang/String;)I
    .registers 7

    .line 11
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_16

    aget-object v3, p1, v2

    .line 12
    invoke-static {p0, v3}, Lcom/android/fileexplorer/util/PermissionUtils;->getPermissionStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_15

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_15
    :goto_15
    return v3

    :cond_16
    return v1
.end method

.method public static isGrantPermission()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/util/PermissionUtils;->sHasPermission:Z

    .line 3
    return v0
.end method

.method public static isMiui12_5SdkSupported()Z
    .registers 3

    .line 1
    const-string v0, "ro.miui.ui.version.code"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/miui/maml/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    const/16 v2, 0xb

    .line 10
    if-lt v0, v2, :cond_c

    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_c
    return v1
.end method

.method public static isPermissionNotGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    const/4 p1, -0x1

    .line 6
    if-ne p0, p1, :cond_9

    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    :goto_a
    return p0
.end method

.method public static isSupportPermissionDesc()Z
    .registers 1

    .line 1
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 3
    if-nez v0, :cond_c

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isMiui12_5SdkSupported()Z

    .line 8
    move-result v0

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

.method public static setPermission(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/android/fileexplorer/util/PermissionUtils;->sHasPermission:Z

    .line 3
    return-void
.end method

.method public static startAppDetail(Landroid/content/Context;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const/high16 v1, 0x10000000

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    const-string v3, "package"

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static {v3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 27
    instance-of v2, p0, Landroid/app/Activity;

    .line 29
    if-nez v2, :cond_21

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    :cond_21
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method public static startAppPermsEditor(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "miui.intent.action.APP_PERM_EDITOR"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "com.miui.securitycenter"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    const-string v2, "extra_pkgname"

    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    instance-of v1, p0, Landroid/app/Activity;

    .line 24
    if-nez v1, :cond_1e

    .line 26
    const/high16 v1, 0x10000000

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    :cond_1e
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    return-void
.end method

.method public static startNewAppPermsManager(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->gotoAppDetail(Landroid/content/Context;)V

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance v0, Landroid/content/Intent;

    .line 11
    const-string v1, "miui.intent.action.APP_PERM_EDITOR"

    .line 13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const-string v2, "extra_pkgname"

    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    return-void
.end method
