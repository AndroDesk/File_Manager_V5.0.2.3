.class Lmiuix/navigator/NavigationDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "NavigationDividerItemDecoration.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private final mDividerHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    .line 11
    sget-object v0, Lmiuix/navigator/R$styleable;->NavigationList:[I

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 16
    move-result-object p1

    .line 17
    sget v0, Lmiuix/navigator/R$styleable;->NavigationList_navigationListDivider:I

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 25
    sget v0, Lmiuix/navigator/R$styleable;->NavigationList_navigationListDividerHeight:I

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mDividerHeight:I

    .line 34
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    return-void
.end method

.method private drawDivider(Landroid/view/View;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    sget v1, Lmiuix/navigator/R$id;->navigation_item_category:I

    .line 7
    if-ne v0, v1, :cond_18

    .line 9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    sget v1, Lmiuix/navigator/R$id;->miuix_navigator_category_hide_divider:I

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_18

    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 p1, 0x0

    .line 26
    :goto_19
    return p1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    .line 1
    invoke-direct {p0, p2}, Lmiuix/navigator/NavigationDividerItemDecoration;->drawDivider(Landroid/view/View;)Z

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_a

    .line 7
    iget p2, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mDividerHeight:I

    .line 9
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 11
    :cond_a
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 11

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    .line 7
    move-result p3

    .line 8
    if-eqz p3, :cond_27

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 13
    move-result p3

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 17
    move-result v0

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 21
    move-result v1

    .line 22
    sub-int/2addr v0, v1

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 30
    move-result v2

    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    .line 34
    move-result v3

    .line 35
    sub-int/2addr v2, v3

    .line 36
    invoke-virtual {p1, p3, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 39
    goto :goto_2c

    .line 40
    :cond_27
    const/4 p3, 0x0

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 44
    move-result v0

    .line 45
    :goto_2c
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x1

    .line 50
    :goto_31
    if-ge v2, v1, :cond_6d

    .line 52
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    move-result-object v3

    .line 56
    invoke-direct {p0, v3}, Lmiuix/navigator/NavigationDividerItemDecoration;->drawDivider(Landroid/view/View;)Z

    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_3e

    .line 62
    goto :goto_6a

    .line 63
    :cond_3e
    iget-object v4, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    .line 65
    invoke-virtual {p2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 68
    iget-object v4, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    .line 70
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 72
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    .line 75
    move-result v5

    .line 76
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 79
    move-result v5

    .line 80
    add-int/2addr v5, v4

    .line 81
    iget v4, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mDividerHeight:I

    .line 83
    add-int/2addr v4, v5

    .line 84
    iget-object v6, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-virtual {v6, p3, v5, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    iget-object v4, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    .line 94
    move-result v3

    .line 95
    const/high16 v5, 0x437f0000  # 255.0f

    .line 97
    mul-float/2addr v3, v5

    .line 98
    float-to-int v3, v3

    .line 99
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 102
    iget-object v3, p0, Lmiuix/navigator/NavigationDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    :goto_6a
    add-int/lit8 v2, v2, 0x1

    .line 109
    goto :goto_31

    .line 110
    :cond_6d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 113
    return-void
.end method
