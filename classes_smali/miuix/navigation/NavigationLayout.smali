.class public Lmiuix/navigation/NavigationLayout;
.super Landroid/view/ViewGroup;
.source "NavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigation/NavigationLayout$ViewDragCallback;,
        Lmiuix/navigation/NavigationLayout$WidthDescription;,
        Lmiuix/navigation/NavigationLayout$LayoutParams;,
        Lmiuix/navigation/NavigationLayout$SavedState;,
        Lmiuix/navigation/NavigationLayout$NavigationListener;
    }
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x0

.field private static final DEFAULT_SCRIM_COLOR:I = -0x330a0809

.field public static final DRAWER_ENABLED_ALL:I = 0x3

.field public static final DRAWER_ENABLED_LANDSCAPE:I = 0x2

.field public static final DRAWER_ENABLED_NONE:I = 0x0

.field public static final DRAWER_ENABLED_PORTRAIT:I = 0x1

.field public static final DRAWER_MODE_CONTENT_SQUEEZED:I = 0x2

.field public static final DRAWER_MODE_OVERLAY:I = 0x0

.field public static final DRAWER_MODE_PUSHED_AWAY:I = 0x1

.field private static final HALF_OFFSET:F = 0.5f

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0x96

.field public static final RELATIVE_TO_PARENT:I = 0x1

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2


# instance fields
.field private mChildrenCanceledTouch:Z

.field private mContent:Landroid/view/View;

.field private mContentPreviewRatio:F

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerWidth:I

.field private final mDragger:Lmiuix/internal/util/ViewDragHelper;

.field private mDrawerEnabled:Z

.field private mDrawerEnabledOrientation:I

.field private mDrawerMode:I

.field private mFirstMeasure:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLandscapeWidthDescription:Lmiuix/navigation/NavigationLayout$WidthDescription;

.field private mLayoutRtl:Z

.field private mListener:Lmiuix/navigation/NavigationLayout$NavigationListener;

.field private mLockMode:I

.field private mNavigation:Landroid/view/View;

.field private mPeekRunnable:Ljava/lang/Runnable;

.field private mPortraitWidthDescription:Lmiuix/navigation/NavigationLayout$WidthDescription;

.field private mPreview:Landroid/view/View;

.field private mScrimAnimationView:Landroid/view/View;

.field private mScrimAnimator:Landroid/animation/ValueAnimator;

.field private mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimOpacityAnimatior:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadow:Landroid/graphics/drawable/Drawable;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/navigation/NavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/navigation/R$attr;->navigationLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/navigation/NavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/navigation/NavigationLayout;->mTmpRect:Landroid/graphics/Rect;

    const v0, -0x330a0809

    .line 5
    iput v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimColor:I

    .line 6
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmiuix/navigation/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lmiuix/navigation/NavigationLayout;->mFirstMeasure:Z

    const/4 v2, 0x0

    .line 8
    iput v2, p0, Lmiuix/navigation/NavigationLayout;->mLockMode:I

    const/high16 v3, 0x3f800000  # 1.0f

    .line 9
    iput v3, p0, Lmiuix/navigation/NavigationLayout;->mContentPreviewRatio:F

    .line 10
    new-instance v3, Lmiuix/navigation/NavigationLayout$1;

    invoke-direct {v3, p0}, Lmiuix/navigation/NavigationLayout$1;-><init>(Lmiuix/navigation/NavigationLayout;)V

    iput-object v3, p0, Lmiuix/navigation/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    .line 11
    sget-object v3, Lmiuix/navigation/R$styleable;->NavigationLayout:[I

    sget v4, Lmiuix/navigation/R$style;->Widget_NavigationLayout:I

    .line 12
    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 13
    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_navigationDivider:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3a

    .line 14
    invoke-virtual {p0, p2}, Lmiuix/navigation/NavigationLayout;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 15
    :cond_3a
    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_navigationShadow:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_45

    .line 16
    invoke-virtual {p0, p2}, Lmiuix/navigation/NavigationLayout;->setNavigationShadow(Landroid/graphics/drawable/Drawable;)V

    .line 17
    :cond_45
    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_navigationDividerWidth:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-eqz p2, :cond_50

    .line 18
    invoke-virtual {p0, p2}, Lmiuix/navigation/NavigationLayout;->setDividerWidth(I)V

    .line 19
    :cond_50
    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_navigationScrimColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/navigation/NavigationLayout;->mScrimColor:I

    .line 20
    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_drawerEnabledOrientation:I

    .line 21
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabledOrientation:I

    .line 22
    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_portraitNavigationWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 24
    invoke-static {p2, p3}, Lmiuix/navigation/NavigationLayout$WidthDescription;->parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiuix/navigation/NavigationLayout$WidthDescription;

    move-result-object p2

    iput-object p2, p0, Lmiuix/navigation/NavigationLayout;->mPortraitWidthDescription:Lmiuix/navigation/NavigationLayout$WidthDescription;

    .line 25
    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_landscapeNavigationWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 27
    invoke-static {p2, p3}, Lmiuix/navigation/NavigationLayout$WidthDescription;->parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiuix/navigation/NavigationLayout$WidthDescription;

    move-result-object p2

    iput-object p2, p0, Lmiuix/navigation/NavigationLayout;->mLandscapeWidthDescription:Lmiuix/navigation/NavigationLayout$WidthDescription;

    .line 28
    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_drawerMode:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiuix/navigation/NavigationLayout;->mDrawerMode:I

    .line 29
    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_contentPreviewRatio:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_db

    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const-string v0, ":"

    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d1

    sub-int/2addr p3, v1

    if-ge v0, p3, :cond_d1

    .line 33
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    add-int/2addr v0, v1

    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_db

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_db

    .line 36
    :try_start_b8
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    .line 37
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    const/4 v0, 0x0

    cmpl-float v2, p3, v0

    if-lez v2, :cond_db

    cmpl-float v0, p2, v0

    if-lez v0, :cond_db

    div-float/2addr p3, p2

    .line 38
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iput p2, p0, Lmiuix/navigation/NavigationLayout;->mContentPreviewRatio:F

    goto :goto_db

    .line 39
    :cond_d1
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iput p2, p0, Lmiuix/navigation/NavigationLayout;->mContentPreviewRatio:F
    :try_end_db
    .catch Ljava/lang/NumberFormatException; {:try_start_b8 .. :try_end_db} :catch_db

    .line 40
    :catch_db
    :cond_db
    :goto_db
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p1, 0x3f000000  # 0.5f

    .line 41
    new-instance p2, Lmiuix/navigation/NavigationLayout$ViewDragCallback;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lmiuix/navigation/NavigationLayout$ViewDragCallback;-><init>(Lmiuix/navigation/NavigationLayout;Lmiuix/navigation/NavigationLayout$1;)V

    invoke-static {p0, p1, p2}, Lmiuix/internal/util/ViewDragHelper;->create(Landroid/view/ViewGroup;FLmiuix/internal/util/ViewDragHelper$Callback;)Lmiuix/internal/util/ViewDragHelper;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x43c80000  # 400.0f

    mul-float/2addr p2, p3

    .line 43
    invoke-virtual {p1, p2}, Lmiuix/internal/util/ViewDragHelper;->setMinVelocity(F)V

    .line 44
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/navigation/NavigationLayout;)Lmiuix/internal/util/ViewDragHelper;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lmiuix/navigation/NavigationLayout;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigation/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lmiuix/navigation/NavigationLayout;)Lmiuix/navigation/NavigationLayout$NavigationListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigation/NavigationLayout;->mListener:Lmiuix/navigation/NavigationLayout$NavigationListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/navigation/NavigationLayout;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lmiuix/navigation/NavigationLayout;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->cancelChildViewTouch()V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$602(Lmiuix/navigation/NavigationLayout;F)F
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigation/NavigationLayout;->mScrimOpacityAnimatior:F

    .line 3
    return p1
