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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mComparatorList:Ljava/util/HashMap;

    new-instance v0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mStringComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    iput-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mSort:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    iget-object v1, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mComparatorList:Ljava/util/HashMap;

    new-instance v2, Lcom/android/fileexplorer/model/PrivateFileSortHelper$1;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/model/PrivateFileSortHelper$1;-><init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    new-instance v2, Lcom/android/fileexplorer/model/PrivateFileSortHelper$2;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/model/PrivateFileSortHelper$2;-><init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    new-instance v2, Lcom/android/fileexplorer/model/PrivateFileSortHelper$3;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/model/PrivateFileSortHelper$3;-><init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    new-instance v2, Lcom/android/fileexplorer/model/PrivateFileSortHelper$4;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/model/PrivateFileSortHelper$4;-><init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    new-instance v2, Lcom/android/fileexplorer/model/PrivateFileSortHelper$5;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/model/PrivateFileSortHelper$5;-><init>(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/model/PrivateFileSortHelper;)Lcom/android/fileexplorer/model/StringNaturalOrderComparator;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mStringComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/model/PrivateFileSortHelper;J)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->longToCompareInt(J)I

    move-result p0

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

    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mComparatorList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mSort:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public getSortMethod()Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mSort:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    return-object v0
.end method

.method public setSortMethod(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/model/PrivateFileSortHelper;->mSort:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    return-void
.end method
