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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->MAP:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getComparator(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$1;->$SwitchMap$com$android$fileexplorer$apptag$strategy$sort$Sorter$Method:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_28

    const/4 v0, 0x3

    if-eq p0, v0, :cond_22

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1a

    new-instance p0, Lcom/android/fileexplorer/apptag/strategy/sort/TypeComparator;

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/TypeComparator;-><init>()V

    return-object p0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    new-instance p0, Lcom/android/fileexplorer/apptag/strategy/sort/SizeComparator;

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/SizeComparator;-><init>()V

    return-object p0

    :cond_28
    new-instance p0, Lcom/android/fileexplorer/apptag/strategy/sort/NameComparator;

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/NameComparator;-><init>()V

    return-object p0

    :cond_2e
    new-instance p0, Lcom/android/fileexplorer/apptag/strategy/sort/DateComparator;

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/sort/DateComparator;-><init>()V

    return-object p0
.end method

.method public static getMethod(I)Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;
    .registers 6

    invoke-static {}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->values()[Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p0, 0x0

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

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->setReverse(Z)V

    :try_start_3
    invoke-interface {p0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception p0

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

    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;

    if-nez v1, :cond_11

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->getComparator(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-virtual {v1, p2}, Lcom/android/fileexplorer/apptag/strategy/sort/AbsComparator;->setReverse(Z)V

    :try_start_14
    invoke-interface {p0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1c
    return-void
.end method
