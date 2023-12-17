.class Lcom/android/fileexplorer/service/ParseUtil;
.super Ljava/lang/Object;
.source "ParseUtil.java"


# static fields
.field private static volatile sInstance:Lcom/android/fileexplorer/service/ParseUtil;

.field private static sLocale:Ljava/util/Locale;


# instance fields
.field private mDirParseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/dao/parse/DirParse;",
            ">;"
        }
    .end annotation
.end field

.field private mDirParseUtil:Lcom/android/fileexplorer/util/dao/DirParseDaoUtils;

.field private mPathAppNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/service/ParseUtil;->sLocale:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/fileexplorer/util/dao/DirParseDaoUtils;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/DirParseDaoUtils;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/service/ParseUtil;->mDirParseUtil:Lcom/android/fileexplorer/util/dao/DirParseDaoUtils;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/service/ParseUtil;->mPathAppNames:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/service/ParseUtil;->mDirParseMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/service/ParseUtil;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/service/ParseUtil;->sInstance:Lcom/android/fileexplorer/service/ParseUtil;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/fileexplorer/service/ParseUtil;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/service/ParseUtil;->sInstance:Lcom/android/fileexplorer/service/ParseUtil;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/fileexplorer/service/ParseUtil;

    invoke-direct {v1}, Lcom/android/fileexplorer/service/ParseUtil;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/service/ParseUtil;->sInstance:Lcom/android/fileexplorer/service/ParseUtil;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/service/ParseUtil;->sInstance:Lcom/android/fileexplorer/service/ParseUtil;

    return-object v0
.end method

.method private declared-synchronized processFileListSegment(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/service/ParseUtil;->mDirParseUtil:Lcom/android/fileexplorer/util/dao/DirParseDaoUtils;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/util/dao/DirParseDaoUtils;->loadByPaths(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/parse/DirParse;

    iget-object v2, p0, Lcom/android/fileexplorer/service/ParseUtil;->mPathAppNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/parse/DirParse;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/parse/DirParse;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/fileexplorer/service/ParseUtil;->mDirParseMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/parse/DirParse;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/parse/DirParse;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4c

    goto :goto_10

    :cond_4a
    monitor-exit p0

    return-object v0

    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getAppNameByPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/fileexplorer/service/ParseUtil;->sLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/fileexplorer/service/ParseUtil;->mPathAppNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/service/ParseUtil;->sLocale:Ljava/util/Locale;

    :cond_23
    iget-object v0, p0, Lcom/android/fileexplorer/service/ParseUtil;->mPathAppNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/fileexplorer/service/ParseUtil;->mPathAppNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_34
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/fileexplorer/service/ParseUtil;->mDirParseMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/parse/DirParse;

    if-nez v2, :cond_4b

    return-object v1

    :cond_4b
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/parse/DirParse;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_50
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_65

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;
    :try_end_64
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_50 .. :try_end_64} :catch_65

    move-object v1, v0

    :catch_65
    :cond_65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/parse/DirParse;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/android/fileexplorer/service/ParseUtil;->mPathAppNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7e
    return-object v1
.end method

.method public declared-synchronized preFetchAppNamesMapByPaths(Landroid/content/Context;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_75

    if-nez p2, :cond_6

    goto :goto_75

    :cond_6
    :try_start_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_49

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3b
    iget-object v2, p0, Lcom/android/fileexplorer/service/ParseUtil;->mPathAppNames:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_49
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2
    :try_end_4d
    .catchall {:try_start_6 .. :try_end_4d} :catchall_72

    if-eqz p2, :cond_51

    monitor-exit p0

    return-void

    :cond_51
    :try_start_51
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/service/ParseUtil;->processFileListSegment(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_70

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/fileexplorer/service/ParseUtil;->mPathAppNames:Ljava/util/HashMap;

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catchall {:try_start_51 .. :try_end_6f} :catchall_72

    goto :goto_5c

    :cond_70
    monitor-exit p0

    return-void

    :catchall_72
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_75
    :goto_75
    monitor-exit p0

    return-void
.end method
