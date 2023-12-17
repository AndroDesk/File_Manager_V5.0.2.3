.class public abstract Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabClickListener;,
        Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;,
        Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;,
        Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field public static final MODE_COLLAPSE:I = 0x0

.field public static final MODE_MOVABLE:I = 0x1

.field public static final MODE_SECONDARY:I = 0x2


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsScrolledX:Z

.field private mLastSelectedPosition:I

.field public mMaxTabWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectedTabIndex:I

.field public mStackedTabMaxWidth:I

.field private mTabClickListener:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabIndicatorBitmap:Landroid/graphics/Bitmap;

.field private mTabIndicatorPosition:F

.field public mTabLayout:Landroid/widget/LinearLayout;

.field public mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field private mTextStyleMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/widget/TextView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchInitX:F

.field private final mTouchSlop:I

.field private mTranslucentIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mIsScrolledX:Z

    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;

    .line 23
    invoke-static {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    .line 29
    const/4 v4, 0x0

    .line 30
    const v5, 0x10102ce

    .line 33
    invoke-virtual {p1, v4, v3, v5, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 36
    move-result-object v3

    .line 37
    sget v4, Lmiuix/appcompat/R$styleable;->ActionBar_tabIndicator:I

    .line 39
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object v4

    .line 43
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_translucentTabIndicator:I

    .line 45
    const/4 v6, 0x1

    .line 46
    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 49
    move-result v5

    .line 50
    iput-boolean v5, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTranslucentIndicator:Z

    .line 52
    invoke-direct {p0, v4}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getTabIndicatorBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 55
    move-result-object v4

    .line 56
    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTranslucentIndicator:Z

    .line 63
    if-eqz v3, :cond_4c

    .line 65
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    .line 67
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    .line 69
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 71
    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 74
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 77
    :cond_4c
    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 80
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    .line 83
    move-result v2

    .line 84
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 86
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getTabBarLayoutRes()I

    .line 89
    move-result v2

    .line 90
    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/widget/LinearLayout;

    .line 96
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 98
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    const/4 v2, -0x2

    .line 101
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 104
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 114
    move-result p1

    .line 115
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTouchSlop:I

    .line 117
    return-void
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Landroidx/appcompat/app/a$d;Z)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->createTabView(Landroidx/appcompat/app/a$d;Z)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private createTabView(Landroidx/appcompat/app/a$d;Z)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getTabViewLayoutRes()I

    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 16
    invoke-virtual {v0, p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->attach(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Landroidx/appcompat/app/a$d;Z)V

    .line 19
    if-eqz p2, :cond_24

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 25
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 27
    const/4 p2, -0x1

    .line 28
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 30
    invoke-direct {p1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 33
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    goto :goto_38

    .line 37
    :cond_24
    const/4 p1, 0x1

    .line 38
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 41
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabClickListener:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabClickListener;

    .line 43
    if-nez p1, :cond_33

    .line 45
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabClickListener;

    .line 47
    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V

    .line 50
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabClickListener:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabClickListener;

    .line 52
    :cond_33
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabClickListener:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabClickListener;

    .line 54
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :goto_38
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_4d

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getTabViewMarginHorizontal()I

    .line 74
    move-result p2

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 78
    :cond_4d
    return-object v0
.end method

.method private getTabIndicatorBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTranslucentIndicator:Z

    .line 7
    if-eqz v0, :cond_17

    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 16
    move-result v1

    .line 17
    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 19
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_25

    .line 24
    :cond_17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 31
    move-result v1

    .line 32
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 34
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 37
    move-result-object v0

    .line 38
    :goto_25
    new-instance v1, Landroid/graphics/Canvas;

    .line 40
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 43
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 46
    move-result v2

    .line 47
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 58
    return-object v0
.end method

.method private isCollapsed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 9
    if-ne v0, p0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method private performExpand()Z
    .registers 5

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->isCollapsed()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 16
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 18
    const/4 v3, -0x2

    .line 19
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 22
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 27
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 34
    return v1
.end method


# virtual methods
.method public addTab(Landroidx/appcompat/app/a$d;IZ)V
    .registers 5

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->createTabView(Landroidx/appcompat/app/a$d;Z)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 11
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz p2, :cond_17

    .line 12
    invoke-virtual {p2}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_17
    if-eqz p3, :cond_26

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 14
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    .line 15
    :cond_26
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz p1, :cond_2d

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2d
    return-void
.end method

.method public addTab(Landroidx/appcompat/app/a$d;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->createTabView(Landroidx/appcompat/app/a$d;Z)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_17

    .line 4
    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_17
    if-eqz p2, :cond_26

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    .line 7
    :cond_26
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz p1, :cond_2d

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2d
    return-void
.end method

.method public animateToTab(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    :cond_7
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;

    .line 10
    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;-><init>(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;I)V

    .line 13
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 18
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 6
    if-eqz v0, :cond_1a

    .line 8
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorPosition:F

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 16
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 19
    move-result v3

    .line 20
    sub-int/2addr v2, v3

    .line 21
    int-to-float v2, v2

    .line 22
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    .line 24
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 27
    :cond_1a
    return-void
.end method

.method public abstract getDefaultTabTextStyle()I
.end method

.method public abstract getTabBarLayoutRes()I
.end method

.method public abstract getTabContainerHeight()I
.end method

.method public getTabIndicatorPosition()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorPosition:F

    .line 3
    return v0
.end method

.method public getTabTextStyleId(Landroid/widget/TextView;)I
    .registers 3

    .line 1
    if-eqz p1, :cond_19

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTextStyleMap:Ljava/util/WeakHashMap;

    .line 5
    if-eqz v0, :cond_19

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_19

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTextStyleMap:Ljava/util/WeakHashMap;

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Integer;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getDefaultTabTextStyle()I

    .line 33
    move-result v0

    .line 34
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method public abstract getTabViewLayoutRes()I
.end method

.method public abstract getTabViewMarginHorizontal()I
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    :cond_a
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getTabContainerHeight()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 16
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 22
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    :cond_a
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_11

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTouchInitX:F

    .line 15
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mIsScrolledX:Z

    .line 17
    goto :goto_3f

    .line 18
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 21
    move-result v0

    .line 22
    const/4 v3, 0x2

    .line 23
    if-ne v0, v3, :cond_30

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 28
    move-result v0

    .line 29
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTouchInitX:F

    .line 31
    sub-float/2addr v0, v3

    .line 32
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 35
    move-result v0

    .line 36
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTouchSlop:I

    .line 38
    int-to-float v3, v3

    .line 39
    cmpl-float v0, v0, v3

    .line 41
    if-lez v0, :cond_2c

    .line 43
    move v0, v1

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move v0, v2

    .line 46
    :goto_2d
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mIsScrolledX:Z

    .line 48
    goto :goto_3f

    .line 49
    :cond_30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 52
    move-result v0

    .line 53
    if-eq v0, v1, :cond_3d

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 58
    move-result v0

    .line 59
    const/4 v3, 0x3

    .line 60
    if-ne v0, v3, :cond_3f

    .line 62
    :cond_3d
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mIsScrolledX:Z

    .line 64
    :cond_3f
    :goto_3f
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mIsScrolledX:Z

    .line 66
    if-eqz v0, :cond_4e

    .line 68
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 75
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 78
    return v1

    .line 79
    :cond_4e
    return v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    check-cast p2, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 3
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getTab()Landroidx/appcompat/app/a$d;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->select()V

    .line 10
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 6
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_12

    .line 14
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 16
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabIndicatorPosition(I)V

    .line 19
    :cond_12
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/high16 v2, 0x40000000  # 2.0f

    .line 8
    if-ne v0, v2, :cond_b

    .line 10
    move v3, v1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v3, 0x0

    .line 13
    :goto_c
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 16
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 18
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result v4

    .line 22
    if-le v4, v1, :cond_44

    .line 24
    if-eq v0, v2, :cond_1d

    .line 26
    const/high16 v1, -0x80000000

    .line 28
    if-ne v0, v1, :cond_44

    .line 30
    :cond_1d
    const/4 v0, 0x2

    .line 31
    if-le v4, v0, :cond_2d

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 36
    move-result v0

    .line 37
    int-to-float v0, v0

    .line 38
    const v1, 0x3ecccccd  # 0.4f

    .line 41
    mul-float/2addr v0, v1

    .line 42
    float-to-int v0, v0

    .line 43
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 45
    goto :goto_39

    .line 46
    :cond_2d
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 49
    move-result v0

    .line 50
    int-to-float v0, v0

    .line 51
    const v1, 0x3f19999a  # 0.6f

    .line 54
    mul-float/2addr v0, v1

    .line 55
    float-to-int v0, v0

    .line 56
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 58
    :goto_39
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 60
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 68
    goto :goto_47

    .line 69
    :cond_44
    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 72
    :goto_47
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 74
    const/4 v1, -0x2

    .line 75
    if-eq v0, v1, :cond_50

    .line 77
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 80
    move-result p2

    .line 81
    :cond_50
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 84
    move-result v0

    .line 85
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 91
    move-result p1

    .line 92
    if-eqz v3, :cond_64

    .line 94
    if-eq v0, p1, :cond_64

    .line 96
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 98
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 101
    :cond_64
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabIndicatorPosition(IF)V

    .line 4
    return-void
.end method

.method public onPageSelected(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 9
    if-eqz v0, :cond_e

    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 15
    :cond_e
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabIndicatorPosition(I)V

    .line 18
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    .line 20
    const/4 v2, -0x1

    .line 21
    if-eq v1, v2, :cond_58

    .line 23
    sub-int/2addr v1, p1

    .line 24
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    if-ne v1, v2, :cond_58

    .line 31
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 33
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    .line 35
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v1, :cond_32

    .line 44
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move-object v1, v3

    .line 52
    :goto_33
    if-eqz v0, :cond_3c

    .line 54
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    .line 57
    move-result-object v0

    .line 58
    move-object v3, v0

    .line 59
    check-cast v3, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;

    .line 61
    :cond_3c
    if-eqz v1, :cond_58

    .line 63
    if-eqz v3, :cond_58

    .line 65
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 68
    move-result v0

    .line 69
    const/4 v4, 0x0

    .line 70
    if-eqz v0, :cond_4e

    .line 72
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    .line 74
    if-ge p1, v0, :cond_4c

    .line 76
    goto :goto_52

    .line 77
    :cond_4c
    move v2, v4

    .line 78
    goto :goto_52

    .line 79
    :cond_4e
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    .line 81
    if-le p1, v0, :cond_4c

    .line 83
    :goto_52
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->startScrollAnimation(Z)V

    .line 86
    invoke-virtual {v3, v2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->startScrollAnimation(Z)V

    .line 89
    :cond_58
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mLastSelectedPosition:I

    .line 91
    return-void
.end method

.method public removeAllTabs()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 8
    if-eqz v0, :cond_12

    .line 10
    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;

    .line 16
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    :cond_12
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 21
    if-eqz v0, :cond_19

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 26
    :cond_19
    return-void
.end method

.method public removeTabAt(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_f

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 16
    :cond_f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 18
    if-eqz p1, :cond_1c

    .line 20
    invoke-virtual {p1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;

    .line 26
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 29
    :cond_1c
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 31
    if-eqz p1, :cond_23

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 36
    :cond_23
    return-void
.end method

.method public scrollToTab(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 18
    move-result p1

    .line 19
    sub-int/2addr v1, p1

    .line 20
    div-int/lit8 v1, v1, 0x2

    .line 22
    sub-int/2addr v0, v1

    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    .line 27
    return-void
.end method

.method public setAllowCollapse(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 3
    return-void
.end method

.method public setBadgeVisibility(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    if-le p1, v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 20
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->access$000(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;)Landroid/widget/ImageView;

    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_25

    .line 26
    if-eqz p2, :cond_20

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    goto :goto_25

    .line 33
    :cond_20
    const/16 p2, 0x8

    .line 35
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    :cond_25
    :goto_25
    return-void
.end method

.method public setContentHeight(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_9
    return-void
.end method

.method public setEmbeded(Z)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 5
    return-void
.end method

.method public setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    if-le p1, v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 20
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->access$100(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;

    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1f

    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 29
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 32
    :cond_1f
    return-void
.end method

.method public setTabIndicatorPosition(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabIndicatorPosition(IF)V

    return-void
.end method

.method public setTabIndicatorPosition(IF)V
    .registers 6

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_41

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1a

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    goto :goto_27

    .line 6
    :cond_1a
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p1, v1

    .line 7
    :goto_27
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, p2

    add-float/2addr p1, v0

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabIndicatorPosition:F

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_41
    return-void
.end method

.method public setTabSelected(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabSelected(IZ)V

    return-void
.end method

.method public setTabSelected(IZ)V
    .registers 8

    .line 2
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_28

    .line 4
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_16

    const/4 v4, 0x1

    goto :goto_17

    :cond_16
    move v4, v1

    .line 5
    :goto_17
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_25

    if-eqz p2, :cond_22

    .line 6
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->animateToTab(I)V

    goto :goto_25

    .line 7
    :cond_22
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->scrollToTab(I)V

    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_28
    return-void
.end method

.method public setTextAppearance(II)V
    .registers 5

    .line 1
    if-ltz p1, :cond_36

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 11
    if-le p1, v0, :cond_d

    .line 13
    goto :goto_36

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 16
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 22
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->access$100(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;

    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_36

    .line 28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTextStyleMap:Ljava/util/WeakHashMap;

    .line 30
    if-nez v0, :cond_26

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    .line 34
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 37
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTextStyleMap:Ljava/util/WeakHashMap;

    .line 39
    :cond_26
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTextStyleMap:Ljava/util/WeakHashMap;

    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 55
    :cond_36
    :goto_36
    return-void
.end method

.method public updateCustomTabView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)Landroid/view/View;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public updateTab(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 9
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->update()V

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 14
    if-eqz p1, :cond_18

    .line 16
    invoke-virtual {p1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabAdapter;

    .line 22
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 25
    :cond_18
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 27
    if-eqz p1, :cond_1f

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 32
    :cond_1f
    return-void
.end method

.method public updateTabTextStyle(Landroid/widget/TextView;)V
    .registers 2

    return-void
.end method
