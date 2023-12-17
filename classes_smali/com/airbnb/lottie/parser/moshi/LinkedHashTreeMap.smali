.class final Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;
.super Ljava/util/AbstractMap;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;,
        Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;,
        Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;,
        Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;,
        Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;,
        Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field public final header:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap<",
            "TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field public modCount:I

.field public size:I

.field public table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public threshold:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    .line 3
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$1;

    .line 5
    invoke-direct {v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$1;-><init>()V

    .line 8
    sput-object v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    .line 4
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    if-eqz p1, :cond_b

    goto :goto_d

    .line 5
    :cond_b
    sget-object p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    :goto_d
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    .line 6
    new-instance p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    invoke-direct {p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->header:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    const/16 p1, 0x10

    new-array p1, p1, [Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 7
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 8
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    array-length p1, p1

    div-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->threshold:I

    return-void
.end method

.method private doubleCapacity()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->doubleCapacity([Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 2
    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->threshold:I

    return-void
.end method

.method public static doubleCapacity([Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;)[",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 4
    new-array v1, v1, [Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 5
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;

    invoke-direct {v2}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;-><init>()V

    .line 6
    new-instance v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v3}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;-><init>()V

    .line 7
    new-instance v4, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v4}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_16
    if-ge v6, v0, :cond_67

    .line 8
    aget-object v7, p0, v6

    if-nez v7, :cond_1d

    goto :goto_64

    .line 9
    :cond_1d
    invoke-virtual {v2, v7}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;->reset(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    move v8, v5

    move v9, v8

    .line 10
    :goto_22
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;->next()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v10

    if-eqz v10, :cond_33

    .line 11
    iget v10, v10, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v10, v0

    if-nez v10, :cond_30

    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    :cond_30
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    .line 12
    :cond_33
    invoke-virtual {v3, v8}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    .line 13
    invoke-virtual {v4, v9}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    .line 14
    invoke-virtual {v2, v7}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;->reset(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 15
    :goto_3c
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator;->next()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v7

    if-eqz v7, :cond_4f

    .line 16
    iget v10, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v10, v0

    if-nez v10, :cond_4b

    .line 17
    invoke-virtual {v3, v7}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->add(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_3c

    .line 18
    :cond_4b
    invoke-virtual {v4, v7}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->add(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_3c

    :cond_4f
    const/4 v7, 0x0

    if-lez v8, :cond_57

    .line 19
    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->root()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v8

    goto :goto_58

    :cond_57
    move-object v8, v7

    :goto_58
    aput-object v8, v1, v6

    add-int v8, v6, v0

    if-lez v9, :cond_62

    .line 20
    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->root()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    move-result-object v7

    :cond_62
    aput-object v7, v1, v8

    :goto_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_67
    return-object v1
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-eq p1, p2, :cond_d

    .line 3
    if-eqz p1, :cond_b

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 p1, 0x1

    .line 15
    :goto_e
    return p1
.end method

.method private rebalance(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 1
    :goto_0
    if-eqz p1, :cond_79

    .line 3
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 5
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_c

    .line 10
    iget v3, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v3, v2

    .line 14
    :goto_d
    if-eqz v1, :cond_12

    .line 16
    iget v4, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v4, v2

    .line 20
    :goto_13
    sub-int v5, v3, v4

    .line 22
    const/4 v6, -0x2

    .line 23
    if-ne v5, v6, :cond_3c

    .line 25
    iget-object v0, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 27
    iget-object v3, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 29
    if-eqz v3, :cond_21

    .line 31
    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v3, v2

    .line 35
    :goto_22
    if-eqz v0, :cond_26

    .line 37
    iget v2, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 39
    :cond_26
    sub-int/2addr v2, v3

    .line 40
    const/4 v0, -0x1

    .line 41
    if-eq v2, v0, :cond_36

    .line 43
    if-nez v2, :cond_2f

    .line 45
    if-nez p2, :cond_2f

    .line 47
    goto :goto_36

    .line 48
    :cond_2f
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->rotateRight(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->rotateLeft(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 54
    goto :goto_39

    .line 55
    :cond_36
    :goto_36
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->rotateLeft(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 58
    :goto_39
    if-eqz p2, :cond_76

    .line 60
    goto :goto_79

    .line 61
    :cond_3c
    const/4 v1, 0x2

    .line 62
    const/4 v6, 0x1

    .line 63
    if-ne v5, v1, :cond_63

    .line 65
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 67
    iget-object v3, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 69
    if-eqz v3, :cond_49

    .line 71
    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    move v3, v2

    .line 75
    :goto_4a
    if-eqz v1, :cond_4e

    .line 77
    iget v2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 79
    :cond_4e
    sub-int/2addr v2, v3

    .line 80
    if-eq v2, v6, :cond_5d

    .line 82
    if-nez v2, :cond_56

    .line 84
    if-nez p2, :cond_56

    .line 86
    goto :goto_5d

    .line 87
    :cond_56
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->rotateLeft(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->rotateRight(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 93
    goto :goto_60

    .line 94
    :cond_5d
    :goto_5d
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->rotateRight(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 97
    :goto_60
    if-eqz p2, :cond_76

    .line 99
    goto :goto_79

    .line 100
    :cond_63
    if-nez v5, :cond_6c

    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 104
    iput v3, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 106
    if-eqz p2, :cond_76

    .line 108
    goto :goto_79

    .line 109
    :cond_6c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 112
    move-result v0

    .line 113
    add-int/2addr v0, v6

    .line 114
    iput v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 116
    if-nez p2, :cond_76

    .line 118
    goto :goto_79

    .line 119
    :cond_76
    iget-object p1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 121
    goto :goto_0

    .line 122
    :cond_79
    :goto_79
    return-void
.end method

.method private replaceInParent(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 6
    if-eqz p2, :cond_9

    .line 8
    iput-object v0, p2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 10
    :cond_9
    if-eqz v0, :cond_15

    .line 12
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 14
    if-ne v1, p1, :cond_12

    .line 16
    iput-object p2, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 18
    goto :goto_1f

    .line 19
    :cond_12
    iput-object p2, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 21
    goto :goto_1f

    .line 22
    :cond_15
    iget p1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->hash:I

    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 26
    array-length v1, v0

    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 29
    and-int/2addr p1, v1

    .line 30
    aput-object p2, v0, p1

    .line 32
    :goto_1f
    return-void
.end method

.method private rotateLeft(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 3
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 5
    iget-object v2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 7
    iget-object v3, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 9
    iput-object v2, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 11
    if-eqz v2, :cond_e

    .line 13
    iput-object p1, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 15
    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 18
    iput-object p1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 20
    iput-object v1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v0, :cond_1b

    .line 25
    iget v0, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v0, v4

    .line 29
    :goto_1c
    if-eqz v2, :cond_21

    .line 31
    iget v2, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v2, v4

    .line 35
    :goto_22
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 38
    move-result v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 41
    iput v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 43
    if-eqz v3, :cond_2e

    .line 45
    iget v4, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 47
    :cond_2e
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 50
    move-result p1

    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 53
    iput p1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 55
    return-void
.end method

.method private rotateRight(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 3
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 5
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 7
    iget-object v3, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 9
    iput-object v3, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 11
    if-eqz v3, :cond_e

    .line 13
    iput-object p1, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 15
    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 18
    iput-object p1, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 20
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v1, :cond_1b

    .line 25
    iget v1, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v1, v4

    .line 29
    :goto_1c
    if-eqz v3, :cond_21

    .line 31
    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v3, v4

    .line 35
    :goto_22
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 38
    move-result v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 41
    iput v1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 43
    if-eqz v2, :cond_2e

    .line 45
    iget v4, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 47
    :cond_2e
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 50
    move-result p1

    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 53
    iput p1, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 55
    return-void
.end method

.method private static secondaryHash(I)I
    .registers 3

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 p0, p0, 0x4

    xor-int/2addr p0, v0

    return p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 3
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    .line 10
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 14
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    .line 16
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->header:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 18
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 20
    :goto_13
    if-eq v2, v0, :cond_1d

    .line 22
    iget-object v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 24
    iput-object v1, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 26
    iput-object v1, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 28
    move-object v2, v3

    .line 29
    goto :goto_13

    .line 30
    :cond_1d
    iput-object v0, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 32
    iput-object v0, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 34
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    :goto_9
    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->entrySet:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_c

    .line 6
    :cond_5
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;

    .line 8
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;-><init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;)V

    .line 11
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->entrySet:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet;

    .line 13
    :goto_c
    return-object v0
.end method

.method public find(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result v2

    .line 9
    invoke-static {v2}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->secondaryHash(I)I

    .line 12
    move-result v6

    .line 13
    array-length v2, v1

    .line 14
    const/4 v9, 0x1

    .line 15
    sub-int/2addr v2, v9

    .line 16
    and-int/2addr v2, v6

    .line 17
    aget-object v3, v1, v2

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_3c

    .line 22
    sget-object v5, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 24
    if-ne v0, v5, :cond_1d

    .line 26
    move-object v5, p1

    .line 27
    check-cast v5, Ljava/lang/Comparable;

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move-object v5, v4

    .line 31
    :goto_1e
    if-eqz v5, :cond_27

    .line 33
    iget-object v7, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    .line 35
    invoke-interface {v5, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 38
    move-result v7

    .line 39
    goto :goto_2d

    .line 40
    :cond_27
    iget-object v7, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    .line 42
    invoke-interface {v0, p1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 45
    move-result v7

    .line 46
    :goto_2d
    if-nez v7, :cond_30

    .line 48
    return-object v3

    .line 49
    :cond_30
    if-gez v7, :cond_35

    .line 51
    iget-object v8, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 53
    goto :goto_37

    .line 54
    :cond_35
    iget-object v8, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 56
    :goto_37
    if-nez v8, :cond_3a

    .line 58
    goto :goto_3d

    .line 59
    :cond_3a
    move-object v3, v8

    .line 60
    goto :goto_1e

    .line 61
    :cond_3c
    const/4 v7, 0x0

    .line 62
    :goto_3d
    move-object v10, v3

    .line 63
    move v11, v7

    .line 64
    if-nez p2, :cond_42

    .line 66
    return-object v4

    .line 67
    :cond_42
    iget-object v7, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->header:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 69
    if-nez v10, :cond_7b

    .line 71
    sget-object p2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 73
    if-ne v0, p2, :cond_6e

    .line 75
    instance-of p2, p1, Ljava/lang/Comparable;

    .line 77
    if-eqz p2, :cond_4f

    .line 79
    goto :goto_6e

    .line 80
    :cond_4f
    new-instance p2, Ljava/lang/ClassCastException;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string p1, " is not Comparable"

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 110
    throw p2

    .line 111
    :cond_6e
    :goto_6e
    new-instance p2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 113
    iget-object v8, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 115
    move-object v3, p2

    .line 116
    move-object v4, v10

    .line 117
    move-object v5, p1

    .line 118
    invoke-direct/range {v3 .. v8}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;-><init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 121
    aput-object p2, v1, v2

    .line 123
    goto :goto_8f

    .line 124
    :cond_7b
    new-instance p2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 126
    iget-object v8, v7, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 128
    move-object v3, p2

    .line 129
    move-object v4, v10

    .line 130
    move-object v5, p1

    .line 131
    invoke-direct/range {v3 .. v8}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;-><init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 134
    if-gez v11, :cond_8a

    .line 136
    iput-object p2, v10, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 138
    goto :goto_8c

    .line 139
    :cond_8a
    iput-object p2, v10, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 141
    :goto_8c
    invoke-direct {p0, v10, v9}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->rebalance(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Z)V

    .line 144
    :goto_8f
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    .line 146
    add-int/lit8 v0, p1, 0x1

    .line 148
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    .line 150
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->threshold:I

    .line 152
    if-le p1, v0, :cond_9c

    .line 154
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->doubleCapacity()V

    .line 157
    :cond_9c
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    .line 159
    add-int/2addr p1, v9

    .line 160
    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    .line 162
    return-object p2
.end method

.method public findByEntry(Ljava/util/Map$Entry;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_18

    .line 11
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, v1, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_18

    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 p1, 0x0

    .line 26
    :goto_19
    if-eqz p1, :cond_1c

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    :goto_1d
    return-object v0
.end method

.method public findByObject(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_9

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 8
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_8} :catch_9

    .line 9
    nop

    .line 10
    :catch_9
    :cond_9
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    iget-object p1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    :goto_a
    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->keySet:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_c

    .line 6
    :cond_5
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;

    .line 8
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;-><init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;)V

    .line 11
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->keySet:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;

    .line 13
    :goto_c
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_c

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 10
    iput-object p2, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 12
    return-object v0

    .line 13
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    .line 15
    const-string p2, "key == null"

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    iget-object p1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    :goto_a
    return-object p1
.end method

.method public removeInternal(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_11

    .line 4
    iget-object p2, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 6
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 8
    iput-object v1, p2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 10
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 12
    iput-object p2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 14
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->prev:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 16
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->next:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 18
    :cond_11
    iget-object p2, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 20
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 22
    iget-object v2, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz p2, :cond_54

    .line 27
    if-eqz v1, :cond_54

    .line 29
    iget v2, p2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 31
    iget v4, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 33
    if-le v2, v4, :cond_27

    .line 35
    invoke-virtual {p2}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->last()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 38
    move-result-object p2

    .line 39
    goto :goto_2b

    .line 40
    :cond_27
    invoke-virtual {v1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->first()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 43
    move-result-object p2

    .line 44
    :goto_2b
    invoke-virtual {p0, p2, v3}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->removeInternal(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Z)V

    .line 47
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 49
    if-eqz v1, :cond_3b

    .line 51
    iget v2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 53
    iput-object v1, p2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 55
    iput-object p2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 57
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move v2, v3

    .line 61
    :goto_3c
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 63
    if-eqz v1, :cond_48

    .line 65
    iget v3, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 67
    iput-object v1, p2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 69
    iput-object p2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 71
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 73
    :cond_48
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 76
    move-result v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 79
    iput v0, p2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 84
    return-void

    .line 85
    :cond_54
    if-eqz p2, :cond_5c

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 90
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 92
    goto :goto_67

    .line 93
    :cond_5c
    if-eqz v1, :cond_64

    .line 95
    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 98
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 100
    goto :goto_67

    .line 101
    :cond_64
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->replaceInParent(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V

    .line 104
    :goto_67
    invoke-direct {p0, v2, v3}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->rebalance(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Z)V

    .line 107
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    .line 109
    add-int/lit8 p1, p1, -0x1

    .line 111
    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    .line 113
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    .line 115
    add-int/lit8 p1, p1, 0x1

    .line 117
    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    .line 119
    return-void
.end method

.method public removeInternalByKey(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_a

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->removeInternal(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;Z)V

    .line 11
    :cond_a
    return-object p1
.end method

.method public size()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    .line 3
    return v0
.end method
