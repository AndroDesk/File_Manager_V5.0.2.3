.class public Lcom/android/fileexplorer/model/FileSortHelper;
.super Ljava/lang/Object;
.source "FileSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/model/FileSortHelper$AbsFileComparator;,
        Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;
    }
.end annotation


# static fields
.field private static final PREF_SORT_METHOD_CATEGORY:Ljava/lang/String; = "pref_sort_method_category"

.field private static final PREF_SORT_METHOD_FAVORITE:Ljava/lang/String; = "pref_sort_method_favorite"

.field private static final PREF_SORT_METHOD_SDCARD:Ljava/lang/String; = "pref_sort_method_sdcard"

.field private static final TAG:Ljava/lang/String; = "FileSortHelper"


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

.field private mTabIndex:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    .line 11
    new-instance v0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 13
    invoke-direct {v0}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mStringComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 18
    iput p1, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mTabIndex:I

    .line 20
    invoke-static {}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->values()[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 23
    move-result-object p1

    .line 24
    iget v0, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mTabIndex:I

    .line 26
    invoke-static {v0}, Lcom/android/fileexplorer/model/FileSortHelper;->getSortMethodFromPreference(I)I

    .line 29
    move-result v0

    .line 30
    aget-object p1, p1, v0

    .line 32
    iput-object p1, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mSort:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 34
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    .line 36
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 38
    new-instance v1, Lcom/android/fileexplorer/model/FileSortHelper$1;

    .line 40
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/model/FileSortHelper$1;-><init>(Lcom/android/fileexplorer/model/FileSortHelper;)V

    .line 43
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    .line 48
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 50
    new-instance v1, Lcom/android/fileexplorer/model/FileSortHelper$2;

    .line 52
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/model/FileSortHelper$2;-><init>(Lcom/android/fileexplorer/model/FileSortHelper;)V

    .line 55
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    .line 60
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 62
    new-instance v1, Lcom/android/fileexplorer/model/FileSortHelper$3;

    .line 64
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/model/FileSortHelper$3;-><init>(Lcom/android/fileexplorer/model/FileSortHelper;)V

    .line 67
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    .line 72
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 74
    new-instance v1, Lcom/android/fileexplorer/model/FileSortHelper$4;

    .line 76
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/model/FileSortHelper$4;-><init>(Lcom/android/fileexplorer/model/FileSortHelper;)V

    .line 79
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    .line 84
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 86
    new-instance v1, Lcom/android/fileexplorer/model/FileSortHelper$5;

    .line 88
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/model/FileSortHelper$5;-><init>(Lcom/android/fileexplorer/model/FileSortHelper;)V

    .line 91
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/model/FileSortHelper;)Lcom/android/fileexplorer/model/StringNaturalOrderComparator;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mStringComparator:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/model/FileSortHelper;J)I
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/model/FileSortHelper;->longToCompareInt(J)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static getDefaultSortMethodByType(I)I
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_a

    .line 4
    sget-object p0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_a
    const/16 v0, 0xb

    .line 13
    if-ne p0, v0, :cond_15

    .line 15
    sget-object p0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_15
    sget-object p0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public static getSortMethodFromPreference(I)I
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_a

    .line 4
    sget-object p0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_a
    const/16 v0, 0xb

    .line 13
    if-ne p0, v0, :cond_15

    .line 15
    sget-object p0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_15
    invoke-static {p0}, Lcom/android/fileexplorer/model/FileSortHelper;->getSortPrefByTab(I)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_26

    .line 32
    sget-object p0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_26
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 52
    move-result v1

    .line 53
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 56
    move-result p0

    .line 57
    return p0
.end method

.method public static getSortMethodFromPreference2(I)I
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/FileSortHelper;->getSortPrefByTab(I)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_f

    .line 11
    invoke-static {p0}, Lcom/android/fileexplorer/model/FileSortHelper;->getDefaultSortMethodByType(I)I

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_f
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_28

    .line 30
    sget-object p0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 35
    move-result p0

    .line 36
    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_28
    invoke-static {p0}, Lcom/android/fileexplorer/model/FileSortHelper;->getDefaultSortMethodByType(I)I

    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method private static getSortPrefByTab(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/16 v0, 0xb

    if-eq p0, v0, :cond_c

    const/4 p0, 0x0

    goto :goto_14

    :cond_c
    const-string p0, "pref_sort_method_favorite"

    goto :goto_14

    :cond_f
    const-string p0, "pref_sort_method_sdcard"

    goto :goto_14

    :cond_12
    const-string p0, "pref_sort_method_category"

    :goto_14
    return-object p0
.end method

.method public static initDefaultSortConfig(I)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/FileSortHelper;->getSortPrefByTab(I)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_21

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {p0}, Lcom/android/fileexplorer/model/FileSortHelper;->getDefaultSortMethodByType(I)I

    .line 26
    move-result p0

    .line 27
    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    :cond_21
    return-void
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
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mSort:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public getComparator(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Ljava/util/Comparator;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    return-object p1
.end method

.method public getSortMethod()Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mSort:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 3
    return-object v0
.end method

.method public setSortMethod(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/model/FileSortHelper;->setSortMethod(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;Z)V

    return-void
.end method

.method public setSortMethod(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;Z)V
    .registers 4

    if-nez p1, :cond_a

    const-string p1, "FileSortHelper"

    const-string p2, "setSortMethod error method is null"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_a
    iput-object p1, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mSort:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 4
    iget v0, p0, Lcom/android/fileexplorer/model/FileSortHelper;->mTabIndex:I

    invoke-static {v0}, Lcom/android/fileexplorer/model/FileSortHelper;->getSortPrefByTab(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_2d

    if-eqz v0, :cond_2d

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2d
    return-void
.end method
