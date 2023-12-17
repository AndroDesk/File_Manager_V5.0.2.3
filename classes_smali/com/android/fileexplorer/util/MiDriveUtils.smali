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

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Lcom/android/fileexplorer/util/RomUtils;->ANDROID_T:I

    if-lt v0, v1, :cond_9

    const-string v0, "/product/data-app/MIUIMiDrive/MIUIMiDrive.apk"

    goto :goto_b

    :cond_9
    const-string v0, "/system/data-app/MiDrive/MiDrive.apk"

    :goto_b
    sput-object v0, Lcom/android/fileexplorer/util/MiDriveUtils;->INSTALL_PATH_IN_ROM:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/util/MiDriveUtils;->installFromMiMarket(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/util/MiDriveUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Ljava/util/Map;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/util/MiDriveUtils;->buildForm(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400()Z
    .registers 1

    sget-boolean v0, Lcom/android/fileexplorer/util/MiDriveUtils;->sIsInMarket:Z

    return v0
.end method

.method public static synthetic access$402(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/fileexplorer/util/MiDriveUtils;->sIsInMarket:Z

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "="

    const-string v4, "&"

    invoke-static {v0, v2, v3, v1, v4}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkWhetherInMiMarket()V
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/util/MiDriveUtils$CheckAppInfoTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/util/MiDriveUtils$CheckAppInfoTask;-><init>(Lcom/android/fileexplorer/util/MiDriveUtils$1;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static existInstallApkInROM()Z
    .registers 2

    sget-boolean v0, Lcom/android/fileexplorer/util/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/fileexplorer/util/MiDriveUtils;->INSTALL_PATH_IN_ROM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static getMiDriveMainActivityIntent()Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.newmidrive"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.miui.newmidrive.ui.MiDriveFamilyActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static installFromMiMarket(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    const-string v0, "mimarket://details/detailmini?id=com.miui.newmidrive"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_18
    return-void
.end method

.method public static installMiDriveFromROM(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/fileexplorer/util/MiDriveUtils;->INSTALL_PATH_IN_ROM:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.fileexplorer.lazyfileprovider"

    invoke-static {p0, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static isMiDriveAvailable(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/android/fileexplorer/util/MiDriveUtils;->getMiDriveMainActivityIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private static showInstallMiDriverDialog(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110234

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11038a

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/util/MiDriveUtils$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/util/MiDriveUtils$1;-><init>(Landroid/content/Context;)V

    const p0, 0x7f110233

    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f110050

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static startMiDrive(Landroid/content/Context;)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-static {p0}, Lcom/android/fileexplorer/util/MiDriveUtils;->isMiDriveAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p0}, Lcom/android/fileexplorer/util/MiDriveUtils;->startMiDriveMainActivity(Landroid/content/Context;)V

    goto :goto_1c

    :cond_d
    const v2, 0x7f110234

    const v3, 0x7f11038a

    const/4 v5, 0x1

    sget-object v6, Lcom/android/fileexplorer/util/MiDriveUtils;->INSTALL_PATH_IN_ROM:Ljava/lang/String;

    const-string v4, "com.miui.newmidrive"

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/fileexplorer/util/InstallAPKHelper;->showInstallFromMarketDialog(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;)V

    :goto_1c
    return-void
.end method

.method private static startMiDriveMainActivity(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/util/MiDriveUtils;->getMiDriveMainActivityIntent()Landroid/content/Intent;

    move-result-object v0

    :try_start_4
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_d

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_d
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_10} :catch_11

    goto :goto_28

    :catch_11
    move-exception p0

    sget-object v0, Lcom/android/fileexplorer/util/MiDriveUtils;->TAG:Ljava/lang/String;

    const-string v1, "startMiDrive error: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_28
    return-void
.end method

.method private static startMiDriveQuickApp(Landroid/content/Context;)V
    .registers 6

    const-string v0, "https://i.mi.com/drive"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "com.android.browser"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    if-nez v1, :cond_31

    sget-object v1, Lcom/android/fileexplorer/util/MiDriveUtils;->TAG:Ljava/lang/String;

    const-string v3, "MIUI browser is not installed, use default browsers"

    invoke-static {v1, v3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_31
    :try_start_31
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_3a

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3a
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_31 .. :try_end_3d} :catch_3e

    goto :goto_55

    :catch_3e
    move-exception p0

    sget-object v0, Lcom/android/fileexplorer/util/MiDriveUtils;->TAG:Ljava/lang/String;

    const-string v1, "startMiDrive QuickApp error: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_55
    return-void
.end method
