.class public Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;
.super Ljava/lang/Object;
.source "Sorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;
    }
.end annotation


# static fields
.field private static final MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;",
            "Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->MAP:Ljava/util/HashMap;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static getComparator(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$1;->$SwitchMap$com$android$fileexplorer$apptag$strategy$sort$Sorter$Method:[I

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_2e

    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_28

    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_22

    .line 18
    const/4 v0, 0x4

    .line 19
    if-ne p0, v0, :cond_1a

    .line 21
    new-instance p0, Lcom/android/fileexplorer/apptag/strategy/sort/TypeComparator;

    .line 23
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/TypeComparator;-><init>()V

    .line 26
    return-object p0

    .line 27
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    const-string v0, "Unknown type"

    .line 31
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0

    .line 35
    :cond_22
    new-instance p0, Lcom/android/fileexplorer/apptag/strategy/sort/SizeComparator;

    .line 37
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/SizeComparator;-><init>()V

    .line 40
    return-object p0

    .line 41
    :cond_28
    new-instance p0, Lcom/android/fileexplorer/apptag/strategy/sort/NameComparator;

    .line 43
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/NameComparator;-><init>()V

    .line 46
    return-object p0

    .line 47
    :cond_2e
    new-instance p0, Lcom/android/fileexplorer/apptag/strategy/sort/DateComparator;

    .line 49
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/DateComparator;-><init>()V

    .line 52
    return-object p0
.end method

.method public static getMethod(I)Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->values()[Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_14

    .line 9
    aget-object v3, v0, v2

    .line 11
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result v4

    .line 15
    if-ne v4, p0, :cond_11

    .line 17
    return-object v3

    .line 18
    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 20
    goto :goto_6

    .line 21
    :cond_14
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public static sort(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;",
            ">;",
            "Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;",
            "Z)V"
        }
    .end annotation

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->setReverse(Z)V

    .line 8
    :try_start_3
    invoke-interface {p0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    return-void
.end method

.method public static sort(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;",
            ">;",
            "Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;",
            "Z)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;

    if-nez v1, :cond_11

    .line 2
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->getComparator(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_11
    invoke-virtual {v1, p2}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->setReverse(Z)V

    .line 5
    :try_start_14
    invoke-interface {p0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1c
    return-void
.end method
