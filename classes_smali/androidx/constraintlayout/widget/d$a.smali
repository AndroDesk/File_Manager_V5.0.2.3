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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->r0:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/d$a;->s0:Z

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->t0:F

    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->u0:F

    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->v0:F

    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->w0:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->x0:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->y0:F

    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->z0:F

    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->A0:F

    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->B0:F

    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->C0:F

    iput v1, p0, Landroidx/constraintlayout/widget/d$a;->D0:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->r0:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/d$a;->s0:Z

    const/4 v2, 0x0

    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->t0:F

    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->u0:F

    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->v0:F

    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->w0:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->x0:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->y0:F

    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->z0:F

    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->A0:F

    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->B0:F

    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->C0:F

    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->D0:F

    sget-object v0, Lz/d;->ConstraintSet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_2b
    if-ge v1, p2, :cond_d7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v2, Lz/d;->ConstraintSet_android_alpha:I

    if-ne v0, v2, :cond_3f

    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->r0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->r0:F

    goto/16 :goto_d3

    :cond_3f
    sget v2, Lz/d;->ConstraintSet_android_elevation:I

    if-ne v0, v2, :cond_50

    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->t0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->t0:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$a;->s0:Z

    goto/16 :goto_d3

    :cond_50
    sget v2, Lz/d;->ConstraintSet_android_rotationX:I

    if-ne v0, v2, :cond_5e

    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->v0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->v0:F

    goto/16 :goto_d3

    :cond_5e
    sget v2, Lz/d;->ConstraintSet_android_rotationY:I

    if-ne v0, v2, :cond_6c

    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->w0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->w0:F

    goto/16 :goto_d3

    :cond_6c
    sget v2, Lz/d;->ConstraintSet_android_rotation:I

    if-ne v0, v2, :cond_79

    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->u0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->u0:F

    goto :goto_d3

    :cond_79
    sget v2, Lz/d;->ConstraintSet_android_scaleX:I

    if-ne v0, v2, :cond_86

    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->x0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->x0:F

    goto :goto_d3

    :cond_86
    sget v2, Lz/d;->ConstraintSet_android_scaleY:I

    if-ne v0, v2, :cond_93

    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->y0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->y0:F

    goto :goto_d3

    :cond_93
    sget v2, Lz/d;->ConstraintSet_android_transformPivotX:I

    if-ne v0, v2, :cond_a0

    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->z0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->z0:F

    goto :goto_d3

    :cond_a0
    sget v2, Lz/d;->ConstraintSet_android_transformPivotY:I

    if-ne v0, v2, :cond_ad

    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->A0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->A0:F

    goto :goto_d3

    :cond_ad
    sget v2, Lz/d;->ConstraintSet_android_translationX:I

    if-ne v0, v2, :cond_ba

    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->B0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->B0:F

    goto :goto_d3

    :cond_ba
    sget v2, Lz/d;->ConstraintSet_android_translationY:I

    if-ne v0, v2, :cond_c7

    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->C0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->C0:F

    goto :goto_d3

    :cond_c7
    sget v2, Lz/d;->ConstraintSet_android_translationZ:I

    if-ne v0, v2, :cond_d3

    iget v2, p0, Landroidx/constraintlayout/widget/d$a;->D0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->D0:F

    :cond_d3
    :goto_d3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2b

    :cond_d7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
