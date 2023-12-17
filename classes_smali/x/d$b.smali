.class public final Lx/d$b;
.super Lx/d;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public k:Ljava/lang/String;

.field public l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field

.field public n:[F

.field public o:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lx/d;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lx/d$b;->m:Landroid/util/SparseArray;

    .line 11
    const-string v0, ","

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x1

    .line 18
    aget-object p1, p1, v0

    .line 20
    iput-object p1, p0, Lx/d$b;->k:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lx/d$b;->l:Landroid/util/SparseArray;

    .line 24
    return-void
.end method


# virtual methods
.method public final b(IIFFF)V
    .registers 6

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 3
    const-string p2, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute,...)"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public final c(I)V
    .registers 16

    .line 1
    iget-object v0, p0, Lx/d$b;->l:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lx/d$b;->l:Landroid/util/SparseArray;

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 16
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->c()I

    .line 19
    move-result v1

    .line 20
    new-array v3, v0, [D

    .line 22
    add-int/lit8 v4, v1, 0x2

    .line 24
    new-array v5, v4, [F

    .line 26
    iput-object v5, p0, Lx/d$b;->n:[F

    .line 28
    new-array v5, v1, [F

    .line 30
    iput-object v5, p0, Lx/d$b;->o:[F

    .line 32
    const/4 v5, 0x2

    .line 33
    new-array v5, v5, [I

    .line 35
    const/4 v6, 0x1

    .line 36
    aput v4, v5, v6

    .line 38
    aput v0, v5, v2

    .line 40
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 42
    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    check-cast v4, [[D

    .line 48
    move v5, v2

    .line 49
    :goto_30
    if-ge v5, v0, :cond_77

    .line 51
    iget-object v7, p0, Lx/d$b;->l:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 56
    move-result v7

    .line 57
    iget-object v8, p0, Lx/d$b;->l:Landroid/util/SparseArray;

    .line 59
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 65
    iget-object v9, p0, Lx/d$b;->m:Landroid/util/SparseArray;

    .line 67
    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 70
    move-result-object v9

    .line 71
    check-cast v9, [F

    .line 73
    int-to-double v10, v7

    .line 74
    const-wide v12, 0x3f847ae147ae147bL  # 0.01

    .line 79
    mul-double/2addr v10, v12

    .line 80
    aput-wide v10, v3, v5

    .line 82
    iget-object v7, p0, Lx/d$b;->n:[F

    .line 84
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/widget/ConstraintAttribute;->b([F)V

    .line 87
    move v7, v2

    .line 88
    :goto_57
    iget-object v8, p0, Lx/d$b;->n:[F

    .line 90
    array-length v10, v8

    .line 91
    if-ge v7, v10, :cond_66

    .line 93
    aget-object v10, v4, v5

    .line 95
    aget v8, v8, v7

    .line 97
    float-to-double v11, v8

    .line 98
    aput-wide v11, v10, v7

    .line 100
    add-int/lit8 v7, v7, 0x1

    .line 102
    goto :goto_57

    .line 103
    :cond_66
    aget-object v7, v4, v5

    .line 105
    aget v8, v9, v2

    .line 107
    float-to-double v10, v8

    .line 108
    aput-wide v10, v7, v1

    .line 110
    add-int/lit8 v8, v1, 0x1

    .line 112
    aget v9, v9, v6

    .line 114
    float-to-double v9, v9

    .line 115
    aput-wide v9, v7, v8

    .line 117
    add-int/lit8 v5, v5, 0x1

    .line 119
    goto :goto_30

    .line 120
    :cond_77
    invoke-static {p1, v3, v4}, Lu/b;->a(I[D[[D)Lu/b;

    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Lu/l;->a:Lu/b;

    .line 126
    return-void
.end method

.method public final e(FJLandroid/view/View;Landroidx/appcompat/app/u;)Z
    .registers 16

    .line 1
    iget-object v0, p0, Lu/l;->a:Lu/b;

    .line 3
    float-to-double v1, p1

    .line 4
    iget-object p1, p0, Lx/d$b;->n:[F

    .line 6
    invoke-virtual {v0, v1, v2, p1}, Lu/b;->d(D[F)V

    .line 9
    iget-object p1, p0, Lx/d$b;->n:[F

    .line 11
    array-length v0, p1

    .line 12
    add-int/lit8 v0, v0, -0x2

    .line 14
    aget v0, p1, v0

    .line 16
    array-length v1, p1

    .line 17
    const/4 v2, 0x1

    .line 18
    sub-int/2addr v1, v2

    .line 19
    aget p1, p1, v1

    .line 21
    iget-wide v3, p0, Lu/l;->i:J

    .line 23
    sub-long v3, p2, v3

    .line 25
    iget v1, p0, Lu/l;->j:F

    .line 27
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 30
    move-result v1

    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz v1, :cond_31

    .line 34
    iget-object v1, p0, Lx/d$b;->k:Ljava/lang/String;

    .line 36
    invoke-virtual {p5, v1, p4}, Landroidx/appcompat/app/u;->b(Ljava/lang/String;Ljava/lang/Object;)F

    .line 39
    move-result p5

    .line 40
    iput p5, p0, Lu/l;->j:F

    .line 42
    invoke-static {p5}, Ljava/lang/Float;->isNaN(F)Z

    .line 45
    move-result p5

    .line 46
    if-eqz p5, :cond_31

    .line 48
    iput v5, p0, Lu/l;->j:F

    .line 50
    :cond_31
    iget p5, p0, Lu/l;->j:F

    .line 52
    float-to-double v6, p5

    .line 53
    long-to-double v3, v3

    .line 54
    const-wide v8, 0x3e112e0be826d695L  # 1.0E-9

    .line 59
    mul-double/2addr v3, v8

    .line 60
    float-to-double v8, v0

    .line 61
    mul-double/2addr v3, v8

    .line 62
    add-double/2addr v3, v6

    .line 63
    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    .line 65
    rem-double/2addr v3, v6

    .line 66
    double-to-float p5, v3

    .line 67
    iput p5, p0, Lu/l;->j:F

    .line 69
    iput-wide p2, p0, Lu/l;->i:J

    .line 71
    invoke-virtual {p0, p5}, Lu/l;->a(F)F

    .line 74
    move-result p2

    .line 75
    const/4 p3, 0x0

    .line 76
    iput-boolean p3, p0, Lu/l;->h:Z

    .line 78
    move p5, p3

    .line 79
    :goto_4e
    iget-object v1, p0, Lx/d$b;->o:[F

    .line 81
    array-length v3, v1

    .line 82
    if-ge p5, v3, :cond_6d

    .line 84
    iget-boolean v3, p0, Lu/l;->h:Z

    .line 86
    iget-object v4, p0, Lx/d$b;->n:[F

    .line 88
    aget v4, v4, p5

    .line 90
    float-to-double v6, v4

    .line 91
    const-wide/16 v8, 0x0

    .line 93
    cmpl-double v6, v6, v8

    .line 95
    if-eqz v6, :cond_62

    .line 97
    move v6, v2

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    move v6, p3

    .line 100
    :goto_63
    or-int/2addr v3, v6

    .line 101
    iput-boolean v3, p0, Lu/l;->h:Z

    .line 103
    mul-float/2addr v4, p2

    .line 104
    add-float/2addr v4, p1

    .line 105
    aput v4, v1, p5

    .line 107
    add-int/lit8 p5, p5, 0x1

    .line 109
    goto :goto_4e

    .line 110
    :cond_6d
    iget-object p1, p0, Lx/d$b;->l:Landroid/util/SparseArray;

    .line 112
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 118
    iget-object p2, p0, Lx/d$b;->o:[F

    .line 120
    invoke-static {p1, p4, p2}, Lx/a;->b(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    .line 123
    cmpl-float p1, v0, v5

    .line 125
    if-eqz p1, :cond_80

    .line 127
    iput-boolean v2, p0, Lu/l;->h:Z

    .line 129
    :cond_80
    iget-boolean p1, p0, Lu/l;->h:Z

    .line 131
    return p1
.end method
