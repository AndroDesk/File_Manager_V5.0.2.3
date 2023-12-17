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

    .line 1
    const/16 v0, 0xb

    .line 3
    new-array v0, v0, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 5
    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 10
    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 15
    const/4 v2, 0x2

    .line 16
    aput-object v1, v0, v2

    .line 18
    const/4 v2, 0x3

    .line 19
    aput-object v1, v0, v2

    .line 21
    const/4 v2, 0x4

    .line 22
    aput-object v1, v0, v2

    .line 24
    sget-object v2, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 26
    const/4 v3, 0x5

    .line 27
    aput-object v2, v0, v3

    .line 29
    const/4 v2, 0x6

    .line 30
    aput-object v1, v0, v2

    .line 32
    const/4 v2, 0x7

    .line 33
    aput-object v1, v0, v2

    .line 35
    const/16 v2, 0x8

    .line 37
    aput-object v1, v0, v2

    .line 39
    const/16 v2, 0x9

    .line 41
    aput-object v1, v0, v2

    .line 43
    const/16 v2, 0xa

    .line 45
    aput-object v1, v0, v2

    .line 47
    sput-object v0, Lcom/android/fileexplorer/controller/FileSortManager;->DEFAULT_SORTMETHOD:[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mSortMethods:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mComparatorList:Ljava/util/HashMap;

    .line 18
    new-instance v0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 20
    invoke-direct {v0}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mStringComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 25
    invoke-virtual {p0}, Lcom/android/fileexplorer/controller/FileSortManager;->init()V

    .line 28
    invoke-direct {p0}, Lcom/android/fileexplorer/controller/FileSortManager;->initComparators()V

    .line 31
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/controller/FileSortManager;)Lcom/android/fileexplorer/model/StringNaturalOrderComparator;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mStringComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/controller/FileSortManager;J)I
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/controller/FileSortManager;->longToCompareInt(J)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;
    .registers 2

    .line 1
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

    .line 2
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

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileSortManager;->sFileSortManager:Lcom/android/fileexplorer/controller/FileSortManager;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    const-class v0, Lcom/android/fileexplorer/controller/FileSortManager;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    sget-object v1, Lcom/android/fileexplorer/controller/FileSortManager;->sFileSortManager:Lcom/android/fileexplorer/controller/FileSortManager;

    .line 11
    if-nez v1, :cond_13

    .line 13
    new-instance v1, Lcom/android/fileexplorer/controller/FileSortManager;

    .line 15
    invoke-direct {v1}, Lcom/android/fileexplorer/controller/FileSortManager;-><init>()V

    .line 18
    sput-object v1, Lcom/android/fileexplorer/controller/FileSortManager;->sFileSortManager:Lcom/android/fileexplorer/controller/FileSortManager;

    .line 20
    :cond_13
    sget-object v1, Lcom/android/fileexplorer/controller/FileSortManager;->sFileSortManager:Lcom/android/fileexplorer/controller/FileSortManager;

    .line 22
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :catchall_17
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    .line 26
    throw v1
.end method

.method public static getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/controller/FileSortManager;->getInstance()Lcom/android/fileexplorer/controller/FileSortManager;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/fileexplorer/controller/FileSortManager;->mSortMethods:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 13
    return-object p0
.end method

.method private initComparators()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mComparatorList:Ljava/util/HashMap;

    .line 3
    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 5
    new-instance v2, Lcom/android/fileexplorer/controller/FileSortManager$1;

    .line 7
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/controller/FileSortManager$1;-><init>(Lcom/android/fileexplorer/controller/FileSortManager;)V

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mComparatorList:Ljava/util/HashMap;

    .line 15
    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 17
    new-instance v2, Lcom/android/fileexplorer/controller/FileSortManager$2;

    .line 19
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/controller/FileSortManager$2;-><init>(Lcom/android/fileexplorer/controller/FileSortManager;)V

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mComparatorList:Ljava/util/HashMap;

    .line 27
    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 29
    new-instance v2, Lcom/android/fileexplorer/controller/FileSortManager$3;

    .line 31
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/controller/FileSortManager$3;-><init>(Lcom/android/fileexplorer/controller/FileSortManager;)V

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mComparatorList:Ljava/util/HashMap;

    .line 39
    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 41
    new-instance v2, Lcom/android/fileexplorer/controller/FileSortManager$4;

    .line 43
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/controller/FileSortManager$4;-><init>(Lcom/android/fileexplorer/controller/FileSortManager;)V

    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mComparatorList:Ljava/util/HashMap;

    .line 51
    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 53
    new-instance v2, Lcom/android/fileexplorer/controller/FileSortManager$5;

    .line 55
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/controller/FileSortManager$5;-><init>(Lcom/android/fileexplorer/controller/FileSortManager;)V

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public static intToEnumSortMethod(I)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->valueOf(I)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_8

    .line 7
    sget-object p0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 9
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

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SortMethod"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 23
    move-result p1

    .line 24
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 30
    return-void
.end method

.method public static updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 4

    .line 1
    if-eqz p0, :cond_2f

    .line 3
    if-nez p1, :cond_5

    .line 5
    goto :goto_2f

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v1, "updateSortMethod:"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "-and-"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "FileSortManager"

    .line 33
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/android/fileexplorer/controller/FileSortManager;->getInstance()Lcom/android/fileexplorer/controller/FileSortManager;

    .line 39
    move-result-object v0

    .line 40
    iget-object v0, v0, Lcom/android/fileexplorer/controller/FileSortManager;->mSortMethods:Ljava/util/HashMap;

    .line 42
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {p0, p1}, Lcom/android/fileexplorer/controller/FileSortManager;->saveSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 48
    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public init()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SortMethod"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    move-result-object v0

    .line 12
    :goto_b
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->PAGE_NAME:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 14
    array-length v3, v1

    .line 15
    if-ge v2, v3, :cond_30

    .line 17
    aget-object v3, v1, v2

    .line 19
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    sget-object v4, Lcom/android/fileexplorer/controller/FileSortManager;->DEFAULT_SORTMETHOD:[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 25
    aget-object v4, v4, v2

    .line 27
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 30
    move-result v4

    .line 31
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 34
    move-result v3

    .line 35
    iget-object v4, p0, Lcom/android/fileexplorer/controller/FileSortManager;->mSortMethods:Ljava/util/HashMap;

    .line 37
    aget-object v1, v1, v2

    .line 39
    invoke-static {v3}, Lcom/android/fileexplorer/controller/FileSortManager;->intToEnumSortMethod(I)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_b

    .line 49
    :cond_30
    return-void
.end method