.end method

.method public static synthetic access$800(Lmiuix/navigation/NavigationLayout;F)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->setNavigationOffset(F)V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lmiuix/navigation/NavigationLayout;)F
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->getNavigationOffset()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private cancelChildViewTouch()V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mChildrenCanceledTouch:Z

    .line 3
    if-nez v0, :cond_28

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    move-result-wide v3

    .line 9
    const/4 v5, 0x3

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    move-wide v1, v3

    .line 14
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_16
    if-ge v2, v1, :cond_22

    .line 25
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_16

    .line 35
    :cond_22
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 38
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mChildrenCanceledTouch:Z

    .line 41
    :cond_28
    return-void
.end method

.method private closePeekingDrawer()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/navigation/NavigationLayout$LayoutParams;

    .line 9
    iget-boolean v1, v0, Lmiuix/navigation/NavigationLayout$LayoutParams;->isPeeking:Z

    .line 11
    if-eqz v1, :cond_13

    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Lmiuix/navigation/NavigationLayout$LayoutParams;->isPeeking:Z

    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lmiuix/navigation/NavigationLayout;->closeNavigationDrawer(Z)V

    .line 20
    :cond_13
    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 3
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    move-result v1

    .line 9
    iget-boolean v2, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    .line 11
    if-eqz v2, :cond_15

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    move-result v2

    .line 17
    sub-int/2addr v2, v1

    .line 18
    iget v1, p0, Lmiuix/navigation/NavigationLayout;->mDividerWidth:I

    .line 20
    sub-int v1, v2, v1

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 25
    move-result v2

    .line 26
    iget v3, p0, Lmiuix/navigation/NavigationLayout;->mDividerWidth:I

    .line 28
    add-int/2addr v3, v1

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 32
    move-result v4

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 36
    move-result v5

    .line 37
    sub-int/2addr v4, v5

    .line 38
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 41
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 46
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 49
    return-void
.end method

