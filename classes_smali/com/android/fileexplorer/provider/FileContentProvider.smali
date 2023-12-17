.class public Lcom/android/fileexplorer/provider/FileContentProvider;
.super Lcom/android/fileexplorer/provider/AbsProviderManager;
.source "FileContentProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.android.fileexplorer.dao.filecontent.provider"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/provider/AbsProviderManager;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .registers 2

    const-string v0, "com.android.fileexplorer.dao.filecontent.provider"

    return-object v0
.end method

.method public onCreate()Z
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/provider/AppScanConfigSubProvider;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/provider/AppScanConfigSubProvider;-><init>()V

    .line 6
    const-string v1, "appscanconfig"

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    .line 11
    new-instance v0, Lcom/android/fileexplorer/provider/AppInfoSubProvider;

    .line 13
    invoke-direct {v0}, Lcom/android/fileexplorer/provider/AppInfoSubProvider;-><init>()V

    .line 16
    const-string v1, "appinfo"

    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    .line 21
    new-instance v0, Lcom/android/fileexplorer/provider/VersionInfoSubProvider;

    .line 23
    invoke-direct {v0}, Lcom/android/fileexplorer/provider/VersionInfoSubProvider;-><init>()V

    .line 26
    const-string v1, "versioninfo"

    .line 28
    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    .line 31
    new-instance v0, Lcom/android/fileexplorer/provider/BlackDirInfoSubProvider;

    .line 33
    invoke-direct {v0}, Lcom/android/fileexplorer/provider/BlackDirInfoSubProvider;-><init>()V

    .line 36
    const-string v1, "blackdirinfo"

    .line 38
    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    .line 41
    new-instance v0, Lcom/android/fileexplorer/provider/FileItemSubProvider;

    .line 43
    invoke-direct {v0}, Lcom/android/fileexplorer/provider/FileItemSubProvider;-><init>()V

    .line 46
    const-string v1, "fileitem"

    .line 48
    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    .line 51
    new-instance v0, Lcom/android/fileexplorer/provider/FileGroupSubProvider;

    .line 53
    invoke-direct {v0}, Lcom/android/fileexplorer/provider/FileGroupSubProvider;-><init>()V

    .line 56
    const-string v1, "filegroup"

    .line 58
    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    .line 61
    new-instance v0, Lcom/android/fileexplorer/provider/AppTagSubProvider;

    .line 63
    invoke-direct {v0}, Lcom/android/fileexplorer/provider/AppTagSubProvider;-><init>()V

    .line 66
    const-string v1, "apptag"

    .line 68
    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    .line 71
    new-instance v0, Lcom/android/fileexplorer/provider/ContentTagSubProvider;

    .line 73
    invoke-direct {v0}, Lcom/android/fileexplorer/provider/ContentTagSubProvider;-><init>()V

    .line 76
    const-string v1, "contenttag"

    .line 78
    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    .line 81
    new-instance v0, Lcom/android/fileexplorer/provider/DirParseSubProvider;

    .line 83
    invoke-direct {v0}, Lcom/android/fileexplorer/provider/DirParseSubProvider;-><init>()V

    .line 86
    const-string v1, "dirparse"

    .line 88
    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    .line 91
    invoke-super {p0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->onCreate()Z

    .line 94
    move-result v0

    .line 95
    return v0
.end method
