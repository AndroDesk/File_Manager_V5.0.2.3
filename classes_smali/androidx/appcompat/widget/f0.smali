.class public Landroidx/appcompat/widget/f0;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/f0$c;,
        Landroidx/appcompat/widget/f0$e;,
        Landroidx/appcompat/widget/f0$a;,
        Landroidx/appcompat/widget/f0$b;,
        Landroidx/appcompat/widget/f0$f;,
        Landroidx/appcompat/widget/f0$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroidx/appcompat/widget/f0$d;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Landroidx/core/widget/f;

.field public l:Landroidx/appcompat/widget/f0$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    sget v0, Lh/a;->dropDownListViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/f0;->a:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/widget/f0;->b:I

    iput p1, p0, Landroidx/appcompat/widget/f0;->c:I

    iput p1, p0, Landroidx/appcompat/widget/f0;->d:I

    iput p1, p0, Landroidx/appcompat/widget/f0;->e:I

    iput-boolean p2, p0, Landroidx/appcompat/widget/f0;->i:Z

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    return-void
.end method

.method private setSelectorEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/f0;->g:Landroidx/appcompat/widget/f0$d;

    if-eqz v0, :cond_6

    iput-boolean p1, v0, Landroidx/appcompat/widget/f0$d;->b:Z

    :cond_6
    return-void
.end method


