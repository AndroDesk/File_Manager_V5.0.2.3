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

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/util/PermissionUtils;->PERMISSIONS_REQUIRED:[Ljava/lang/String;

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/util/PermissionUtils;->PERMISSIONS_REQUIRED_ABOVE_API33:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static STORAGE()[Ljava/lang/String;
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_9

    sget-object v0, Lcom/android/fileexplorer/util/PermissionUtils;->PERMISSIONS_REQUIRED_ABOVE_API33:[Ljava/lang/String;

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/android/fileexplorer/util/PermissionUtils;->PERMISSIONS_REQUIRED:[Ljava/lang/String;

    :goto_b
    return-object v0
.end method

.method public static STORAGE_CONTAINS_WRITE()[Ljava/lang/String;
    .registers 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/swiftp/Util;->concatStrArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkReadExternalStoragePermission(Landroid/content/Context;)Z
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid33AndLater()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    return v1

    :cond_23
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    return v1
.end method

.method public static getPermissionStatus(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    const/4 v0, -0x2

    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "permissionName"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.lbe.security.miui.autostartmgr"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "getPermissionState"

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_25

    const-string p1, "flag"

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

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

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

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_16

    aget-object v3, p1, v2

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

    sget-boolean v0, Lcom/android/fileexplorer/util/PermissionUtils;->sHasPermission:Z

    return v0
.end method

.method public static isMiui12_5SdkSupported()Z
    .registers 3

    const-string v0, "ro.miui.ui.version.code"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/maml/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public static isPermissionNotGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static isSupportPermissionDesc()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static setPermission(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/fileexplorer/util/PermissionUtils;->sHasPermission:Z

    return-void
.end method

.method public static startAppDetail(Landroid/content/Context;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_21
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startAppPermsEditor(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.APP_PERM_EDITOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_pkgname"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1e

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1e
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startNewAppPermsManager(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->gotoAppDetail(Landroid/content/Context;)V

    return-void

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.APP_PERM_EDITOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_pkgname"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
