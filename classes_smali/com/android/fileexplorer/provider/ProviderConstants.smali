.class public Lcom/android/fileexplorer/provider/ProviderConstants;
.super Ljava/lang/Object;
.source "ProviderConstants.java"


# static fields
.field public static final APPSCAN_CONFIG_PATH:Ljava/lang/String; = "appscanconfig"

.field public static final APPTAG_PATH:Ljava/lang/String; = "apptag"

.field public static final APP_INFO_PATH:Ljava/lang/String; = "appinfo"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.fileexplorer.dao.filecontent.provider"

.field public static final BLACK_DIR_INFO_PATH:Ljava/lang/String; = "blackdirinfo"

.field public static final CONTENTTAG_PATH:Ljava/lang/String; = "contenttag"

.field public static final DIRPARSE_PATH:Ljava/lang/String; = "dirparse"

.field public static final FILEGROUP_DETAIL:Ljava/lang/String; = "filegroupdetail"

.field public static final FILEGROUP_PATH:Ljava/lang/String; = "filegroup"

.field public static final FILEITEM_PATH:Ljava/lang/String; = "fileitem"

.field public static final SEARCH_EXPORT_AUTHORITY:Ljava/lang/String; = "com.android.fileexplorer.provider.searchexport"

.field public static final VERSION_INFO_PATH:Ljava/lang/String; = "versioninfo"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "content://com.android.fileexplorer.dao.filecontent.provider/"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
