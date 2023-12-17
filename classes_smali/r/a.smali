.class public Lr/a;
.super Landroid/widget/FrameLayout;
.source "CardView.java"


# static fields
.field private static final COLOR_BACKGROUND_ATTR:[I

.field private static final IMPL:Lr/d;


# instance fields
.field private final mCardViewDelegate:Lr/c;

.field private mCompatPadding:Z

.field public final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field public final mShadowBounds:Landroid/graphics/Rect;

.field public mUserSetMinHeight:I

.field public mUserSetMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    sput-object v0, Lr/a;->COLOR_BACKGROUND_ATTR:[I

    new-instance v0, Lr/b;

    invoke-direct {v0}, Lr/b;-><init>()V

    sput-object v0, Lr/a;->IMPL:Lr/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lr/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lq/a;->cardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lr/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lr/a;->mContentPadding:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lr/a;->mShadowBounds:Landroid/graphics/Rect;

    new-instance v3, Lr/a$a;

    invoke-direct {v3, p0}, Lr/a$a;-><init>(Lr/a;)V

    iput-object v3, p0, Lr/a;->mCardViewDelegate:Lr/c;

    sget-object v1, Lq/d;->CardView:[I

    sget v2, Lq/c;->CardView:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lq/d;->CardView_cardBackgroundColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    :goto_2d
    move-object v5, p3

    goto :goto_69

    :cond_2f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v1, Lr/a;->COLOR_BACKGROUND_ATTR:[I

    invoke-virtual {p3, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    invoke-virtual {p3, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p3, 0x3

    new-array p3, p3, [F

    invoke-static {v1, p3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    aget p3, p3, v1

    const/high16 v1, 0x3f000000  # 0.5f

    cmpl-float p3, p3, v1

    if-lez p3, :cond_5a

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lq/b;->cardview_light_background:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    goto :goto_64

    :cond_5a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lq/b;->cardview_dark_background:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    :goto_64
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_2d

    :goto_69
    sget p3, Lq/d;->CardView_cardCornerRadius:I

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    sget p3, Lq/d;->CardView_cardElevation:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    sget p3, Lq/d;->CardView_cardMaxElevation:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    sget v1, Lq/d;->CardView_cardUseCompatPadding:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lr/a;->mCompatPadding:Z

    sget v1, Lq/d;->CardView_cardPreventCornerOverlap:I

    const/4 v4, 0x1

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lr/a;->mPreventCornerOverlap:Z

    sget v1, Lq/d;->CardView_contentPadding:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sget v4, Lq/d;->CardView_contentPaddingLeft:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    sget v4, Lq/d;->CardView_contentPaddingTop:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    sget v4, Lq/d;->CardView_contentPaddingRight:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    sget v4, Lq/d;->CardView_contentPaddingBottom:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    cmpl-float v0, v7, p3

    if-lez v0, :cond_b9

    move v8, v7

    goto :goto_ba

    :cond_b9
    move v8, p3

    :goto_ba
    sget p3, Lq/d;->CardView_android_minWidth:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lr/a;->mUserSetMinWidth:I

    sget p3, Lq/d;->CardView_android_minHeight:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lr/a;->mUserSetMinHeight:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v2, Lr/a;->IMPL:Lr/d;

    move-object v4, p1

    invoke-interface/range {v2 .. v8}, Lr/d;->b(Lr/a$a;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    return-void
.end method

.method public static synthetic access$001(Lr/a;IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static synthetic access$101(Lr/a;I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method

.method public static synthetic access$201(Lr/a;I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 3

    sget-object v0, Lr/a;->IMPL:Lr/d;

    iget-object v1, p0, Lr/a;->mCardViewDelegate:Lr/c;

    invoke-interface {v0, v1}, Lr/d;->c(Lr/c;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .registers 3

    sget-object v0, Lr/a;->IMPL:Lr/d;

    iget-object v1, p0, Lr/a;->mCardViewDelegate:Lr/c;

    invoke-interface {v0, v1}, Lr/d;->d(Lr/c;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .registers 2

    iget-object v0, p0, Lr/a;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .registers 2

    iget-object v0, p0, Lr/a;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .registers 2

    iget-object v0, p0, Lr/a;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .registers 2

    iget-object v0, p0, Lr/a;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .registers 3

    sget-object v0, Lr/a;->IMPL:Lr/d;

    iget-object v1, p0, Lr/a;->mCardViewDelegate:Lr/c;

    invoke-interface {v0, v1}, Lr/d;->g(Lr/c;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .registers 2

    iget-boolean v0, p0, Lr/a;->mPreventCornerOverlap:Z

    return v0
.end method

.method public getRadius()F
    .registers 3

    sget-object v0, Lr/a;->IMPL:Lr/d;

    iget-object v1, p0, Lr/a;->mCardViewDelegate:Lr/c;

    invoke-interface {v0, v1}, Lr/d;->k(Lr/c;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .registers 2

    iget-boolean v0, p0, Lr/a;->mCompatPadding:Z

    return v0
.end method

.method public onMeasure(II)V
    .registers 9

    sget-object v0, Lr/a;->IMPL:Lr/d;

    instance-of v1, v0, Lr/b;

    if-nez v1, :cond_50

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_13

    if-eq v1, v2, :cond_13

    goto :goto_2b

    :cond_13
    iget-object v4, p0, Lr/a;->mCardViewDelegate:Lr/c;

    invoke-interface {v0, v4}, Lr/d;->h(Lr/c;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_2b
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_34

    if-eq v1, v2, :cond_34

    goto :goto_4c

    :cond_34
    iget-object v2, p0, Lr/a;->mCardViewDelegate:Lr/c;

    invoke-interface {v0, v2}, Lr/d;->a(Lr/c;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_4c
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_53

    :cond_50
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_53
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .registers 4

    sget-object v0, Lr/a;->IMPL:Lr/d;

    iget-object v1, p0, Lr/a;->mCardViewDelegate:Lr/c;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lr/d;->n(Lr/c;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    sget-object v0, Lr/a;->IMPL:Lr/d;

    iget-object v1, p0, Lr/a;->mCardViewDelegate:Lr/c;

    invoke-interface {v0, v1, p1}, Lr/d;->n(Lr/c;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .registers 4

    sget-object v0, Lr/a;->IMPL:Lr/d;

    iget-object v1, p0, Lr/a;->mCardViewDelegate:Lr/c;

    invoke-interface {v0, v1, p1}, Lr/d;->e(Lr/c;F)V

    return-void
.end method

.method public setContentPadding(IIII)V
    .registers 6

    iget-object v0, p0, Lr/a;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object p1, Lr/a;->IMPL:Lr/d;

    iget-object p2, p0, Lr/a;->mCardViewDelegate:Lr/c;

    invoke-interface {p1, p2}, Lr/d;->l(Lr/c;)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .registers 4

    sget-object v0, Lr/a;->IMPL:Lr/d;

    iget-object v1, p0, Lr/a;->mCardViewDelegate:Lr/c;

    invoke-interface {v0, v1, p1}, Lr/d;->m(Lr/c;F)V

    return-void
.end method

.method public setMinimumHeight(I)V
    .registers 2

    iput p1, p0, Lr/a;->mUserSetMinHeight:I

    invoke-super {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .registers 2

    iput p1, p0, Lr/a;->mUserSetMinWidth:I

    invoke-super {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 5

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .registers 3

    iget-boolean v0, p0, Lr/a;->mPreventCornerOverlap:Z

    if-eq p1, v0, :cond_d

    iput-boolean p1, p0, Lr/a;->mPreventCornerOverlap:Z

    sget-object p1, Lr/a;->IMPL:Lr/d;

    iget-object v0, p0, Lr/a;->mCardViewDelegate:Lr/c;

    invoke-interface {p1, v0}, Lr/d;->f(Lr/c;)V

    :cond_d
    return-void
.end method

.method public setRadius(F)V
    .registers 4

    sget-object v0, Lr/a;->IMPL:Lr/d;

    iget-object v1, p0, Lr/a;->mCardViewDelegate:Lr/c;

    invoke-interface {v0, v1, p1}, Lr/d;->j(Lr/c;F)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .registers 3

    iget-boolean v0, p0, Lr/a;->mCompatPadding:Z

    if-eq v0, p1, :cond_d

    iput-boolean p1, p0, Lr/a;->mCompatPadding:Z

    sget-object p1, Lr/a;->IMPL:Lr/d;

    iget-object v0, p0, Lr/a;->mCardViewDelegate:Lr/c;

    invoke-interface {p1, v0}, Lr/d;->i(Lr/c;)V

    :cond_d
    return-void
.end method