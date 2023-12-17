.class Lcom/android/fileexplorer/search/CloudFileSearchImpl;
.super Lcom/android/fileexplorer/search/SearchEngineAbs;
.source "CloudFileSearchImpl.java"


# static fields
.field private static final FILECOLUMN_DATA_INDEX:I = 0x1

.field private static final SEARCH_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CloudFileSearchImpl"


# instance fields
.field private dao:Lcom/android/fileexplorer/dao/GreenDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/dao/GreenDao<",
            "Lcom/android/cloud/bean/CloudFileItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "_id"

    .line 3
    const-string v1, "_data"

    .line 5
    const-string v2, "mime_type"

    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->SEARCH_COLUMNS:[Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/search/SearchEngineAbs;-><init>()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->mContext:Landroid/content/Context;

    .line 14
    new-instance v0, Lcom/android/fileexplorer/dao/GreenDao;

    .line 16
    const-class v1, Lcom/android/cloud/bean/CloudFileItem;

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v2}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/dao/GreenDao;-><init>(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 26
    iput-object v0, p0, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->dao:Lcom/android/fileexplorer/dao/GreenDao;

    .line 28
    return-void
.end method

.method public static create(J)Lcom/android/fileexplorer/search/CloudFileSearchImpl;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/search/CloudFileSearchImpl;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/search/CloudFileSearchImpl;-><init>()V

    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/android/fileexplorer/search/SearchEngineAbs;->addFilter(J)V

    .line 9
    return-object v0
.end method

.method private getCloudFileTypeByInt(I)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v0

    .line 7
    if-ne p1, v0, :cond_b

    .line 9
    const-string p1, "pic"

    .line 11
    return-object p1

    .line 12
    :cond_b
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 17
    move-result v0

    .line 18
    if-ne p1, v0, :cond_16

    .line 20
    const-string p1, "audio"

    .line 22
    return-object p1

    .line 23
    :cond_16
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 28
    move-result v0

    .line 29
    if-ne p1, v0, :cond_21

    .line 31
    const-string p1, "video"

    .line 33
    return-object p1

    .line 34
    :cond_21
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 39
    move-result v0

    .line 40
    if-ne p1, v0, :cond_2c

    .line 42
    const-string p1, "zip"

    .line 44
    return-object p1

    .line 45
    :cond_2c
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 50
    move-result v0

    .line 51
    if-ne p1, v0, :cond_37

    .line 53
    const-string p1, "apk"

    .line 55
    return-object p1

    .line 56
    :cond_37
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 61
    move-result v0

    .line 62
    if-ne p1, v0, :cond_42

    .line 64
    const-string p1, "doc"

    .line 66
    return-object p1

    .line 67
    :cond_42
    const/4 p1, 0x0

    .line 68
    return-object p1
.end method

.method private seachByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->queryCloudFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 9
    move-result-object p1

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_15

    .line 21
    return-object v0

    .line 22
    :cond_15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v1

    .line 26
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_29

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/cloud/bean/CloudFileItem;

    .line 38
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_19

    .line 42
    :cond_29
    const-string v1, "cloud seachByType result:"

    .line 44
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object v1

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 51
    move-result p1

    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    const-string v1, "searchengine"

    .line 61
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p1, Lcom/android/fileexplorer/search/SearchResult;

    .line 66
    const-class v1, Lcom/android/cloud/bean/CloudFileItem;

    .line 68
    invoke-direct {p1, p2, v1}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 71
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    return-object v0
.end method


# virtual methods
.method public queryCloudFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/cloud/bean/CloudFileItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveInit()Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_c

    .line 12
    return-object v0

    .line 13
    :cond_c
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p1, p2}, Lcom/android/cloud/CloudDriveManager;->search(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_36

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    move-result p2

    .line 27
    if-lez p2, :cond_36

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object p1

    .line 33
    :cond_20
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_36

    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 45
    invoke-static {p2}, Lcom/android/cloud/util/CloudFileUtils;->transSyncInfoToFileItem(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/android/cloud/bean/CloudFileItem;

    .line 48
    move-result-object p2

    .line 49
    if-eqz p2, :cond_20

    .line 51
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_20

    .line 55
    :cond_36
    return-object v0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 1
    const-string p2, ""

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->seachByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public searchCategory(Ljava/lang/String;IJ)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->getCloudFileTypeByInt(I)Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->seachByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public searchFolder(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "folder"

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->seachByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public searchTag(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
