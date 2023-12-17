.class public Lcom/android/fileexplorer/controller/FileSortManager;
.super Ljava/lang/Object;
.source "FileSortManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/controller/FileSortManager$AbsFileComparator;
    }
.end annotation


# static fields
.field public static final DEFAULT_SORTMETHOD:[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field private static final SORTMETHOD:Ljava/lang/String; = "SortMethod"

.field private static final TAG:Ljava/lang/String; = "FileSortManager"

.field private static sFileSortManager:Lcom/android/fileexplorer/controller/FileSortManager;


# instance fields
.field private mComparatorList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;",
            "Ljava/util/Comparator;",
            ">;"
        }
    .end annotation
.end field

.field private mSortMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            "Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;",
            ">;"
        }
    .end annotation
.end field

.field private mStringComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/fileexplorer/controller/FileSortManager;->DEFAULT_SORTMETHOD:[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mSortMethods:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mComparatorList:Ljava/util/HashMap;

    new-instance v0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mStringComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    invoke-virtual {p0}, Lcom/android/fileexplorer/controller/FileSortManager;->init()V

    invoke-direct {p0}, Lcom/android/fileexplorer/controller/FileSortManager;->initComparators()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/controller/FileSortManager;)Lcom/android/fileexplorer/model/StringNaturalOrderComparator;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mStringComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/controller/FileSortManager;J)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/controller/FileSortManager;->longToCompareInt(J)I

    move-result p0

    return p0
.end method

.method public static getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/controller/FileSortManager;->getInstance()Lcom/android/fileexplorer/controller/FileSortManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/controller/FileSortManager;->mComparatorList:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Comparator;

    return-object p0
.end method

.method public static getComparator(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Ljava/util/Comparator;
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/controller/FileSortManager;->getInstance()Lcom/android/fileexplorer/controller/FileSortManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/controller/FileSortManager;->mComparatorList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Comparator;

    return-object p0
.end method

.method public static getInstance()Lcom/android/fileexplorer/controller/FileSortManager;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/controller/FileSortManager;->sFileSortManager:Lcom/android/fileexplorer/controller/FileSortManager;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-class v0, Lcom/android/fileexplorer/controller/FileSortManager;

    monitor-enter v0

    :try_start_8
    sget-object v1, Lcom/android/fileexplorer/controller/FileSortManager;->sFileSortManager:Lcom/android/fileexplorer/controller/FileSortManager;

    if-nez v1, :cond_13

    new-instance v1, Lcom/android/fileexplorer/controller/FileSortManager;

    invoke-direct {v1}, Lcom/android/fileexplorer/controller/FileSortManager;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/controller/FileSortManager;->sFileSortManager:Lcom/android/fileexplorer/controller/FileSortManager;

    :cond_13
    sget-object v1, Lcom/android/fileexplorer/controller/FileSortManager;->sFileSortManager:Lcom/android/fileexplorer/controller/FileSortManager;

    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/controller/FileSortManager;->getInstance()Lcom/android/fileexplorer/controller/FileSortManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/controller/FileSortManager;->mSortMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    return-object p0
.end method

.method private initComparators()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    new-instance v2, Lcom/android/fileexplorer/controller/FileSortManager$1;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/controller/FileSortManager$1;-><init>(Lcom/android/fileexplorer/controller/FileSortManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    new-instance v2, Lcom/android/fileexplorer/controller/FileSortManager$2;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/controller/FileSortManager$2;-><init>(Lcom/android/fileexplorer/controller/FileSortManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    new-instance v2, Lcom/android/fileexplorer/controller/FileSortManager$3;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/controller/FileSortManager$3;-><init>(Lcom/android/fileexplorer/controller/FileSortManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    new-instance v2, Lcom/android/fileexplorer/controller/FileSortManager$4;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/controller/FileSortManager$4;-><init>(Lcom/android/fileexplorer/controller/FileSortManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    new-instance v2, Lcom/android/fileexplorer/controller/FileSortManager$5;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/controller/FileSortManager$5;-><init>(Lcom/android/fileexplorer/controller/FileSortManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static intToEnumSortMethod(I)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->valueOf(I)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object p0

    if-nez p0, :cond_8

    sget-object p0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    :cond_8
    return-object p0
.end method

.method private longToCompareInt(J)I
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_d

    :cond_8
    if-gez p1, :cond_c

    const/4 p1, -0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public static saveSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SortMethod"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 4

    if-eqz p0, :cond_2f

    if-nez p1, :cond_5

    goto :goto_2f

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSortMethod:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-and-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileSortManager"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/controller/FileSortManager;->getInstance()Lcom/android/fileexplorer/controller/FileSortManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/controller/FileSortManager;->mSortMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/fileexplorer/controller/FileSortManager;->saveSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public init()V
    .registers 6

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SortMethod"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_b
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->PAGE_NAME:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    array-length v3, v1

    if-ge v2, v3, :cond_30

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/fileexplorer/controller/FileSortManager;->DEFAULT_SORTMETHOD:[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mSortMethods:Ljava/util/HashMap;

    aget-object v1, v1, v2

    invoke-static {v3}, Lcom/android/fileexplorer/controller/FileSortManager;->intToEnumSortMethod(I)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_30
    return-void
.end method