# virtual methods
.method public final a(II)I
    .registers 14

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    add-int/2addr v0, v1

    if-nez v4, :cond_18

    return v0

    :cond_18
    const/4 v1, 0x0

    if-lez v2, :cond_1e

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v1

    :goto_1f
    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    const/4 v5, 0x0

    move v6, v1

    move v7, v6

    move-object v8, v5

    :goto_27
    if-ge v6, v3, :cond_65

    invoke-interface {v4, v6}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v7, :cond_31

    move-object v8, v5

    move v7, v9

    :cond_31
    invoke-interface {v4, v6, v8, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-nez v9, :cond_42

    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_42
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v9, :cond_4d

    const/high16 v10, 0x40000000  # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_51

    :cond_4d
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    :goto_51
    invoke-virtual {v8, p1, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->forceLayout()V

    if-lez v6, :cond_5a

    add-int/2addr v0, v2

    :cond_5a
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v0, v9

    if-lt v0, p2, :cond_62

    return p2

    :cond_62
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_65
    return v0
.end method

.method public final b(Landroid/view/MotionEvent;I)Z
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_17

    const/4 v0, 0x2

    if-eq v3, v0, :cond_15

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1e

    move v0, v5

    goto/16 :goto_143

    :cond_15
    move v0, v5

    goto :goto_18

    :cond_17
    move v0, v4

    :goto_18
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    if-gez v6, :cond_21

    :cond_1e
    move v0, v4

    goto/16 :goto_143

    :cond_21
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1, v7, v6}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_35

    move v4, v5

    goto/16 :goto_143

    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v8, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    int-to-float v7, v7

    int-to-float v6, v6

    iput-boolean v5, v1, Landroidx/appcompat/widget/f0;->j:Z

    invoke-static {v1, v7, v6}, Landroidx/appcompat/widget/f0$a;->a(Landroid/view/View;FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_4f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    iget v0, v1, Landroidx/appcompat/widget/f0;->f:I

    if-eq v0, v9, :cond_6c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v0, v11

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6c

    if-eq v0, v10, :cond_6c

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v11

    if-eqz v11, :cond_6c

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_6c
    iput v8, v1, Landroidx/appcompat/widget/f0;->f:I

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v7, v0

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    int-to-float v11, v11

    sub-float v11, v6, v11

    invoke-static {v10, v0, v11}, Landroidx/appcompat/widget/f0$a;->a(Landroid/view/View;FF)V

    invoke-virtual {v10}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_88

    invoke-virtual {v10, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_88
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_92

    if-eq v8, v9, :cond_92

    move v12, v5

    goto :goto_93

    :cond_92
    move v12, v4

    :goto_93
    if-eqz v12, :cond_98

    invoke-virtual {v11, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_98
    iget-object v0, v1, Landroidx/appcompat/widget/f0;->a:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v13, v14, v15, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v13, v1, Landroidx/appcompat/widget/f0;->b:I

    sub-int/2addr v4, v13

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v13, v1, Landroidx/appcompat/widget/f0;->c:I

    sub-int/2addr v4, v13

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v13, v1, Landroidx/appcompat/widget/f0;->d:I

    add-int/2addr v4, v13

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v13, v1, Landroidx/appcompat/widget/f0;->e:I

    add-int/2addr v4, v13

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Li0/a;->a()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/f0$c;->a(Landroid/widget/AbsListView;)Z

    move-result v0

    goto :goto_e3

    :cond_d4
    sget-object v0, Landroidx/appcompat/widget/f0$e;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_e2

    :try_start_d8
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_dc
    .catch Ljava/lang/IllegalAccessException; {:try_start_d8 .. :try_end_dc} :catch_dd

    goto :goto_e3

    :catch_dd
    move-exception v0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e2
    const/4 v0, 0x0

    :goto_e3
    invoke-virtual {v10}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eq v4, v0, :cond_109

    xor-int/2addr v0, v5

    invoke-static {}, Li0/a;->a()Z

    move-result v4

    if-eqz v4, :cond_f4

    invoke-static {v1, v0}, Landroidx/appcompat/widget/f0$c;->b(Landroid/widget/AbsListView;Z)V

    goto :goto_104

    :cond_f4
    sget-object v4, Landroidx/appcompat/widget/f0$e;->a:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_104

    :try_start_f8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ff
    .catch Ljava/lang/IllegalAccessException; {:try_start_f8 .. :try_end_ff} :catch_100

    goto :goto_104

    :catch_100
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_104
    :goto_104
    if-eq v8, v9, :cond_109

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_109
    if-eqz v12, :cond_126

    iget-object v0, v1, Landroidx/appcompat/widget/f0;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_11d

    move v12, v5

    goto :goto_11e

    :cond_11d
    const/4 v12, 0x0

    :goto_11e
    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-static {v11, v4, v0}, Lg0/a$b;->e(Landroid/graphics/drawable/Drawable;FF)V

    goto :goto_127

    :cond_126
    const/4 v13, 0x0

    :goto_127
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_132

    if-eq v8, v9, :cond_132

    invoke-static {v0, v7, v6}, Lg0/a$b;->e(Landroid/graphics/drawable/Drawable;FF)V

    :cond_132
    invoke-direct {v1, v13}, Landroidx/appcompat/widget/f0;->setSelectorEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->refreshDrawableState()V

    if-ne v3, v5, :cond_141

    invoke-virtual {v1, v8}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v3

    invoke-virtual {v1, v10, v8, v3, v4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_141
    move v0, v5

    const/4 v4, 0x0

    :goto_143
    if-eqz v0, :cond_147

    if-eqz v4, :cond_160

    :cond_147
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroidx/appcompat/widget/f0;->j:Z

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/f0;->drawableStateChanged()V

    iget v4, v1, Landroidx/appcompat/widget/f0;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_160

    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_160
    if-eqz v0, :cond_177

    iget-object v3, v1, Landroidx/appcompat/widget/f0;->k:Landroidx/core/widget/f;

    if-nez v3, :cond_16d

    new-instance v3, Landroidx/core/widget/f;

    invoke-direct {v3, v1}, Landroidx/core/widget/f;-><init>(Landroid/widget/ListView;)V

    iput-object v3, v1, Landroidx/appcompat/widget/f0;->k:Landroidx/core/widget/f;

    :cond_16d
    iget-object v3, v1, Landroidx/appcompat/widget/f0;->k:Landroidx/core/widget/f;

    iget-boolean v4, v3, Landroidx/core/widget/a;->p:Z

    iput-boolean v5, v3, Landroidx/core/widget/a;->p:Z

    invoke-virtual {v3, v1, v2}, Landroidx/core/widget/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_185

    :cond_177
    iget-object v2, v1, Landroidx/appcompat/widget/f0;->k:Landroidx/core/widget/f;

    if-eqz v2, :cond_185

    iget-boolean v3, v2, Landroidx/core/widget/a;->p:Z

    if-eqz v3, :cond_182

    invoke-virtual {v2}, Landroidx/core/widget/a;->d()V

    :cond_182
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/core/widget/a;->p:Z

    :cond_185
    :goto_185
    return v0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/f0;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Landroidx/appcompat/widget/f0;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_16
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final drawableStateChanged()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/f0;->l:Landroidx/appcompat/widget/f0$f;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/f0;->setSelectorEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-boolean v1, p0, Landroidx/appcompat/widget/f0;->j:Z

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_23
    return-void
.end method

.method public final hasFocus()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/f0;->i:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public final hasWindowFocus()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/f0;->i:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public final isFocused()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/f0;->i:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public final isInTouchMode()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/f0;->i:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroidx/appcompat/widget/f0;->h:Z

    if-nez v0, :cond_e

    :cond_8
    invoke-super {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/f0;->l:Landroidx/appcompat/widget/f0$f;

    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_b

    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_21

    iget-object v2, p0, Landroidx/appcompat/widget/f0;->l:Landroidx/appcompat/widget/f0$f;

    if-nez v2, :cond_21

    new-instance v2, Landroidx/appcompat/widget/f0$f;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/f0$f;-><init>(Landroidx/appcompat/widget/f0;)V

    iput-object v2, p0, Landroidx/appcompat/widget/f0;->l:Landroidx/appcompat/widget/f0$f;

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_21
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/16 v3, 0x9

    const/4 v4, -0x1

    if-eq v1, v3, :cond_33

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2e

    goto :goto_33

    :cond_2e
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setSelection(I)V

    goto/16 :goto_d1

    :cond_33
    :goto_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result p1

    if-eq p1, v4, :cond_d1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-eq p1, v1, :cond_d1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_ba

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_ae

    sget-boolean v0, Landroidx/appcompat/widget/f0$b;->d:Z

    if-eqz v0, :cond_ae

    :try_start_64
    sget-object v0, Landroidx/appcompat/widget/f0$b;->a:Ljava/lang/reflect/Method;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const/4 v1, 0x2

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v7, v3, v1

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    const/4 v1, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/appcompat/widget/f0$b;->b:Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/appcompat/widget/f0$b;->c:Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a3
    .catch Ljava/lang/IllegalAccessException; {:try_start_64 .. :try_end_a3} :catch_a9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_64 .. :try_end_a3} :catch_a4

    goto :goto_ba

    :catch_a4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ba

    :catch_a9
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ba

    :cond_ae
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    :cond_ba
    :goto_ba
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_d1

    iget-boolean v0, p0, Landroidx/appcompat/widget/f0;->j:Z

    if-eqz v0, :cond_d1

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_d1
    :goto_d1
    return v2
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_17

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/f0;->f:I

    :goto_17
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->l:Landroidx/appcompat/widget/f0$f;

    if-eqz v0, :cond_23

    iget-object v1, v0, Landroidx/appcompat/widget/f0$f;->a:Landroidx/appcompat/widget/f0;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/widget/f0;->l:Landroidx/appcompat/widget/f0$f;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_23
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setListSelectionHidden(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/widget/f0;->h:Z

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_8

    new-instance v0, Landroidx/appcompat/widget/f0$d;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/f0$d;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroidx/appcompat/widget/f0;->g:Landroidx/appcompat/widget/f0$d;

    invoke-super {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_18

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_18
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroidx/appcompat/widget/f0;->b:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroidx/appcompat/widget/f0;->c:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroidx/appcompat/widget/f0;->d:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroidx/appcompat/widget/f0;->e:I

    return-void
.end method
