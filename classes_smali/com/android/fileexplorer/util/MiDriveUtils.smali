.class public Lcom/android/fileexplorer/util/MiDriveUtils;
.super Ljava/lang/Object;
.source "MiDriveUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/util/MiDriveUtils$CheckAppInfoTask;
    }
.end annotation


# static fields
.field private static final INSTALL_PATH_IN_ROM:Ljava/lang/String;

.field private static final MAIN_ACTIVITY_CLASS:Ljava/lang/String; = "com.miui.newmidrive.ui.MiDriveFamilyActivity"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.miui.newmidrive"

.field private static final TAG:Ljava/lang/String; = "MiDriveUtils"

.field private static final URL_APP_INFO:Ljava/lang/String; = "https://app.market.xiaomi.com/apm/app/package/"

.field private static volatile sIsInMarket:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    sget v1, Lcom/android/fileexplorer/util/RomUtils;->ANDROID_T:I

    .line 5
    if-lt v0, v1, :cond_9

    .line 7
    const-string v0, "/product/data-app/MIUIMiDrive/MIUIMiDrive.apk"

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const-string v0, "/system/data-app/MiDrive/MiDrive.apk"

    .line 12
    :goto_b
    sput-object v0, Lcom/android/fileexplorer/util/MiDriveUtils;->INSTALL_PATH_IN_ROM:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/MiDriveUtils;->installFromMiMarket(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/MiDriveUtils;->TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$300(Ljava/util/Map;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/MiDriveUtils;->buildForm(Ljava/util/Map;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$400()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/util/MiDriveUtils;->sIsInMarket:Z

    .line 3
    return v0
.end method

.method public static synthetic access$402(Z)Z
    .registers 1

    .line 1
    sput-boolean p0, Lcom/android/fileexplorer/util/MiDriveUtils;->sIsInMarket:Z

    .line 3
    return p0
.end method

.method private static buildForm(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2d

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 38
    const-string v3, "="

    .line 40
    const-string v4, "&"

    .line 42
    invoke-static {v0, v2, v3, v1, v4}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    goto :goto_d

    .line 46
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public static checkWhetherInMiMarket()V
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/MiDriveUtils$CheckAppInfoTask;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/util/MiDriveUtils$CheckAppInfoTask;-><init>(Lcom/android/fileexplorer/util/MiDriveUtils$1;)V

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    .line 10
    return-void
.end method

.method public static existInstallApkInROM()Z
    .registers 2

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/util/Build;->IS_STABLE_VERSION:Z

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    new-instance v0, Ljava/io/File;

    .line 9
    sget-object v1, Lcom/android/fileexplorer/util/MiDriveUtils;->INSTALL_PATH_IN_ROM:Ljava/lang/String;

    .line 11
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method private static getMiDriveMainActivityIntent()Landroid/content/Intent;
    .registers 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "com.miui.newmidrive"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    const-string v2, "com.miui.newmidrive.ui.MiDriveFamilyActivity"

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    return-object v0
.end method

.method private static installFromMiMarket(Landroid/content/Context;)V
    .registers 4

    .line 1
    :try_start_0
    const-string v0, "mimarket://details/detailmini?id=com.miui.newmidrive"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/content/Intent;

    .line 9
    const-string v2, "android.intent.action.VIEW"

    .line 11
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 20
    goto :goto_18

    .line 21
    :catch_14
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    :goto_18
    return-void
.end method

.method public static installMiDriveFromROM(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/io/File;

    .line 10
    sget-object v2, Lcom/android/fileexplorer/util/MiDriveUtils;->INSTALL_PATH_IN_ROM:Ljava/lang/String;

    .line 12
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    const-string v2, "com.android.fileexplorer.lazyfileprovider"

    .line 17
    invoke-static {p0, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 20
    move-result-object v1

    .line 21
    const-string v2, "application/vnd.android.package-archive"

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const/high16 v1, 0x10000000

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method private static isMiDriveAvailable(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/util/MiDriveUtils;->getMiDriveMainActivityIntent()Landroid/content/Intent;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_10

    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_10
    return v1
.end method

.method private static showInstallMiDriverDialog(Landroid/content/Context;)V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    const v1, 0x7f110234

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f11038a

    .line 16
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/android/fileexplorer/util/MiDriveUtils$1;

    .line 22
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/util/MiDriveUtils$1;-><init>(Landroid/content/Context;)V

    .line 25
    const p0, 0x7f110233

    .line 28
    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 31
    move-result-object p0

    .line 32
    const v0, 0x7f110050

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 47
    return-void
.end method

.method public static startMiDrive(Landroid/content/Context;)V
    .registers 8

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-static {p0}, Lcom/android/fileexplorer/util/MiDriveUtils;->isMiDriveAvailable(Landroid/content/Context;)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_d

    .line 10
    invoke-static {p0}, Lcom/android/fileexplorer/util/MiDriveUtils;->startMiDriveMainActivity(Landroid/content/Context;)V

    .line 13
    goto :goto_1c

    .line 14
    :cond_d
    const v2, 0x7f110234

    .line 17
    const v3, 0x7f11038a

    .line 20
    const/4 v5, 0x1

    .line 21
    sget-object v6, Lcom/android/fileexplorer/util/MiDriveUtils;->INSTALL_PATH_IN_ROM:Ljava/lang/String;

    .line 23
    const-string v4, "com.miui.newmidrive"

    .line 25
    move-object v1, p0

    .line 26
    invoke-static/range {v1 .. v6}, Lcom/android/fileexplorer/util/InstallAPKHelper;->showInstallFromMarketDialog(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;)V

    .line 29
    :goto_1c
    return-void
.end method

.method private static startMiDriveMainActivity(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/MiDriveUtils;->getMiDriveMainActivityIntent()Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    :try_start_4
    instance-of v1, p0, Landroid/app/Activity;

    .line 7
    if-nez v1, :cond_d

    .line 9
    const/high16 v1, 0x10000000

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 14
    :cond_d
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_10} :catch_11

    .line 17
    goto :goto_28

    .line 18
    :catch_11
    move-exception p0

    .line 19
    sget-object v0, Lcom/android/fileexplorer/util/MiDriveUtils;->TAG:Ljava/lang/String;

    .line 21
    const-string v1, "startMiDrive error: "

    .line 23
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_28
    return-void
.end method

.method private static startMiDriveQuickApp(Landroid/content/Context;)V
    .registers 6

    .line 1
    const-string v0, "https://i.mi.com/drive"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/content/Intent;

    .line 9
    const-string v2, "android.intent.action.VIEW"

    .line 11
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 14
    const-string v3, "com.android.browser"

    .line 16
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 31
    move-result v3

    .line 32
    if-lez v3, :cond_22

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 v1, 0x0

    .line 36
    :goto_23
    if-nez v1, :cond_31

    .line 38
    sget-object v1, Lcom/android/fileexplorer/util/MiDriveUtils;->TAG:Ljava/lang/String;

    .line 40
    const-string v3, "MIUI browser is not installed, use default browsers"

    .line 42
    invoke-static {v1, v3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Landroid/content/Intent;

    .line 47
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    :cond_31
    :try_start_31
    instance-of v0, p0, Landroid/app/Activity;

    .line 52
    if-nez v0, :cond_3a

    .line 54
    const/high16 v0, 0x10000000

    .line 56
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    :cond_3a
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_31 .. :try_end_3d} :catch_3e

    .line 62
    goto :goto_55

    .line 63
    :catch_3e
    move-exception p0

    .line 64
    sget-object v0, Lcom/android/fileexplorer/util/MiDriveUtils;->TAG:Ljava/lang/String;

    .line 66
    const-string v1, "startMiDrive QuickApp error: "

    .line 68
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_55
    return-void
.end method
