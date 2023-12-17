.class public Lcom/android/fileexplorer/util/InstallAPKHelper;
.super Ljava/lang/Object;
.source "InstallAPKHelper.java"


# static fields
.field private static final LAZY_FILEPROVIDER:Ljava/lang/String; = "com.android.fileexplorer.lazyfileprovider"

.field private static final MAEKET_ADRESS:Ljava/lang/String; = "mimarket://details/detailmini?id="

.field private static final TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/InstallAPKHelper;->installFromMarket(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static existInstallApkInROM(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/util/Build;->IS_STABLE_VERSION:Z

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_6
    invoke-static {p0}, La/a;->A(Ljava/lang/String;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static installFromMarket(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "mimarket://details/detailmini?id="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Landroid/content/Intent;

    .line 24
    const-string v1, "android.intent.action.VIEW"

    .line 26
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 35
    goto :goto_27

    .line 36
    :catch_23
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    :goto_27
    return-void
.end method

.method public static installFromROM(Landroid/content/Context;Ljava/lang/String;)V
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
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    const-string p1, "com.android.fileexplorer.lazyfileprovider"

    .line 15
    invoke-static {p0, p1, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 18
    move-result-object p1

    .line 19
    const-string v1, "application/vnd.android.package-archive"

    .line 21
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    const/high16 p1, 0x10000000

    .line 26
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method

.method public static isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    move-result-object p0

    .line 6
    const/16 v1, 0x4000

    .line 8
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    move-result-object p0

    .line 12
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_10

    .line 14
    if-lez p0, :cond_10

    .line 16
    const/4 v0, 0x1

    .line 17
    :catch_10
    :cond_10
    return v0
.end method

.method public static showInstallFromMarketDialog(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;)V
    .registers 7

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 13
    move-result-object p1

    .line 14
    new-instance p2, Lcom/android/fileexplorer/util/InstallAPKHelper$1;

    .line 16
    invoke-direct {p2, p4, p5, p0, p3}, Lcom/android/fileexplorer/util/InstallAPKHelper$1;-><init>(ZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    const p0, 0x7f1101f8

    .line 22
    invoke-virtual {p1, p0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 25
    move-result-object p0

    .line 26
    const p1, 0x7f110050

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 41
    return-void
.end method
