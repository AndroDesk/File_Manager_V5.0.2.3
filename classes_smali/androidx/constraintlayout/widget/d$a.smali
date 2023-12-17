.class public final Landroidx/constraintlayout/widget/d$a;
.super Landroidx/constraintlayout/widget/ConstraintLayout$b;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public A0:F

.field public B0:F

.field public C0:F

.field public D0:F

.field public r0:F

.field public s0:Z

.field public t0:F

.field public u0:F

.field public v0:F

.field public w0:F

.field public x0:F

.field public y0:F

.field public z0:F


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, -0x2

    .line 1
    invoke-direct {p0, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->r0:F

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/d$a;->s0:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->t0:F

    .line 5
    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->u0:F

    .line 6
    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->v0:F

    .line 7
    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->w0:F

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->x0:F

    .line 9
    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->y0:F

    .line 10
    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->z0:F

    .line 11
    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->A0:F

    .line 12
    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->B0:F

    .line 13
    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->C0:F

    .line 14
    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->D0:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 16
    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->r0:F

    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/d$a;->s0:Z

    const/4 v2, 0x0

    .line 18
    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->t0:F

    .line 19
    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->u0:F

    .line 20
    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->v0:F

    .line 21
    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->w0:F

    .line 22
    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->x0:F

    .line 23
    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->y0:F

    .line 24
    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->z0:F

    .line 25
    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->A0:F

    .line 26
    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->B0:F

    .line 27
    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->C0:F

    .line 28
    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->D0:F

    .line 29
    sget-object v0, Lz/d;->ConstraintSet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_2b
    if-ge v1, p2, :cond_d7

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 32
    sget v2, Lz/d;->ConstraintSet_android_alpha:I

    if-ne v0, v2, :cond_3f

    .line 33
    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->r0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->r0:F

    goto/16 :goto_d3

    .line 34
    :cond_3f
    sget v2, Lz/d;->ConstraintSet_android_elevation:I

    if-ne v0, v2, :cond_50

    .line 35
    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->t0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->t0:F

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$a;->s0:Z

    goto/16 :goto_d3

    .line 37
    :cond_50
    sget v2, Lz/d;->ConstraintSet_android_rotationX:I

    if-ne v0, v2, :cond_5e

    .line 38
    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->v0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->v0:F

    goto/16 :goto_d3

    .line 39
    :cond_5e
    sget v2, Lz/d;->ConstraintSet_android_rotationY:I

    if-ne v0, v2, :cond_6c

    .line 40
    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->w0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->w0:F

    goto/16 :goto_d3

    .line 41
    :cond_6c
    sget v2, Lz/d;->ConstraintSet_android_rotation:I

    if-ne v0, v2, :cond_79

    .line 42
    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->u0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->u0:F

    goto :goto_d3

    .line 43
    :cond_79
    sget v2, Lz/d;->ConstraintSet_android_scaleX:I

    if-ne v0, v2, :cond_86

    .line 44
    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->x0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->x0:F

    goto :goto_d3

    .line 45
    :cond_86
    sget v2, Lz/d;->ConstraintSet_android_scaleY:I

    if-ne v0, v2, :cond_93

    .line 46
    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->y0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->y0:F

    goto :goto_d3

    .line 47
    :cond_93
    sget v2, Lz/d;->ConstraintSet_android_transformPivotX:I

    if-ne v0, v2, :cond_a0

    .line 48
    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->z0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->z0:F

    goto :goto_d3

    .line 49
    :cond_a0
    sget v2, Lz/d;->ConstraintSet_android_transformPivotY:I

    if-ne v0, v2, :cond_ad

    .line 50
    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->A0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->A0:F

    goto :goto_d3

    .line 51
    :cond_ad
    sget v2, Lz/d;->ConstraintSet_android_translationX:I

    if-ne v0, v2, :cond_ba

    .line 52
    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->B0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->B0:F

    goto :goto_d3

    .line 53
    :cond_ba
    sget v2, Lz/d;->ConstraintSet_android_translationY:I

    if-ne v0, v2, :cond_c7

    .line 54
    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->C0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->C0:F

    goto :goto_d3

    .line 55
    :cond_c7
    sget v2, Lz/d;->ConstraintSet_android_translationZ:I

    if-ne v0, v2, :cond_d3

    .line 56
    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->D0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->D0:F

    :cond_d3
    :goto_d3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2b

    .line 57
    :cond_d7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
