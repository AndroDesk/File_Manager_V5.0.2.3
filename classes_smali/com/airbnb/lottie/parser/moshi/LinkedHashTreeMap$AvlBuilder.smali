.class final Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AvlBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private leavesSkipped:I

.field private leavesToSkip:I

.field private size:I

.field private stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 4
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 6
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 11
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 13
    if-lez v1, :cond_1f

    .line 15
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 17
    and-int/lit8 v3, v2, 0x1

    .line 19
    if-nez v3, :cond_1f

    .line 21
    add-int/2addr v2, v0

    .line 22
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 24
    sub-int/2addr v1, v0

    .line 25
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 27
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 29
    add-int/2addr v1, v0

    .line 30
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 32
    :cond_1f
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 34
    iput-object v1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 36
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 38
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 40
    add-int/2addr p1, v0

    .line 41
    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 43
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 45
    if-lez v1, :cond_3d

    .line 47
    and-int/lit8 v2, p1, 0x1

    .line 49
    if-nez v2, :cond_3d

    .line 51
    add-int/2addr p1, v0

    .line 52
    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 54
    sub-int/2addr v1, v0

    .line 55
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 57
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 59
    add-int/2addr p1, v0

    .line 60
    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 62
    :cond_3d
    const/4 p1, 0x4

    .line 63
    :goto_3e
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 65
    add-int/lit8 v2, p1, -0x1

    .line 67
    and-int/2addr v1, v2

    .line 68
    if-ne v1, v2, :cond_80

    .line 70
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 72
    if-nez v1, :cond_63

    .line 74
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 76
    iget-object v2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 78
    iget-object v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 80
    iget-object v4, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 82
    iput-object v4, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 84
    iput-object v2, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 86
    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 88
    iput-object v1, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 90
    iget v4, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 92
    add-int/2addr v4, v0

    .line 93
    iput v4, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 95
    iput-object v2, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 97
    iput-object v2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 99
    goto :goto_7d

    .line 100
    :cond_63
    const/4 v2, 0x0

    .line 101
    if-ne v1, v0, :cond_78

    .line 103
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 105
    iget-object v3, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 107
    iput-object v3, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 109
    iput-object v1, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 111
    iget v4, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 113
    add-int/2addr v4, v0

    .line 114
    iput v4, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->height:I

    .line 116
    iput-object v3, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 118
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 120
    goto :goto_7d

    .line 121
    :cond_78
    const/4 v3, 0x2

    .line 122
    if-ne v1, v3, :cond_7d

    .line 124
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 126
    :cond_7d
    :goto_7d
    mul-int/lit8 p1, p1, 0x2

    .line 128
    goto :goto_3e

    .line 129
    :cond_80
    return-void
.end method

.method public reset(I)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    sub-int/2addr v0, p1

    .line 10
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 15
    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 20
    return-void
.end method

.method public root()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 3
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 5
    if-nez v1, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 13
    throw v0
.end method