.method private drawNavigationDisableScrim(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimOpacityAnimatior:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 6
    if-lez v1, :cond_43

    .line 8
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    .line 10
    if-eqz v1, :cond_43

    .line 12
    iget v1, p0, Lmiuix/navigation/NavigationLayout;->mScrimColor:I

    .line 14
    const/high16 v2, -0x1000000

    .line 16
    and-int/2addr v2, v1

    .line 17
    ushr-int/lit8 v2, v2, 0x18

    .line 19
    int-to-float v2, v2

    .line 20
    mul-float/2addr v2, v0

    .line 21
    float-to-int v0, v2

    .line 22
    shl-int/lit8 v0, v0, 0x18

    .line 24
    const v2, 0xffffff

    .line 27
    and-int/2addr v1, v2

    .line 28
    or-int/2addr v0, v1

    .line 29
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 31
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 39
    move-result v0

    .line 40
    int-to-float v2, v0

    .line 41
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 46
    move-result v0

    .line 47
    int-to-float v3, v0

    .line 48
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 53
    move-result v0

    .line 54
    int-to-float v4, v0

    .line 55
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 60
    move-result v0

    .line 61
    int-to-float v5, v0

    .line 62
    iget-object v6, p0, Lmiuix/navigation/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 64
    move-object v1, p1

    .line 65
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 68
    :cond_43
    return-void
.end method

.method private drawScrim(Landroid/graphics/Canvas;)V
    .registers 10

    .line 1
    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimOpacity:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 6
    if-lez v1, :cond_46

    .line 8
    iget v1, p0, Lmiuix/navigation/NavigationLayout;->mScrimColor:I

    .line 10
    const/high16 v2, -0x1000000

    .line 12
    and-int/2addr v2, v1

    .line 13
    ushr-int/lit8 v2, v2, 0x18

    .line 15
    int-to-float v2, v2

    .line 16
    mul-float/2addr v2, v0

    .line 17
    float-to-int v0, v2

    .line 18
    shl-int/lit8 v0, v0, 0x18

    .line 20
    const v2, 0xffffff

    .line 23
    and-int/2addr v1, v2

    .line 24
    or-int/2addr v0, v1

    .line 25
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 27
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    .line 32
    if-eqz v0, :cond_23

    .line 34
    const/4 v0, 0x0

    .line 35
    goto :goto_29

    .line 36
    :cond_23
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 41
    move-result v0

    .line 42
    :goto_29
    iget-boolean v1, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    .line 44
    if-eqz v1, :cond_34

    .line 46
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 51
    move-result v1

    .line 52
    goto :goto_38

    .line 53
    :cond_34
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 56
    move-result v1

    .line 57
    :goto_38
    int-to-float v3, v0

    .line 58
    const/4 v4, 0x0

    .line 59
    int-to-float v5, v1

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 63
    move-result v0

    .line 64
    int-to-float v6, v0

    .line 65
    iget-object v7, p0, Lmiuix/navigation/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 67
    move-object v2, p1

    .line 68
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 71
    :cond_46
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 9
    move-result v0

    .line 10
    iget-boolean v1, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    .line 12
    if-eqz v1, :cond_15

    .line 14
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 19
    move-result v1

    .line 20
    sub-int/2addr v1, v0

    .line 21
    goto :goto_1b

    .line 22
    :cond_15
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 27
    move-result v1

    .line 28
    :goto_1b
    iget-object v2, p0, Lmiuix/navigation/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    .line 30
    iget-object v3, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 35
    move-result v3

    .line 36
    add-int/2addr v0, v1

    .line 37
    iget-object v4, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 39
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 42
    move-result v4

    .line 43
    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 51
    return-void
.end method

.method private getNavigationOffset()F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/navigation/NavigationLayout$LayoutParams;

    .line 9
    iget v0, v0, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    .line 11
    return v0
.end method

.method private getScrimAnimatorListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lmiuix/navigation/NavigationLayout$2;

    .line 7
    invoke-direct {v0, p0}, Lmiuix/navigation/NavigationLayout$2;-><init>(Lmiuix/navigation/NavigationLayout;)V

    .line 10
    iput-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 14
    return-object v0
.end method

.method private hasPreview()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method private isDrawerPeeking()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/navigation/NavigationLayout$LayoutParams;

    .line 9
    iget-boolean v0, v0, Lmiuix/navigation/NavigationLayout$LayoutParams;->isPeeking:Z

    .line 11
    return v0
.end method

.method private measureContentPreviewWithMargins(IIII)V
    .registers 8

    .line 1
    sub-int/2addr p4, p2

    .line 2
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->hasPreview()Z

    .line 5
    move-result p2

    .line 6
    if-eqz p2, :cond_24

    .line 8
    iget-object p2, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    .line 10
    int-to-float p4, p4

    .line 11
    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mContentPreviewRatio:F

    .line 13
    mul-float v1, p4, v0

    .line 15
    const/high16 v2, 0x3f800000  # 1.0f

    .line 17
    add-float/2addr v0, v2

    .line 18
    div-float/2addr v1, v0

    .line 19
    float-to-int v0, v1

    .line 20
    invoke-virtual {p0, p2, p1, v0, p3}, Lmiuix/navigation/NavigationLayout;->measureChildWithMarginsPadding(Landroid/view/View;III)V

    .line 23
    iget-object p2, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    .line 25
    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mContentPreviewRatio:F

    .line 27
    add-float v1, v0, v2

    .line 29
    div-float/2addr v0, v1

    .line 30
    sub-float/2addr v2, v0

    .line 31
    mul-float/2addr v2, p4

    .line 32
    float-to-int p4, v2

    .line 33
    invoke-virtual {p0, p2, p1, p4, p3}, Lmiuix/navigation/NavigationLayout;->measureChildWithMarginsPadding(Landroid/view/View;III)V

    .line 36
    goto :goto_29

    .line 37
    :cond_24
    iget-object p2, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    .line 39
    invoke-virtual {p0, p2, p1, p4, p3}, Lmiuix/navigation/NavigationLayout;->measureChildWithMarginsPadding(Landroid/view/View;III)V

    .line 42
    :goto_29
    return-void
.end method

.method private pullChildren()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    .line 3
    if-nez v0, :cond_c

    .line 5
    sget v0, Lmiuix/navigation/R$id;->content:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    .line 13
    :cond_c
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 15
    if-nez v0, :cond_18

    .line 17
    sget v0, Lmiuix/navigation/R$id;->navigation:I

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 25
    :cond_18
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    .line 27
    if-nez v0, :cond_24

    .line 29
    sget v0, Lmiuix/navigation/R$id;->preview:I

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    .line 37
    :cond_24
    return-void
.end method

.method private setChildViewEnabled(Landroid/view/View;Z)V
    .registers 10

    .line 1
    if-eqz p1, :cond_7b

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 6
    move-result v0

    .line 7
    if-ne v0, p2, :cond_a

    .line 9
    goto/16 :goto_7b

    .line 11
    :cond_a
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    .line 13
    if-eqz v0, :cond_19

    .line 15
    if-eq v0, p1, :cond_19

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_19

    .line 23
    if-nez p2, :cond_19

    .line 25
    return-void

    .line 26
    :cond_19
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    .line 31
    const/4 v1, 0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x2

    .line 34
    const/high16 v4, 0x3f800000  # 1.0f

    .line 36
    const/4 v5, 0x0

    .line 37
    if-eqz v0, :cond_3f

    .line 39
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 42
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    .line 44
    new-array v3, v3, [F

    .line 46
    if-eqz p2, :cond_31

    .line 48
    move v6, v4

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v6, v5

    .line 51
    :goto_32
    aput v6, v3, v2

    .line 53
    if-eqz p2, :cond_38

    .line 55
    move v2, v5

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move v2, v4

    .line 58
    :goto_39
    aput v2, v3, v1

    .line 60
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 63
    goto :goto_55

    .line 64
    :cond_3f
    new-array v0, v3, [F

    .line 66
    if-eqz p2, :cond_45

    .line 68
    move v3, v4

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move v3, v5

    .line 71
    :goto_46
    aput v3, v0, v2

    .line 73
    if-eqz p2, :cond_4c

    .line 75
    move v2, v5

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    move v2, v4

    .line 78
    :goto_4d
    aput v2, v0, v1

    .line 80
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    .line 86
    :goto_55
    iput-object p1, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    .line 88
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    .line 90
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_62

    .line 96
    const-wide/16 v0, 0x1f4

    .line 98
    goto :goto_64

    .line 99
    :cond_62
    const-wide/16 v0, 0x0

    .line 101
    :goto_64
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 104
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    .line 106
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->getScrimAnimatorListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    if-eqz p2, :cond_73

    .line 115
    goto :goto_74

    .line 116
    :cond_73
    move v4, v5

    .line 117
    :goto_74
    iput v4, p0, Lmiuix/navigation/NavigationLayout;->mScrimOpacityAnimatior:F

    .line 119
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    .line 121
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 124
    :cond_7b
    :goto_7b
    return-void
.end method

.method private setContentPreviewScrollX(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    .line 3
    neg-int p1, p1

    .line 4
    int-to-float p1, p1

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 8
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->hasPreview()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_12

    .line 14
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 19
    :cond_12
    return-void
.end method

.method private setNavigationOffset(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/navigation/NavigationLayout$LayoutParams;

    .line 9
    iget v1, v0, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    .line 11
    cmpl-float v1, p1, v1

    .line 13
    if-nez v1, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    iput p1, v0, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    .line 18
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mListener:Lmiuix/navigation/NavigationLayout$NavigationListener;

    .line 20
    if-eqz v1, :cond_18

    .line 22
    invoke-interface {v1, p1}, Lmiuix/navigation/NavigationLayout$NavigationListener;->onDrawerSlide(F)V

    .line 25
    :cond_18
    iget p1, p0, Lmiuix/navigation/NavigationLayout;->mDrawerMode:I

    .line 27
    if-nez p1, :cond_21

    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->setContentPreviewScrollX(I)V

    .line 33
    goto :goto_3c

    .line 34
    :cond_21
    const/4 v1, 0x1

    .line 35
    if-ne p1, v1, :cond_39

    .line 37
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 42
    move-result p1

    .line 43
    iget-boolean v1, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    .line 45
    if-eqz v1, :cond_2f

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    neg-int p1, p1

    .line 49
    :goto_30
    int-to-float p1, p1

    .line 50
    iget v0, v0, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    .line 52
    mul-float/2addr p1, v0

    .line 53
    float-to-int p1, p1

    .line 54
    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->setContentPreviewScrollX(I)V

    .line 57
    goto :goto_3c

    .line 58
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 61
    :goto_3c
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Lmiuix/navigation/NavigationLayout$LayoutParams;

    .line 3
    return p1
.end method

.method public closeNavigationDrawer(Z)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mFirstMeasure:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_5
    if-eqz p1, :cond_28

    .line 8
    iget-boolean p1, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    .line 10
    if-nez p1, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-boolean p1, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    .line 15
    if-eqz p1, :cond_15

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 20
    move-result p1

    .line 21
    goto :goto_1c

    .line 22
    :cond_15
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 27
    move-result p1

    .line 28
    neg-int p1, p1

    .line 29
    :goto_1c
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    .line 31
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 36
    move-result v2

    .line 37
    invoke-virtual {v0, v1, p1, v2}, Lmiuix/internal/util/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 40
    goto :goto_33

    .line 41
    :cond_28
    const/4 p1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->setNavigationOffset(F)V

    .line 45
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mListener:Lmiuix/navigation/NavigationLayout$NavigationListener;

    .line 47
    if-eqz p1, :cond_33

    .line 49
    invoke-interface {p1}, Lmiuix/navigation/NavigationLayout$NavigationListener;->onDrawerClosed()V

    .line 52
    :cond_33
    :goto_33
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 55
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    .line 57
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method public computeScroll()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 4
    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mDrawerMode:I

    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_c

    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimOpacity:F

    .line 12
    goto :goto_12

    .line 13
    :cond_c
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->getNavigationOffset()F

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimOpacity:F

    .line 19
    :goto_12
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lmiuix/internal/util/ViewDragHelper;->continueSettling(Z)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1e

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 31
    :cond_1e
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    .line 6
    if-eqz v0, :cond_e

    .line 8
    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->drawScrim(Landroid/graphics/Canvas;)V

    .line 11
    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->drawShadow(Landroid/graphics/Canvas;)V

    .line 14
    goto :goto_14

    .line 15
    :cond_e
    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->drawDivider(Landroid/graphics/Canvas;)V

    .line 18
    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->drawNavigationDisableScrim(Landroid/graphics/Canvas;)V

    .line 21
    :goto_14
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Lmiuix/navigation/NavigationLayout;->getDrawerLockMode()I

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_27

    .line 15
    iget-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    .line 17
    if-eqz v0, :cond_27

    .line 19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x4

    .line 24
    if-ne v0, v2, :cond_27

    .line 26
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 29
    move-result p1

    .line 30
    if-ne p1, v1, :cond_27

    .line 32
    invoke-virtual {p0}, Lmiuix/navigation/NavigationLayout;->isNavigationDrawerOpen()Z

    .line 35
    move-result p1

    .line 36
    invoke-virtual {p0, v1}, Lmiuix/navigation/NavigationLayout;->closeNavigationDrawer(Z)V

    .line 39
    return p1

    .line 40
    :cond_27
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_36

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_36

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 14
    move-result v0

    .line 15
    float-to-int v0, v0

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 19
    move-result v1

    .line 20
    float-to-int v1, v1

    .line 21
    iget-object v2, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 32
    move-result v3

    .line 33
    iget-object v4, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    .line 35
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 38
    move-result v4

    .line 39
    iget-object v5, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    .line 41
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 44
    move-result v5

    .line 45
    if-ge v2, v0, :cond_36

    .line 47
    if-ge v0, v3, :cond_36

    .line 49
    if-ge v4, v1, :cond_36

    .line 51
    if-ge v1, v5, :cond_36

    .line 53
    const/4 p1, 0x1

    .line 54
    return p1

    .line 55
    :cond_36
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 58
    move-result p1

    .line 59
    return p1
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 1
    new-instance v0, Lmiuix/navigation/NavigationLayout$LayoutParams;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Lmiuix/navigation/NavigationLayout$LayoutParams;-><init>(II)V

    .line 7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/navigation/NavigationLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiuix/navigation/NavigationLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 2
    new-instance v0, Lmiuix/navigation/NavigationLayout$LayoutParams;

    invoke-direct {v0, p1}, Lmiuix/navigation/NavigationLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDividerWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mDividerWidth:I

    .line 3
    return v0
.end method

.method public getDrawerEnabledOrientation()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabledOrientation:I

    .line 3
    return v0
.end method

.method public getDrawerLockMode()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mLockMode:I

    .line 3
    return v0
.end method

.method public isNavigationDrawerOpen()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/navigation/NavigationLayout$LayoutParams;

    .line 9
    iget v0, v0, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    .line 11
    const/high16 v1, 0x3f800000  # 1.0f

    .line 13
    cmpl-float v0, v0, v1

    .line 15
    if-nez v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public measureChildWithMarginsPadding(Landroid/view/View;III)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    move-result v2

    .line 15
    add-int/2addr v2, v1

    .line 16
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 18
    add-int/2addr v2, v1

    .line 19
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 21
    add-int/2addr v2, v1

    .line 22
    invoke-static {p2, v2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 25
    move-result p2

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 29
    move-result p3

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 33
    move-result v1

    .line 34
    add-int/2addr v1, p3

    .line 35
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 37
    add-int/2addr v1, p3

    .line 38
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 40
    add-int/2addr v1, p3

    .line 41
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 43
    invoke-static {p4, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 46
    move-result p3

    .line 47
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 50
    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->pullChildren()V

    .line 7
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/util/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    .line 9
    if-eqz v1, :cond_7c

    .line 11
    iget v1, p0, Lmiuix/navigation/NavigationLayout;->mLockMode:I

    .line 13
    if-eqz v1, :cond_10

    .line 15
    goto/16 :goto_7c

    .line 17
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v1, :cond_3b

    .line 25
    if-eq v1, v2, :cond_2f

    .line 27
    const/4 p1, 0x2

    .line 28
    const/4 v4, 0x3

    .line 29
    if-eq v1, p1, :cond_21

    .line 31
    if-eq v1, v4, :cond_2f

    .line 33
    goto :goto_39

    .line 34
    :cond_21
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    .line 36
    invoke-virtual {p1, v4}, Lmiuix/internal/util/ViewDragHelper;->checkTouchSlop(I)Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_39

    .line 42
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 47
    goto :goto_39

    .line 48
    :cond_2f
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    .line 50
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 53
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->closePeekingDrawer()V

    .line 56
    iput-boolean v3, p0, Lmiuix/navigation/NavigationLayout;->mChildrenCanceledTouch:Z

    .line 58
    :cond_39
    :goto_39
    move p1, v3

    .line 59
    goto :goto_6b

    .line 60
    :cond_3b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 63
    move-result v1

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 67
    move-result p1

    .line 68
    iput v1, p0, Lmiuix/navigation/NavigationLayout;->mInitialMotionX:F

    .line 70
    iput p1, p0, Lmiuix/navigation/NavigationLayout;->mInitialMotionY:F

    .line 72
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->getNavigationOffset()F

    .line 75
    move-result v4

    .line 76
    const/4 v5, 0x0

    .line 77
    cmpl-float v4, v4, v5

    .line 79
    if-lez v4, :cond_68

    .line 81
    iget-object v4, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    .line 83
    float-to-int v1, v1

    .line 84
    float-to-int p1, p1

    .line 85
    invoke-virtual {v4, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    .line 88
    move-result-object v4

    .line 89
    iget-object v5, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    .line 91
    if-eq v4, v5, :cond_66

    .line 93
    iget-object v4, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    .line 95
    invoke-virtual {v4, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    .line 98
    move-result-object p1

    .line 99
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    .line 101
    if-ne p1, v1, :cond_68

    .line 103
    :cond_66
    move p1, v2

    .line 104
    goto :goto_69

    .line 105
    :cond_68
    move p1, v3

    .line 106
    :goto_69
    iput-boolean v3, p0, Lmiuix/navigation/NavigationLayout;->mChildrenCanceledTouch:Z

    .line 108
    :goto_6b
    if-nez v0, :cond_7b

    .line 110
    if-nez p1, :cond_7b

    .line 112
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->isDrawerPeeking()Z

    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_7b

    .line 118
    iget-boolean p1, p0, Lmiuix/navigation/NavigationLayout;->mChildrenCanceledTouch:Z

    .line 120
    if-eqz p1, :cond_7a

    .line 122
    goto :goto_7b

    .line 123
    :cond_7a
    move v2, v3

    .line 124
    :cond_7b
    :goto_7b
    return v2

    .line 125
    :cond_7c
    :goto_7c
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 128
    move-result p1

    .line 129
    return p1
.end method

.method public onLayout(ZIIII)V
    .registers 18

    .line 1
    move-object v6, p0

    .line 2
    move v7, p2

    .line 3
    iget-boolean v0, v6, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    .line 5
    const/4 v8, 0x0

    .line 6
    if-eqz v0, :cond_b0

    .line 8
    iget-object v0, v6, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 13
    move-result v0

    .line 14
    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    move-result-object v1

    .line 20
    move-object v9, v1

    .line 21
    check-cast v9, Lmiuix/navigation/NavigationLayout$LayoutParams;

    .line 23
    neg-int v1, v0

    .line 24
    int-to-float v10, v1

    .line 25
    int-to-float v11, v0

    .line 26
    iget v1, v9, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    .line 28
    mul-float/2addr v1, v11

    .line 29
    add-float/2addr v1, v10

    .line 30
    float-to-int v2, v1

    .line 31
    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 33
    add-int v4, v2, v0

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 38
    move-result v0

    .line 39
    add-int v5, v0, p3

    .line 41
    move-object v0, p0

    .line 42
    move v3, p3

    .line 43
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 46
    iget-object v0, v6, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 51
    move-result v0

    .line 52
    add-int/2addr v0, v7

    .line 53
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->hasPreview()Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_42

    .line 59
    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    .line 61
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 64
    move-result v1

    .line 65
    add-int/2addr v1, v0

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move v1, v8

    .line 68
    :goto_43
    iget v2, v6, Lmiuix/navigation/NavigationLayout;->mDrawerMode:I

    .line 70
    const/4 v3, 0x1

    .line 71
    if-ne v2, v3, :cond_56

    .line 73
    iget v2, v9, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    .line 75
    mul-float/2addr v10, v2

    .line 76
    float-to-int v2, v10

    .line 77
    iget-boolean v3, v6, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    .line 79
    if-eqz v3, :cond_52

    .line 81
    rsub-int/lit8 v2, v2, 0x0

    .line 83
    :cond_52
    invoke-direct {p0, v2}, Lmiuix/navigation/NavigationLayout;->setContentPreviewScrollX(I)V

    .line 86
    goto :goto_7b

    .line 87
    :cond_56
    if-nez v2, :cond_5c

    .line 89
    invoke-direct {p0, v8}, Lmiuix/navigation/NavigationLayout;->setContentPreviewScrollX(I)V

    .line 92
    goto :goto_7b

    .line 93
    :cond_5c
    const/4 v3, 0x2

    .line 94
    if-ne v2, v3, :cond_7b

    .line 96
    int-to-float v2, v7

    .line 97
    iget v3, v9, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    .line 99
    mul-float/2addr v11, v3

    .line 100
    add-float/2addr v11, v2

    .line 101
    float-to-int v2, v11

    .line 102
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->hasPreview()Z

    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_76

    .line 108
    iget-object v0, v6, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 113
    move-result v0

    .line 114
    add-int/2addr v0, v2

    .line 115
    move/from16 v8, p4

    .line 117
    move v4, v0

    .line 118
    goto :goto_7e

    .line 119
    :cond_76
    move/from16 v4, p4

    .line 121
    move v7, v0

    .line 122
    move v8, v1

    .line 123
    goto :goto_7f

    .line 124
    :cond_7b
    :goto_7b
    move v4, v0

    .line 125
    move v8, v1

    .line 126
    move v2, v7

    .line 127
    :goto_7e
    move v7, v4

    .line 128
    :goto_7f
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->hasPreview()Z

    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_a2

    .line 134
    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    .line 136
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 139
    move-result v0

    .line 140
    add-int v5, v0, p3

    .line 142
    move-object v0, p0

    .line 143
    move v3, p3

    .line 144
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 147
    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    .line 149
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 152
    move-result v0

    .line 153
    add-int v5, v0, p3

    .line 155
    move-object v0, p0

    .line 156
    move v2, v7

    .line 157
    move v4, v8

    .line 158
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 161
    goto/16 :goto_10e

    .line 163
    :cond_a2
    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 168
    move-result v0

    .line 169
    add-int v5, v0, p3

    .line 171
    move-object v0, p0

    .line 172
    move v3, p3

    .line 173
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 176
    goto :goto_10e

    .line 177
    :cond_b0
    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 179
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 182
    move-result v0

    .line 183
    add-int v4, v0, v7

    .line 185
    iget-object v0, v6, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 190
    move-result v0

    .line 191
    add-int v5, v0, p3

    .line 193
    move-object v0, p0

    .line 194
    move v2, p2

    .line 195
    move v3, p3

    .line 196
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 199
    iget-object v0, v6, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 204
    move-result v0

    .line 205
    add-int/2addr v0, v7

    .line 206
    iget v1, v6, Lmiuix/navigation/NavigationLayout;->mDividerWidth:I

    .line 208
    add-int v2, v0, v1

    .line 210
    iget-object v0, v6, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 215
    move-result v0

    .line 216
    add-int v7, v0, v2

    .line 218
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->hasPreview()Z

    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_fd

    .line 224
    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    .line 226
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 229
    move-result v0

    .line 230
    add-int v5, v0, p3

    .line 232
    move-object v0, p0

    .line 233
    move v3, p3

    .line 234
    move v4, v7

    .line 235
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 238
    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    .line 240
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 243
    move-result v0

    .line 244
    add-int v5, v0, p3

    .line 246
    move-object v0, p0

    .line 247
    move v2, v7

    .line 248
    move/from16 v4, p4

    .line 250
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 253
    goto :goto_10b

    .line 254
    :cond_fd
    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    .line 256
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 259
    move-result v0

    .line 260
    add-int v5, v0, p3

    .line 262
    move-object v0, p0

    .line 263
    move v3, p3

    .line 264
    move v4, v7

    .line 265
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 268
    :goto_10b
    invoke-direct {p0, v8}, Lmiuix/navigation/NavigationLayout;->setContentPreviewScrollX(I)V

    .line 271
    :goto_10e
    return-void
.end method

.method public onMeasure(II)V
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mFirstMeasure:Z

    .line 4
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->pullChildren()V

    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 10
    move-result v1

    .line 11
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    move-result-object v3

    .line 26
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 28
    const/4 v4, 0x2

    .line 29
    const/4 v5, 0x1

    .line 30
    if-ne v3, v4, :cond_21

    .line 32
    move v3, v5

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v3, v0

    .line 35
    :goto_22
    if-eqz v3, :cond_27

    .line 37
    iget-object v6, p0, Lmiuix/navigation/NavigationLayout;->mLandscapeWidthDescription:Lmiuix/navigation/NavigationLayout$WidthDescription;

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    iget-object v6, p0, Lmiuix/navigation/NavigationLayout;->mPortraitWidthDescription:Lmiuix/navigation/NavigationLayout$WidthDescription;

    .line 42
    :goto_29
    iget v7, v6, Lmiuix/navigation/NavigationLayout$WidthDescription;->type:I

    .line 44
    if-eqz v7, :cond_36

    .line 46
    if-eq v7, v5, :cond_31

    .line 48
    move v6, v0

    .line 49
    goto :goto_39

    .line 50
    :cond_31
    iget v6, v6, Lmiuix/navigation/NavigationLayout$WidthDescription;->value:F

    .line 52
    int-to-float v7, v1

    .line 53
    mul-float/2addr v6, v7

    .line 54
    goto :goto_38

    .line 55
    :cond_36
    iget v6, v6, Lmiuix/navigation/NavigationLayout$WidthDescription;->value:F

    .line 57
    :goto_38
    float-to-int v6, v6

    .line 58
    :goto_39
    const/high16 v7, 0x40000000  # 2.0f

    .line 60
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 63
    move-result v6

    .line 64
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 67
    move-result v2

    .line 68
    iget-object v7, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 70
    invoke-virtual {p0, v7, v6, v2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 73
    iget v2, p0, Lmiuix/navigation/NavigationLayout;->mDrawerMode:I

    .line 75
    if-ne v2, v4, :cond_7d

    .line 77
    iget-object v2, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 79
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lmiuix/navigation/NavigationLayout$LayoutParams;

    .line 85
    iget v4, v2, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    .line 87
    const/high16 v6, 0x3f000000  # 0.5f

    .line 89
    cmpl-float v4, v4, v6

    .line 91
    if-lez v4, :cond_63

    .line 93
    iget-object v4, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 95
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 98
    move-result v4

    .line 99
    goto :goto_64

    .line 100
    :cond_63
    move v4, v0

    .line 101
    :goto_64
    iget v2, v2, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    .line 103
    sub-float/2addr v2, v6

    .line 104
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 107
    move-result v2

    .line 108
    div-float/2addr v2, v6

    .line 109
    iget-object v6, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    .line 111
    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    .line 114
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->hasPreview()Z

    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_7e

    .line 120
    iget-object v6, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    .line 122
    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    .line 125
    goto :goto_7e

    .line 126
    :cond_7d
    move v4, v0

    .line 127
    :cond_7e
    :goto_7e
    iget v2, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabledOrientation:I

    .line 129
    const/4 v6, 0x3

    .line 130
    if-ne v2, v6, :cond_87

    .line 132
    invoke-direct {p0, p1, v4, p2, v1}, Lmiuix/navigation/NavigationLayout;->measureContentPreviewWithMargins(IIII)V

    .line 135
    goto :goto_99

    .line 136
    :cond_87
    and-int/lit8 v6, v2, 0x2

    .line 138
    if-eqz v6, :cond_91

    .line 140
    if-eqz v3, :cond_91

    .line 142
    invoke-direct {p0, p1, v4, p2, v1}, Lmiuix/navigation/NavigationLayout;->measureContentPreviewWithMargins(IIII)V

    .line 145
    goto :goto_99

    .line 146
    :cond_91
    and-int/2addr v2, v5

    .line 147
    if-eqz v2, :cond_9b

    .line 149
    if-nez v3, :cond_9b

    .line 151
    invoke-direct {p0, p1, v4, p2, v1}, Lmiuix/navigation/NavigationLayout;->measureContentPreviewWithMargins(IIII)V

    .line 154
    :goto_99
    move v0, v5

    .line 155
    goto :goto_a7

    .line 156
    :cond_9b
    iget-object v2, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 158
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 161
    move-result v2

    .line 162
    iget v3, p0, Lmiuix/navigation/NavigationLayout;->mDividerWidth:I

    .line 164
    add-int/2addr v2, v3

    .line 165
    invoke-direct {p0, p1, v2, p2, v1}, Lmiuix/navigation/NavigationLayout;->measureContentPreviewWithMargins(IIII)V

    .line 168
    :goto_a7
    iget-boolean p1, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    .line 170
    if-eq p1, v0, :cond_b4

    .line 172
    iput-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    .line 174
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mListener:Lmiuix/navigation/NavigationLayout$NavigationListener;

    .line 176
    if-eqz p1, :cond_b4

    .line 178
    invoke-interface {p1, v0}, Lmiuix/navigation/NavigationLayout$NavigationListener;->onDrawerEnableStateChange(Z)V

    .line 181
    :cond_b4
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    check-cast p1, Lmiuix/navigation/NavigationLayout$SavedState;

    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    iget v0, p1, Lmiuix/navigation/NavigationLayout$SavedState;->offset:F

    .line 12
    invoke-direct {p0, v0}, Lmiuix/navigation/NavigationLayout;->setNavigationOffset(F)V

    .line 15
    iget p1, p1, Lmiuix/navigation/NavigationLayout$SavedState;->offset:F

    .line 17
    const/high16 v0, 0x3f000000  # 0.5f

    .line 19
    cmpl-float p1, p1, v0

    .line 21
    const/4 v0, 0x0

    .line 22
    if-ltz p1, :cond_1b

    .line 24
    invoke-virtual {p0, v0}, Lmiuix/navigation/NavigationLayout;->openNavigationDrawer(Z)V

    .line 27
    goto :goto_1e

    .line 28
    :cond_1b
    invoke-virtual {p0, v0}, Lmiuix/navigation/NavigationLayout;->closeNavigationDrawer(Z)V

    .line 31
    :goto_1e
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_5

    .line 4
    move p1, v0

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    const/4 p1, 0x0

    .line 7
    :goto_6
    iput-boolean p1, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    .line 9
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    .line 11
    if-eqz p1, :cond_d

    .line 13
    const/4 v0, 0x2

    .line 14
    :cond_d
    invoke-virtual {v1, v0}, Lmiuix/internal/util/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 17
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/navigation/NavigationLayout$SavedState;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v0, v2}, Lmiuix/navigation/NavigationLayout$SavedState;-><init>(Landroid/os/Parcelable;Lmiuix/navigation/NavigationLayout$1;)V

    .line 11
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->getNavigationOffset()F

    .line 14
    move-result v0

    .line 15
    iput v0, v1, Lmiuix/navigation/NavigationLayout$SavedState;->offset:F

    .line 17
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/util/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 6
    iget-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    .line 8
    if-eqz v0, :cond_76

    .line 10
    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mLockMode:I

    .line 12
    if-eqz v0, :cond_f

    .line 14
    goto/16 :goto_76

    .line 16
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    move-result v1

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 27
    move-result p1

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v0, :cond_6f

    .line 32
    if-eq v0, v3, :cond_2b

    .line 34
    const/4 p1, 0x3

    .line 35
    if-eq v0, p1, :cond_25

    .line 37
    goto :goto_75

    .line 38
    :cond_25
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->closePeekingDrawer()V

    .line 41
    iput-boolean v2, p0, Lmiuix/navigation/NavigationLayout;->mChildrenCanceledTouch:Z

    .line 43
    goto :goto_75

    .line 44
    :cond_2b
    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mInitialMotionX:F

    .line 46
    sub-float v0, v1, v0

    .line 48
    iget v4, p0, Lmiuix/navigation/NavigationLayout;->mInitialMotionY:F

    .line 50
    sub-float v4, p1, v4

    .line 52
    iget-object v5, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    .line 54
    invoke-virtual {v5}, Lmiuix/internal/util/ViewDragHelper;->getTouchSlop()I

    .line 57
    move-result v5

    .line 58
    iget-object v6, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    .line 60
    float-to-int v1, v1

    .line 61
    float-to-int p1, p1

    .line 62
    invoke-virtual {v6, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_5b

    .line 68
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    .line 70
    if-eq p1, v1, :cond_4b

    .line 72
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    .line 74
    if-ne p1, v1, :cond_5b

    .line 76
    :cond_4b
    mul-float/2addr v0, v0

    .line 77
    mul-float/2addr v4, v4

    .line 78
    add-float/2addr v4, v0

    .line 79
    mul-int/2addr v5, v5

    .line 80
    int-to-float p1, v5

    .line 81
    cmpg-float p1, v4, p1

    .line 83
    if-gez p1, :cond_5b

    .line 85
    invoke-virtual {p0}, Lmiuix/navigation/NavigationLayout;->isNavigationDrawerOpen()Z

    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_5b

    .line 91
    goto :goto_5c

    .line 92
    :cond_5b
    move v2, v3

    .line 93
    :goto_5c
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    .line 95
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 98
    if-eqz v2, :cond_67

    .line 100
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->closePeekingDrawer()V

    .line 103
    goto :goto_75

    .line 104
    :cond_67
    iget p1, p0, Lmiuix/navigation/NavigationLayout;->mLockMode:I

    .line 106
    if-nez p1, :cond_75

    .line 108
    invoke-virtual {p0, v3}, Lmiuix/navigation/NavigationLayout;->closeNavigationDrawer(Z)V

    .line 111
    goto :goto_75

    .line 112
    :cond_6f
    iput v1, p0, Lmiuix/navigation/NavigationLayout;->mInitialMotionX:F

    .line 114
    iput p1, p0, Lmiuix/navigation/NavigationLayout;->mInitialMotionY:F

    .line 116
    iput-boolean v2, p0, Lmiuix/navigation/NavigationLayout;->mChildrenCanceledTouch:Z

    .line 118
    :cond_75
    :goto_75
    return v3

    .line 119
    :cond_76
    :goto_76
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 122
    move-result p1

    .line 123
    return p1
.end method

.method public openNavigationDrawer(Z)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mFirstMeasure:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    move p1, v1

    .line 7
    :cond_6
    if-eqz p1, :cond_19

    .line 9
    iget-boolean p1, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    .line 11
    if-nez p1, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    .line 16
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 21
    move-result v2

    .line 22
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/internal/util/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 25
    goto :goto_25

    .line 26
    :cond_19
    const/high16 p1, 0x3f800000  # 1.0f

    .line 28
    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->setNavigationOffset(F)V

    .line 31
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mListener:Lmiuix/navigation/NavigationLayout$NavigationListener;

    .line 33
    if-eqz p1, :cond_25

    .line 35
    invoke-interface {p1}, Lmiuix/navigation/NavigationLayout$NavigationListener;->onDrawerOpened()V

    .line 38
    :cond_25
    :goto_25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 41
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    .line 3
    iget-boolean v1, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    .line 5
    if-eqz v1, :cond_8

    .line 7
    const/4 v1, 0x2

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v1, 0x1

    .line 10
    :goto_9
    invoke-virtual {v0, v1}, Lmiuix/internal/util/ViewDragHelper;->isEdgeTouched(I)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_12

    .line 16
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 19
    :cond_12
    if-eqz p1, :cond_17

    .line 21
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->closePeekingDrawer()V

    .line 24
    :cond_17
    return-void
.end method

.method public setContentEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    .line 3
    invoke-direct {p0, v0, p1}, Lmiuix/navigation/NavigationLayout;->setChildViewEnabled(Landroid/view/View;Z)V

    .line 6
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    .line 8
    invoke-direct {p0, v0, p1}, Lmiuix/navigation/NavigationLayout;->setChildViewEnabled(Landroid/view/View;Z)V

    .line 11
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lmiuix/navigation/NavigationLayout;->mDividerWidth:I

    .line 9
    goto :goto_c

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lmiuix/navigation/NavigationLayout;->mDividerWidth:I

    .line 13
    :goto_c
    iput-object p1, p0, Lmiuix/navigation/NavigationLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 21
    return-void
.end method

.method public setDividerWidth(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigation/NavigationLayout;->mDividerWidth:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    return-void
.end method

.method public setDrawerEnabledOrientation(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabledOrientation:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setDrawerLockMode(I)V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mLockMode:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Lmiuix/navigation/NavigationLayout;->mLockMode:I

    .line 8
    if-eqz p1, :cond_e

    .line 10
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    .line 12
    invoke-virtual {v0}, Lmiuix/internal/util/ViewDragHelper;->cancel()V

    .line 15
    :cond_e
    const/4 v0, 0x1

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eq p1, v0, :cond_1a

    .line 19
    const/4 v0, 0x2

    .line 20
    if-eq p1, v0, :cond_16

    .line 22
    goto :goto_1d

    .line 23
    :cond_16
    invoke-virtual {p0, v1}, Lmiuix/navigation/NavigationLayout;->openNavigationDrawer(Z)V

    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    invoke-virtual {p0, v1}, Lmiuix/navigation/NavigationLayout;->closeNavigationDrawer(Z)V

    .line 30
    :goto_1d
    return-void
.end method

.method public setDrawerMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigation/NavigationLayout;->mDrawerMode:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setNavigationEanbled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 3
    invoke-direct {p0, v0, p1}, Lmiuix/navigation/NavigationLayout;->setChildViewEnabled(Landroid/view/View;Z)V

    .line 6
    return-void
.end method

.method public setNavigationListener(Lmiuix/navigation/NavigationLayout$NavigationListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigation/NavigationLayout;->mListener:Lmiuix/navigation/NavigationLayout$NavigationListener;

    .line 3
    return-void
.end method

.method public setNavigationShadow(I)V
    .registers 3

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/navigation/NavigationLayout;->setNavigationShadow(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationShadow(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigation/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScrimColor(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigation/NavigationLayout;->mScrimColor:I

    .line 3
    return-void
.end method
