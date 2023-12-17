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

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/android/fileexplorer/service/ParseUtil;->sLocale:Ljava/util/Locale;

    .line 7
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/util/dao/DirParseDaoUtils;

    .line 6
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/DirParseDaoUtils;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/service/ParseUtil;->mDirParseUtil:Lcom/android/fileexplorer/util/dao/DirParseDaoUtils;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/service/ParseUtil;->mPathAppNames:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/service/ParseUtil;->mDirParseMap:Ljava/util/HashMap;

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/service/ParseUtil;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/service/ParseUtil;->sInstance:Lcom/android/fileexplorer/service/ParseUtil;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/android/fileexplorer/service/ParseUtil;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/service/ParseUtil;->sInstance:Lcom/android/fileexplorer/service/ParseUtil;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/android/fileexplorer/service/ParseUtil;

    .line 14
    invoke-direct {v1}, Lcom/android/fileexplorer/service/ParseUtil;-><init>()V

    .line 17
    sput-object v1, Lcom/android/fileexplorer/service/ParseUtil;->sInstance:Lcom/android/fileexplorer/service/ParseUtil;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw v1

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/service/ParseUtil;->sInstance:Lcom/android/fileexplorer/service/ParseUtil;

    .line 26
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/service/ParseUtil;->mDirParseUtil:Lcom/android/fileexplorer/util/dao/DirParseDaoUtils;

    .line 9
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/util/dao/DirParseDaoUtils;->loadByPaths(Ljava/util/List;)Ljava/util/List;

    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p1

    .line 17
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_4a

    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/fileexplorer/dao/parse/DirParse;

    .line 29
    iget-object v2, p0, Lcom/android/fileexplorer/service/ParseUtil;->mPathAppNames:Ljava/util/HashMap;

    .line 31
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/parse/DirParse;->getPath()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/parse/DirParse;->getAppName()Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v2, p0, Lcom/android/fileexplorer/service/ParseUtil;->mDirParseMap:Ljava/util/HashMap;

    .line 52
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/parse/DirParse;->getPath()Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/parse/DirParse;->getPath()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4c

    .line 74
    goto :goto_10

    .line 75
    :cond_4a
    monitor-exit p0

    .line 76
    return-object v0

    .line 77
    :catchall_4c
    move-exception p1

    .line 78
    monitor-exit p0

    .line 79
    throw p1
.end method


# virtual methods
.method public getAppNameByPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lcom/android/fileexplorer/service/ParseUtil;->sLocale:Ljava/util/Locale;

    .line 15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_23

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/service/ParseUtil;->mPathAppNames:Ljava/util/HashMap;

    .line 27
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/android/fileexplorer/service/ParseUtil;->sLocale:Ljava/util/Locale;

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/android/fileexplorer/service/ParseUtil;->mPathAppNames:Ljava/util/HashMap;

    .line 38
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_34

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/service/ParseUtil;->mPathAppNames:Ljava/util/HashMap;

    .line 46
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/String;

    .line 52
    return-object p1

    .line 53
    :cond_34
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 64
    move-result-object v0

    .line 65
    iget-object v2, p0, Lcom/android/fileexplorer/service/ParseUtil;->mDirParseMap:Ljava/util/HashMap;

    .line 67
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/android/fileexplorer/dao/parse/DirParse;

    .line 73
    if-nez v2, :cond_4b

    .line 75
    return-object v1

    .line 76
    :cond_4b
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/parse/DirParse;->getPackageName()Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    const/4 v4, 0x0

    .line 81
    :try_start_50
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_65

    .line 87
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 89
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 91
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_65

    .line 97
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 99
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;
    :try_end_64
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_50 .. :try_end_64} :catch_65

    .line 101
    move-object v1, v0

    .line 102
    :catch_65
    :cond_65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_73

    .line 108
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/parse/DirParse;->getAppName()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    :cond_73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_7e

    .line 122
    iget-object v0, p0, Lcom/android/fileexplorer/service/ParseUtil;->mPathAppNames:Ljava/util/HashMap;

    .line 124
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
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

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_75

    .line 4
    if-nez p2, :cond_6

    .line 6
    goto :goto_75

    .line 7
    :cond_6
    :try_start_6
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 16
    move-result v1

    .line 17
    if-ge v0, v1, :cond_49

    .line 19
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 25
    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getRelativePath(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_46

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    const-string v2, "/"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_3b

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v3, "/"

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    :cond_3b
    iget-object v2, p0, Lcom/android/fileexplorer/service/ParseUtil;->mPathAppNames:Ljava/util/HashMap;

    .line 62
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_46

    .line 68
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_46
    add-int/lit8 v0, v0, 0x1

    .line 73
    goto :goto_c

    .line 74
    :cond_49
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 77
    move-result p2
    :try_end_4d
    .catchall {:try_start_6 .. :try_end_4d} :catchall_72

    .line 78
    if-eqz p2, :cond_51

    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 82
    :cond_51
    :try_start_51
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/service/ParseUtil;->processFileListSegment(Ljava/util/List;)Ljava/util/List;

    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    move-result-object p1

    .line 93
    :goto_5c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_70

    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/android/fileexplorer/service/ParseUtil;->mPathAppNames:Ljava/util/HashMap;

    .line 107
    const-string v1, ""

    .line 109
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catchall {:try_start_51 .. :try_end_6f} :catchall_72

    .line 112
    goto :goto_5c

    .line 113
    :cond_70
    monitor-exit p0

    .line 114
    return-void

    .line 115
    :catchall_72
    move-exception p1

    .line 116
    monitor-exit p0

    .line 117
    throw p1

    .line 118
    :cond_75
    :goto_75
    monitor-exit p0

    .line 119
    return-void
.end method
