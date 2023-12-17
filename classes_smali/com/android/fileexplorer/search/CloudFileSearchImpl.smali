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

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "mime_type"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->SEARCH_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/android/fileexplorer/search/SearchEngineAbs;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/fileexplorer/dao/GreenDao;

    const-class v1, Lcom/android/cloud/bean/CloudFileItem;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/dao/GreenDao;-><init>(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    iput-object v0, p0, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->dao:Lcom/android/fileexplorer/dao/GreenDao;

    return-void
.end method

.method public static create(J)Lcom/android/fileexplorer/search/CloudFileSearchImpl;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/search/CloudFileSearchImpl;

    invoke-direct {v0}, Lcom/android/fileexplorer/search/CloudFileSearchImpl;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/android/fileexplorer/search/SearchEngineAbs;->addFilter(J)V

    return-object v0
.end method

.method private getCloudFileTypeByInt(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_b

    const-string p1, "pic"

    return-object p1

    :cond_b
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_16

    const-string p1, "audio"

    return-object p1

    :cond_16
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_21

    const-string p1, "video"

    return-object p1

    :cond_21
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2c

    const-string p1, "zip"

    return-object p1

    :cond_2c
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_37

    const-string p1, "apk"

    return-object p1

    :cond_37
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_42

    const-string p1, "doc"

    return-object p1

    :cond_42
    const/4 p1, 0x0

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->queryCloudFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    return-object v0

    :cond_15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cloud/bean/CloudFileItem;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_29
    const-string v1, "cloud seachByType result:"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "searchengine"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/fileexplorer/search/SearchResult;

    const-class v1, Lcom/android/cloud/bean/CloudFileItem;

    invoke-direct {p1, p2, v1}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveInit()Z

    move-result v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/cloud/CloudDriveManager;->search(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_36

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_36

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-static {p2}, Lcom/android/cloud/util/CloudFileUtils;->transSyncInfoToFileItem(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/android/cloud/bean/CloudFileItem;

    move-result-object p2

    if-eqz p2, :cond_20

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

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

    const-string p2, ""

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->seachByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

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

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->getCloudFileTypeByInt(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->seachByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

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

    const-string v0, "folder"

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->seachByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

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
