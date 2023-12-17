.class Lmiuix/navigator/NavigationDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "NavigationDividerItemDecoration.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private final mDividerHeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    sget-object v0, Lmiuix/navigator/R$styleable;->NavigationList:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lmiuix/navigator/R$styleable;->NavigationList_navigationListDivider:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    sget v0, Lmiuix/navigator/R$styleable;->NavigationList_navigationListDividerHeight:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mDividerHeight:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private drawDivider(Landroid/view/View;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lmiuix/navigator/R$id;->navigation_item_category:I

    if-ne v0, v1, :cond_18

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v1, Lmiuix/navigator/R$id;->miuix_navigator_category_hide_divider:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    invoke-direct {p0, p2}, Lmiuix/navigator/NavigationDividerItemDecoration;->drawDivider(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget p2, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mDividerHeight:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_a
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result p3

    if-eqz p3, :cond_27

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, p3, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_2c

    :cond_27
    const/4 p3, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_2c
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    :goto_31
    if-ge v2, v1, :cond_6d

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiuix/navigator/NavigationDividerItemDecoration;->drawDivider(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_3e

    goto :goto_6a

    :cond_3e
    iget-object v4, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v5, v4

    iget v4, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mDividerHeight:I

    add-int/2addr v4, v5

    iget-object v6, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p3, v5, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/high16 v5, 0x437f0000  # 255.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v3, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_6d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
