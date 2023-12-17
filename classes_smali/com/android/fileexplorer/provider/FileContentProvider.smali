.class public Lcom/android/fileexplorer/provider/FileContentProvider;
.super Lcom/android/fileexplorer/provider/AbsProviderManager;
.source "FileContentProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.android.fileexplorer.dao.filecontent.provider"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/provider/AbsProviderManager;-><init>()V

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

    new-instance v0, Lcom/android/fileexplorer/provider/AppScanConfigSubProvider;

    invoke-direct {v0}, Lcom/android/fileexplorer/provider/AppScanConfigSubProvider;-><init>()V

    const-string v1, "appscanconfig"

    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    new-instance v0, Lcom/android/fileexplorer/provider/AppInfoSubProvider;

    invoke-direct {v0}, Lcom/android/fileexplorer/provider/AppInfoSubProvider;-><init>()V

    const-string v1, "appinfo"

    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    new-instance v0, Lcom/android/fileexplorer/provider/VersionInfoSubProvider;

    invoke-direct {v0}, Lcom/android/fileexplorer/provider/VersionInfoSubProvider;-><init>()V

    const-string v1, "versioninfo"

    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    new-instance v0, Lcom/android/fileexplorer/provider/BlackDirInfoSubProvider;

    invoke-direct {v0}, Lcom/android/fileexplorer/provider/BlackDirInfoSubProvider;-><init>()V

    const-string v1, "blackdirinfo"

    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    new-instance v0, Lcom/android/fileexplorer/provider/FileItemSubProvider;

    invoke-direct {v0}, Lcom/android/fileexplorer/provider/FileItemSubProvider;-><init>()V

    const-string v1, "fileitem"

    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    new-instance v0, Lcom/android/fileexplorer/provider/FileGroupSubProvider;

    invoke-direct {v0}, Lcom/android/fileexplorer/provider/FileGroupSubProvider;-><init>()V

    const-string v1, "filegroup"

    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    new-instance v0, Lcom/android/fileexplorer/provider/AppTagSubProvider;

    invoke-direct {v0}, Lcom/android/fileexplorer/provider/AppTagSubProvider;-><init>()V

    const-string v1, "apptag"

    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    new-instance v0, Lcom/android/fileexplorer/provider/ContentTagSubProvider;

    invoke-direct {v0}, Lcom/android/fileexplorer/provider/ContentTagSubProvider;-><init>()V

    const-string v1, "contenttag"

    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    new-instance v0, Lcom/android/fileexplorer/provider/DirParseSubProvider;

    invoke-direct {v0}, Lcom/android/fileexplorer/provider/DirParseSubProvider;-><init>()V

    const-string v1, "dirparse"

    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V

    invoke-super {p0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->onCreate()Z

    move-result v0

    return v0
.end method
