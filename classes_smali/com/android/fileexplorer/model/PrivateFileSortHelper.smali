.class public Lcom/android/fileexplorer/model/PrivateFileSortHelper;
.super Ljava/lang/Object;
.source "PrivateFileSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/model/PrivateFileSortHelper$FileComparator;
    }
.end annotation


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

.field private mSort:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field private mStringComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mComparatorList:Ljava/util/HashMap;

    .line 11
    new-instance v0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 13
    invoke-direct {v0}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mStringComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 18
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mSort:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 22
    iget-object v1, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mComparatorList:Ljava/util/HashMap;

    .line 24
    new-instance v2, Lcom/android/fileexplorer/model/PrivateFileSortHelper$1;

    .line 26
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/model/PrivateFileSortHelper$1;-><init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)V

    .line 29
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mComparatorList:Ljava/util/HashMap;

    .line 34
    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 36
    new-instance v2, Lcom/android/fileexplorer/model/PrivateFileSortHelper$2;

    .line 38
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/model/PrivateFileSortHelper$2;-><init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)V

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mComparatorList:Ljava/util/HashMap;

    .line 46
    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 48
    new-instance v2, Lcom/android/fileexplorer/model/PrivateFileSortHelper$3;

    .line 50
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/model/PrivateFileSortHelper$3;-><init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)V

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mComparatorList:Ljava/util/HashMap;

    .line 58
    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 60
    new-instance v2, Lcom/android/fileexplorer/model/PrivateFileSortHelper$4;

    .line 62
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/model/PrivateFileSortHelper$4;-><init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)V

    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mComparatorList:Ljava/util/HashMap;

    .line 70
    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 72
    new-instance v2, Lcom/android/fileexplorer/model/PrivateFileSortHelper$5;

    .line 74
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/model/PrivateFileSortHelper$5;-><init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)V

    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)Lcom/android/fileexplorer/model/StringNaturalOrderComparator;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mStringComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/model/PrivateFileSortHelper;J)I
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->longToCompareInt(J)I

    .line 4
    move-result p0

    .line 5
    return p0
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


# virtual methods
.method public getComparator()Ljava/util/Comparator;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mComparatorList:Ljava/util/HashMap;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mSort:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/Comparator;

    .line 11
    return-object v0
.end method

.method public getSortMethod()Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mSort:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 3
    return-object v0
.end method

.method public setSortMethod(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mSort:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 3
    return-void
.end method
