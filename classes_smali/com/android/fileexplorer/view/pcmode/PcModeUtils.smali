.class public Lcom/android/fileexplorer/view/pcmode/PcModeUtils;
.super Ljava/lang/Object;
.source "PcModeUtils.java"


# static fields
.field private static final START_STRING:Ljava/lang/String; = "/storage/emulated/0/PalmPcDesktop"

.field private static final TAG:Ljava/lang/String; = "PcModeUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPcModeFileInfo(Landroid/content/Context;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/PcModeFileInfo;
    .registers 6

    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/model/ComponentNameFormatUtils;->decodeFileName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    if-eqz p0, :cond_28

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/fileexplorer/util/PackageManagerUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/PackageManagerUtils;->getApplicationInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/android/fileexplorer/util/PackageManagerUtils;->getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_29

    :cond_28
    move-object p0, v1

    :goto_29
    new-instance v2, Lcom/android/fileexplorer/model/PcModeFileInfo;

    invoke-direct {v2, p1}, Lcom/android/fileexplorer/model/PcModeFileInfo;-><init>(Lcom/android/fileexplorer/model/FileInfo;)V

    iput-object v0, v2, Lcom/android/fileexplorer/model/PcModeFileInfo;->mComponentName:Landroid/content/ComponentName;

    iput-object v1, v2, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    iput-object p0, v2, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v2
.end method

.method public static getShowPcModeLayout(Lcom/android/fileexplorer/model/FileInfo;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, ".shortcut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "/storage/emulated/0/PalmPcDesktop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method
