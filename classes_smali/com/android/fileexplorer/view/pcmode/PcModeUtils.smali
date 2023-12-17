.class public Lcom/android/fileexplorer/view/pcmode/PcModeUtils;
.super Ljava/lang/Object;
.source "PcModeUtils.java"


# static fields
.field private static final START_STRING:Ljava/lang/String; = "/storage/emulated/0/PalmPcDesktop"

.field private static final TAG:Ljava/lang/String; = "PcModeUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPcModeFileInfo(Landroid/content/Context;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/PcModeFileInfo;
    .registers 6

    .line 1
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/model/ComponentNameFormatUtils;->decodeFileName(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_28

    .line 10
    if-eqz p0, :cond_28

    .line 12
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-static {p0, v1}, Lcom/android/fileexplorer/util/PackageManagerUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/PackageManagerUtils;->getApplicationInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0, v2}, Lcom/android/fileexplorer/util/PackageManagerUtils;->getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object p0

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move-object p0, v1

    .line 42
    :goto_29
    new-instance v2, Lcom/android/fileexplorer/model/PcModeFileInfo;

    .line 44
    invoke-direct {v2, p1}, Lcom/android/fileexplorer/model/PcModeFileInfo;-><init>(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 47
    iput-object v0, v2, Lcom/android/fileexplorer/model/PcModeFileInfo;->mComponentName:Landroid/content/ComponentName;

    .line 49
    iput-object v1, v2, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    .line 51
    iput-object p0, v2, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 53
    return-object v2
.end method

.method public static getShowPcModeLayout(Lcom/android/fileexplorer/model/FileInfo;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 3
    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_22

    .line 11
    const-string v1, ".shortcut"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_22

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_22

    .line 25
    const-string v0, "/storage/emulated/0/PalmPcDesktop"

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_22

    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_22
    const/4 p0, 0x0

    .line 36
    return p0
.end method
