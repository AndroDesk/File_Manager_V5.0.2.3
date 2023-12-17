.class public final Landroidx/constraintlayout/widget/ConstraintLayout$c;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Lw/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 3

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static a(III)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v2, 0x40000000  # 2.0f

    if-ne p0, v2, :cond_20

    const/high16 p0, -0x80000000

    if-eq v1, p0, :cond_1d

    if-nez v1, :cond_20

    :cond_1d
    if-ne p2, p1, :cond_20

    return v0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$a;)V
    .registers 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_9

    return-void

    :cond_9
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1b

    iget-boolean v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G:Z

    if-nez v3, :cond_1b

    iput v5, v2, Lw/b$a;->e:I

    iput v5, v2, Lw/b$a;->f:I

    iput v5, v2, Lw/b$a;->g:I

    return-void

    :cond_1b
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v3, :cond_20

    return-void

    :cond_20
    iget-object v3, v2, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v4, v2, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v6, v2, Lw/b$a;->c:I

    iget v7, v2, Lw/b$a;->d:I

    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b:I

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->c:I

    add-int/2addr v8, v9

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I

    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:Ljava/lang/Object;

    check-cast v10, Landroid/view/View;

    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v11, v12

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x4

    const/4 v5, 0x1

    if-eq v12, v5, :cond_b2

    if-eq v12, v14, :cond_aa

    if-eq v12, v13, :cond_90

    if-eq v12, v15, :cond_4a

    const/4 v6, 0x0

    goto/16 :goto_b8

    :cond_4a
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    const/4 v12, -0x2

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    if-ne v9, v5, :cond_57

    move v9, v5

    goto :goto_58

    :cond_57
    const/4 v9, 0x0

    :goto_58
    iget v12, v2, Lw/b$a;->j:I

    if-eq v12, v5, :cond_5e

    if-ne v12, v14, :cond_b8

    :cond_5e
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v15

    if-ne v12, v15, :cond_6a

    move v12, v5

    goto :goto_6b

    :cond_6a
    const/4 v12, 0x0

    :goto_6b
    iget v15, v2, Lw/b$a;->j:I

    if-eq v15, v14, :cond_82

    if-eqz v9, :cond_82

    if-eqz v9, :cond_75

    if-nez v12, :cond_82

    :cond_75
    instance-of v9, v10, Landroidx/constraintlayout/widget/f;

    if-nez v9, :cond_82

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y()Z

    move-result v9

    if-eqz v9, :cond_80

    goto :goto_82

    :cond_80
    const/4 v9, 0x0

    goto :goto_83

    :cond_82
    :goto_82
    move v9, v5

    :goto_83
    if-eqz v9, :cond_b8

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v6

    const/high16 v9, 0x40000000  # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_b8

    :cond_90
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v12, :cond_9b

    iget v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    const/4 v15, 0x0

    add-int/2addr v12, v15

    goto :goto_9c

    :cond_9b
    const/4 v12, 0x0

    :goto_9c
    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v15, :cond_a3

    iget v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    add-int/2addr v12, v15

    :cond_a3
    add-int/2addr v9, v12

    const/4 v12, -0x1

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_b8

    :cond_aa
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    const/4 v12, -0x2

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_b8

    :cond_b2
    const/high16 v9, 0x40000000  # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :cond_b8
    :goto_b8
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v11, v9

    if-eq v9, v5, :cond_136

    if-eq v9, v14, :cond_12e

    if-eq v9, v13, :cond_110

    const/4 v7, 0x4

    if-eq v9, v7, :cond_ca

    const/4 v7, 0x0

    goto/16 :goto_13c

    :cond_ca
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    if-ne v8, v5, :cond_d7

    move v8, v5

    goto :goto_d8

    :cond_d7
    const/4 v8, 0x0

    :goto_d8
    iget v9, v2, Lw/b$a;->j:I

    if-eq v9, v5, :cond_de

    if-ne v9, v14, :cond_13c

    :cond_de
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v11

    if-ne v9, v11, :cond_ea

    move v9, v5

    goto :goto_eb

    :cond_ea
    const/4 v9, 0x0

    :goto_eb
    iget v11, v2, Lw/b$a;->j:I

    if-eq v11, v14, :cond_102

    if-eqz v8, :cond_102

    if-eqz v8, :cond_f5

    if-nez v9, :cond_102

    :cond_f5
    instance-of v8, v10, Landroidx/constraintlayout/widget/f;

    if-nez v8, :cond_102

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()Z

    move-result v8

    if-eqz v8, :cond_100

    goto :goto_102

    :cond_100
    const/4 v8, 0x0

    goto :goto_103

    :cond_102
    :goto_102
    move v8, v5

    :goto_103
    if-eqz v8, :cond_13c

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v7

    const/high16 v8, 0x40000000  # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_13c

    :cond_110
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v9, :cond_11d

    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    const/4 v11, 0x0

    add-int/2addr v9, v11

    goto :goto_11e

    :cond_11d
    const/4 v9, 0x0

    :goto_11e
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v11, :cond_127

    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    add-int/2addr v9, v11

    :cond_127
    add-int/2addr v8, v9

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_13c

    :cond_12e
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_13c

    :cond_136
    const/high16 v8, 0x40000000  # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :cond_13c
    :goto_13c
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v8, Landroidx/constraintlayout/core/widgets/d;

    if-eqz v8, :cond_1b4

    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v9

    const/16 v11, 0x100

    invoke-static {v9, v11}, Landroidx/constraintlayout/core/widgets/f;->b(II)Z

    move-result v9

    if-eqz v9, :cond_1b4

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v11

    if-ne v9, v11, :cond_1b4

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v11

    if-ge v9, v11, :cond_1b4

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v11

    if-ne v9, v11, :cond_1b4

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v8

    if-ge v9, v8, :cond_1b4

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v8

    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    if-ne v8, v9, :cond_1b4

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    move-result v8

    if-nez v8, :cond_1b4

    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:I

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v9

    invoke-static {v8, v6, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a(III)Z

    move-result v8

    if-eqz v8, :cond_1a0

    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:I

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v9

    invoke-static {v8, v7, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a(III)Z

    move-result v8

    if-eqz v8, :cond_1a0

    move v8, v5

    goto :goto_1a1

    :cond_1a0
    const/4 v8, 0x0

    :goto_1a1
    if-eqz v8, :cond_1b4

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v3

    iput v3, v2, Lw/b$a;->e:I

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v3

    iput v3, v2, Lw/b$a;->f:I

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    iput v1, v2, Lw/b$a;->g:I

    return-void

    :cond_1b4
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v8, :cond_1ba

    move v9, v5

    goto :goto_1bb

    :cond_1ba
    const/4 v9, 0x0

    :goto_1bb
    if-ne v4, v8, :cond_1bf

    move v8, v5

    goto :goto_1c0

    :cond_1bf
    const/4 v8, 0x0

    :goto_1c0
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v11, :cond_1cb

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v12, :cond_1c9

    goto :goto_1cb

    :cond_1c9
    const/4 v15, 0x0

    goto :goto_1cc

    :cond_1cb
    :goto_1cb
    move v15, v5

    :goto_1cc
    if-eq v3, v11, :cond_1d5

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1d3

    goto :goto_1d5

    :cond_1d3
    const/4 v3, 0x0

    goto :goto_1d6

    :cond_1d5
    :goto_1d5
    move v3, v5

    :goto_1d6
    const/4 v4, 0x0

    if-eqz v9, :cond_1e1

    iget v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    cmpl-float v11, v11, v4

    if-lez v11, :cond_1e1

    move v11, v5

    goto :goto_1e2

    :cond_1e1
    const/4 v11, 0x0

    :goto_1e2
    if-eqz v8, :cond_1ec

    iget v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    cmpl-float v4, v12, v4

    if-lez v4, :cond_1ec

    move v4, v5

    goto :goto_1ed

    :cond_1ec
    const/4 v4, 0x0

    :goto_1ed
    if-nez v10, :cond_1f0

    return-void

    :cond_1f0
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget v13, v2, Lw/b$a;->j:I

    if-eq v13, v5, :cond_210

    if-eq v13, v14, :cond_210

    if-eqz v9, :cond_210

    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    if-nez v9, :cond_210

    if-eqz v8, :cond_210

    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    if-eqz v8, :cond_209

    goto :goto_210

    :cond_209
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v13, 0x0

    :goto_20d
    const/4 v15, 0x0

    goto/16 :goto_2b8

    :cond_210
    :goto_210
    instance-of v8, v10, Lz/g;

    if-eqz v8, :cond_21f

    instance-of v8, v1, Landroidx/constraintlayout/core/widgets/g;

    if-eqz v8, :cond_21f

    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/core/widgets/g;

    move-object v8, v10

    check-cast v8, Lz/g;

    goto :goto_222

    :cond_21f
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    :goto_222
    iput v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:I

    iput v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:I

    const/4 v8, 0x0

    iput-boolean v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v13

    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    if-lez v14, :cond_23e

    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_23f

    :cond_23e
    move v14, v8

    :goto_23f
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    if-lez v5, :cond_247

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    :cond_247
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    if-lez v5, :cond_252

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v16, v6

    goto :goto_255

    :cond_252
    move/from16 v16, v6

    move v5, v9

    :goto_255
    iget v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    if-lez v6, :cond_25d

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_25d
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v6

    const/4 v0, 0x1

    invoke-static {v6, v0}, Landroidx/constraintlayout/core/widgets/f;->b(II)Z

    move-result v6

    if-nez v6, :cond_283

    const/high16 v0, 0x3f000000  # 0.5f

    if-eqz v11, :cond_278

    if-eqz v15, :cond_278

    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    int-to-float v4, v5

    mul-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v15, v0

    goto :goto_284

    :cond_278
    if-eqz v4, :cond_283

    if-eqz v3, :cond_283

    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    int-to-float v4, v14

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v5, v0

    :cond_283
    move v15, v14

    :goto_284
    if-ne v8, v15, :cond_28d

    if-eq v9, v5, :cond_289

    goto :goto_28d

    :cond_289
    move v3, v5

    move v0, v15

    const/4 v4, -0x1

    goto :goto_20d

    :cond_28d
    :goto_28d
    if-eq v8, v15, :cond_296

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_29a

    :cond_296
    const/high16 v0, 0x40000000  # 2.0f

    move/from16 v6, v16

    :goto_29a
    if-eq v9, v5, :cond_2a0

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :cond_2a0
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    iput v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:I

    iput v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:I

    const/4 v15, 0x0

    iput-boolean v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v4

    move v13, v4

    const/4 v4, -0x1

    :goto_2b8
    if-eq v13, v4, :cond_2bc

    const/4 v4, 0x1

    goto :goto_2bd

    :cond_2bc
    move v4, v15

    :goto_2bd
    iget v5, v2, Lw/b$a;->c:I

    if-ne v0, v5, :cond_2c8

    iget v5, v2, Lw/b$a;->d:I

    if-eq v3, v5, :cond_2c6

    goto :goto_2c8

    :cond_2c6
    move v5, v15

    goto :goto_2c9

    :cond_2c8
    :goto_2c8
    const/4 v5, 0x1

    :goto_2c9
    iput-boolean v5, v2, Lw/b$a;->i:Z

    iget-boolean v5, v12, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c0:Z

    if-eqz v5, :cond_2d0

    const/4 v4, 0x1

    :cond_2d0
    if-eqz v4, :cond_2dc

    const/4 v5, -0x1

    if-eq v13, v5, :cond_2dc

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    if-eq v1, v13, :cond_2dc

    const/4 v1, 0x1

    iput-boolean v1, v2, Lw/b$a;->i:Z

    :cond_2dc
    iput v0, v2, Lw/b$a;->e:I

    iput v3, v2, Lw/b$a;->f:I

    iput-boolean v4, v2, Lw/b$a;->h:Z

    iput v13, v2, Lw/b$a;->g:I

    return-void
.end method
