.class public final Landroidx/constraintlayout/widget/c$c;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static l:Landroid/util/SparseIntArray;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:F

.field public g:F

.field public h:I

.field public i:Ljava/lang/String;

.field public j:I

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Motion_motionPathRotate:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Motion_pathMotionArc:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Motion_transitionEasing:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Motion_drawPath:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Motion_animateRelativeTo:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Motion_animateCircleAngleTo:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Motion_motionStagger:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Motion_quantizeMotionSteps:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Motion_quantizeMotionPhase:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Motion_quantizeMotionInterpolator:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$c;->a:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/c$c;->b:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$c;->c:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$c;->d:I

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/widget/c$c;->e:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$c;->f:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$c;->g:F

    iput v1, p0, Landroidx/constraintlayout/widget/c$c;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$c;->i:Ljava/lang/String;

    const/4 v0, -0x3

    iput v0, p0, Landroidx/constraintlayout/widget/c$c;->j:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$c;->k:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/widget/c$c;)V
    .registers 3

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/c$c;->a:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$c;->a:Z

    iget v0, p1, Landroidx/constraintlayout/widget/c$c;->b:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$c;->b:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$c;->d:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$c;->d:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$c;->f:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$c;->f:F

    iget p1, p1, Landroidx/constraintlayout/widget/c$c;->e:F

    iput p1, p0, Landroidx/constraintlayout/widget/c$c;->e:F

    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    sget-object v0, Lz/d;->Motion:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/constraintlayout/widget/c$c;->a:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_b7

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget-object v4, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const/4 v5, 0x3

    packed-switch v4, :pswitch_data_bc

    goto/16 :goto_b3

    :pswitch_21  #0xa
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    iget v4, v4, Landroid/util/TypedValue;->type:I

    const/4 v6, -0x2

    const/4 v7, -0x1

    if-ne v4, p2, :cond_37

    invoke-virtual {p1, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->k:I

    if-eq v3, v7, :cond_b3

    iput v6, p0, Landroidx/constraintlayout/widget/c$c;->j:I

    goto/16 :goto_b3

    :cond_37
    if-ne v4, v5, :cond_53

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/widget/c$c;->i:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_50

    invoke-virtual {p1, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->k:I

    iput v6, p0, Landroidx/constraintlayout/widget/c$c;->j:I

    goto :goto_b3

    :cond_50
    iput v7, p0, Landroidx/constraintlayout/widget/c$c;->j:I

    goto :goto_b3

    :cond_53
    iget v4, p0, Landroidx/constraintlayout/widget/c$c;->k:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->j:I

    goto :goto_b3

    :pswitch_5c  #0x9
    iget v4, p0, Landroidx/constraintlayout/widget/c$c;->g:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->g:F

    goto :goto_b3

    :pswitch_65  #0x8
    iget v4, p0, Landroidx/constraintlayout/widget/c$c;->h:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->h:I

    goto :goto_b3

    :pswitch_6e  #0x7
    iget v4, p0, Landroidx/constraintlayout/widget/c$c;->e:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->e:F

    goto :goto_b3

    :pswitch_77  #0x6
    iget v4, p0, Landroidx/constraintlayout/widget/c$c;->c:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->c:I

    goto :goto_b3

    :pswitch_80  #0x5
    iget v4, p0, Landroidx/constraintlayout/widget/c$c;->b:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->b:I

    goto :goto_b3

    :pswitch_89  #0x4
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    goto :goto_b3

    :pswitch_8d  #0x3
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    iget v4, v4, Landroid/util/TypedValue;->type:I

    if-ne v4, v5, :cond_99

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    goto :goto_b3

    :cond_99
    sget-object v4, Lu/c;->c:[Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    aget-object v3, v4, v3

    goto :goto_b3

    :pswitch_a2  #0x2
    iget v4, p0, Landroidx/constraintlayout/widget/c$c;->d:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->d:I

    goto :goto_b3

    :pswitch_ab  #0x1
    iget v4, p0, Landroidx/constraintlayout/widget/c$c;->f:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->f:F

    :cond_b3
    :goto_b3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    :cond_b7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_ab  #00000001
        :pswitch_a2  #00000002
        :pswitch_8d  #00000003
        :pswitch_89  #00000004
        :pswitch_80  #00000005
        :pswitch_77  #00000006
        :pswitch_6e  #00000007
        :pswitch_65  #00000008
        :pswitch_5c  #00000009
        :pswitch_21  #0000000a
    .end packed-switch
.end method
