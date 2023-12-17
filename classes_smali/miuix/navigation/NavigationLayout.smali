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
.field public static final ABSOLUTE:I

.field private static final DEFAULT_SCRIM_COLOR:I

.field public static final DRAWER_ENABLED_ALL:I

.field public static final DRAWER_ENABLED_LANDSCAPE:I

.field public static final DRAWER_ENABLED_NONE:I

.field public static final DRAWER_ENABLED_PORTRAIT:I

.field public static final DRAWER_MODE_CONTENT_SQUEEZED:I

.field public static final DRAWER_MODE_OVERLAY:I

.field public static final DRAWER_MODE_PUSHED_AWAY:I

.field private static final HALF_OFFSET:F = 0.5f

.field public static final LOCK_MODE_LOCKED_CLOSED:I

.field public static final LOCK_MODE_LOCKED_OPEN:I

.field public static final LOCK_MODE_UNLOCKED:I

.field private static final MIN_FLING_VELOCITY:I

.field private static final PEEK_DELAY:I

.field public static final RELATIVE_TO_PARENT:I

.field public static final STATE_DRAGGING:I

.field public static final STATE_IDLE:I

.field public static final STATE_SETTLING:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->ABSOLUTE:I

    const v0, -0x3303259f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->DEFAULT_SCRIM_COLOR:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->DRAWER_ENABLED_ALL:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->DRAWER_ENABLED_LANDSCAPE:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->DRAWER_ENABLED_NONE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->DRAWER_ENABLED_PORTRAIT:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->DRAWER_MODE_CONTENT_SQUEEZED:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->DRAWER_MODE_OVERLAY:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->DRAWER_MODE_PUSHED_AWAY:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->LOCK_MODE_LOCKED_CLOSED:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->LOCK_MODE_LOCKED_OPEN:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->LOCK_MODE_UNLOCKED:I

    const v0, 0x92c06

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->MIN_FLING_VELOCITY:I

    const v0, 0x92d00

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->PEEK_DELAY:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->RELATIVE_TO_PARENT:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->STATE_DRAGGING:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->STATE_IDLE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/NavigationLayout;->STATE_SETTLING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/navigation/NavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lmiuix/navigation/R$attr;->navigationLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/navigation/NavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/navigation/NavigationLayout;->mTmpRect:Landroid/graphics/Rect;

    const v0, -0x330a0809

    iput v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimColor:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmiuix/navigation/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiuix/navigation/NavigationLayout;->mFirstMeasure:Z

    const/4 v2, 0x0

    iput v2, p0, Lmiuix/navigation/NavigationLayout;->mLockMode:I

    const/high16 v3, 0x3f800000  # 1.0f

    iput v3, p0, Lmiuix/navigation/NavigationLayout;->mContentPreviewRatio:F

    new-instance v3, Lmiuix/navigation/NavigationLayout$1;

    invoke-direct {v3, p0}, Lmiuix/navigation/NavigationLayout$1;-><init>(Lmiuix/navigation/NavigationLayout;)V

    iput-object v3, p0, Lmiuix/navigation/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    sget-object v3, Lmiuix/navigation/R$styleable;->NavigationLayout:[I

    sget v4, Lmiuix/navigation/R$style;->Widget_NavigationLayout:I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_navigationDivider:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3a

    invoke-virtual {p0, p2}, Lmiuix/navigation/NavigationLayout;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_3a
    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_navigationShadow:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_45

    invoke-virtual {p0, p2}, Lmiuix/navigation/NavigationLayout;->setNavigationShadow(Landroid/graphics/drawable/Drawable;)V

    :cond_45
    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_navigationDividerWidth:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-eqz p2, :cond_50

    invoke-virtual {p0, p2}, Lmiuix/navigation/NavigationLayout;->setDividerWidth(I)V

    :cond_50
    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_navigationScrimColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/navigation/NavigationLayout;->mScrimColor:I

    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_drawerEnabledOrientation:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabledOrientation:I

    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_portraitNavigationWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p2, p3}, Lmiuix/navigation/NavigationLayout$WidthDescription;->parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiuix/navigation/NavigationLayout$WidthDescription;

    move-result-object p2

    iput-object p2, p0, Lmiuix/navigation/NavigationLayout;->mPortraitWidthDescription:Lmiuix/navigation/NavigationLayout$WidthDescription;

    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_landscapeNavigationWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p2, p3}, Lmiuix/navigation/NavigationLayout$WidthDescription;->parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiuix/navigation/NavigationLayout$WidthDescription;

    move-result-object p2

    iput-object p2, p0, Lmiuix/navigation/NavigationLayout;->mLandscapeWidthDescription:Lmiuix/navigation/NavigationLayout$WidthDescription;

    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_drawerMode:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiuix/navigation/NavigationLayout;->mDrawerMode:I

    sget p2, Lmiuix/navigation/R$styleable;->NavigationLayout_contentPreviewRatio:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_db

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d1

    sub-int/2addr p3, v1

    if-ge v0, p3, :cond_d1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_db

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_db

    :try_start_b8
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    const/4 v0, 0x0

    cmpl-float v2, p3, v0

    if-lez v2, :cond_db

    cmpl-float v0, p2, v0

    if-lez v0, :cond_db

    div-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iput p2, p0, Lmiuix/navigation/NavigationLayout;->mContentPreviewRatio:F

    goto :goto_db

    :cond_d1
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iput p2, p0, Lmiuix/navigation/NavigationLayout;->mContentPreviewRatio:F
    :try_end_db
    .catch Ljava/lang/NumberFormatException; {:try_start_b8 .. :try_end_db} :catch_db

    :catch_db
    :cond_db
    :goto_db
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p1, 0x3f000000  # 0.5f

    new-instance p2, Lmiuix/navigation/NavigationLayout$ViewDragCallback;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lmiuix/navigation/NavigationLayout$ViewDragCallback;-><init>(Lmiuix/navigation/NavigationLayout;Lmiuix/navigation/NavigationLayout$1;)V

    invoke-static {p0, p1, p2}, Lmiuix/internal/util/ViewDragHelper;->create(Landroid/view/ViewGroup;FLmiuix/internal/util/ViewDragHelper$Callback;)Lmiuix/internal/util/ViewDragHelper;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x43c80000  # 400.0f

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lmiuix/internal/util/ViewDragHelper;->setMinVelocity(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/navigation/NavigationLayout;)Lmiuix/internal/util/ViewDragHelper;
    .registers 1

    iget-object p0, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    return-object p0
.end method

.method public static synthetic access$1000(Lmiuix/navigation/NavigationLayout;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lmiuix/navigation/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$1100(Lmiuix/navigation/NavigationLayout;)Lmiuix/navigation/NavigationLayout$NavigationListener;
    .registers 1

    iget-object p0, p0, Lmiuix/navigation/NavigationLayout;->mListener:Lmiuix/navigation/NavigationLayout$NavigationListener;

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/navigation/NavigationLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    return p0
.end method

.method public static synthetic access$300(Lmiuix/navigation/NavigationLayout;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->cancelChildViewTouch()V

    return-void
.end method

.method public static synthetic access$500(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$602(Lmiuix/navigation/NavigationLayout;F)F
    .registers 2

    iput p1, p0, Lmiuix/navigation/NavigationLayout;->mScrimOpacityAnimatior:F

    return p1
.end method

.method public static synthetic access$800(Lmiuix/navigation/NavigationLayout;F)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->setNavigationOffset(F)V

    return-void
.end method

.method public static synthetic access$900(Lmiuix/navigation/NavigationLayout;)F
    .registers 1

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->getNavigationOffset()F

    move-result p0

    return p0
.end method

.method private cancelChildViewTouch()V
    .registers 10

    iget-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mChildrenCanceledTouch:Z

    if-nez v0, :cond_28

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_22

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_22
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mChildrenCanceledTouch:Z

    :cond_28
    return-void
.end method

.method private closePeekingDrawer()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiuix/navigation/NavigationLayout$LayoutParams;

    iget-boolean v1, v0, Lmiuix/navigation/NavigationLayout$LayoutParams;->isPeeking:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiuix/navigation/NavigationLayout$LayoutParams;->isPeeking:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigation/NavigationLayout;->closeNavigationDrawer(Z)V

    :cond_13
    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-boolean v2, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    iget v1, p0, Lmiuix/navigation/NavigationLayout;->mDividerWidth:I

    sub-int v1, v2, v1

    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lmiuix/navigation/NavigationLayout;->mDividerWidth:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawNavigationDisableScrim(Landroid/graphics/Canvas;)V
    .registers 9

    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimOpacityAnimatior:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_43

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    if-eqz v1, :cond_43

    iget v1, p0, Lmiuix/navigation/NavigationLayout;->mScrimColor:I

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    shl-int/lit8 v0, v0, 0x18

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lmiuix/navigation/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_43
    return-void
.end method

.method private drawScrim(Landroid/graphics/Canvas;)V
    .registers 10

    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimOpacity:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_46

    iget v1, p0, Lmiuix/navigation/NavigationLayout;->mScrimColor:I

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    shl-int/lit8 v0, v0, 0x18

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    goto :goto_29

    :cond_23
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_29
    iget-boolean v1, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    if-eqz v1, :cond_34

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_38

    :cond_34
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_38
    int-to-float v3, v0

    const/4 v4, 0x0

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lmiuix/navigation/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_46
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-boolean v1, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_1b

    :cond_15
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    :goto_1b
    iget-object v2, p0, Lmiuix/navigation/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v0, v1

    iget-object v4, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getNavigationOffset()F
    .registers 2

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiuix/navigation/NavigationLayout$LayoutParams;

    iget v0, v0, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    return v0
.end method

.method private getScrimAnimatorListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .registers 2

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-nez v0, :cond_b

    new-instance v0, Lmiuix/navigation/NavigationLayout$2;

    invoke-direct {v0, p0}, Lmiuix/navigation/NavigationLayout$2;-><init>(Lmiuix/navigation/NavigationLayout;)V

    iput-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    :cond_b
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method private hasPreview()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isDrawerPeeking()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiuix/navigation/NavigationLayout$LayoutParams;

    iget-boolean v0, v0, Lmiuix/navigation/NavigationLayout$LayoutParams;->isPeeking:Z

    return v0
.end method

.method private measureContentPreviewWithMargins(IIII)V
    .registers 8

    sub-int/2addr p4, p2

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->hasPreview()Z

    move-result p2

    if-eqz p2, :cond_24

    iget-object p2, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    int-to-float p4, p4

    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mContentPreviewRatio:F

    mul-float v1, p4, v0

    const/high16 v2, 0x3f800000  # 1.0f

    add-float/2addr v0, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p0, p2, p1, v0, p3}, Lmiuix/navigation/NavigationLayout;->measureChildWithMarginsPadding(Landroid/view/View;III)V

    iget-object p2, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mContentPreviewRatio:F

    add-float v1, v0, v2

    div-float/2addr v0, v1

    sub-float/2addr v2, v0

    mul-float/2addr v2, p4

    float-to-int p4, v2

    invoke-virtual {p0, p2, p1, p4, p3}, Lmiuix/navigation/NavigationLayout;->measureChildWithMarginsPadding(Landroid/view/View;III)V

    goto :goto_29

    :cond_24
    iget-object p2, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {p0, p2, p1, p4, p3}, Lmiuix/navigation/NavigationLayout;->measureChildWithMarginsPadding(Landroid/view/View;III)V

    :goto_29
    return-void
.end method

.method private pullChildren()V
    .registers 2

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_c

    sget v0, Lmiuix/navigation/R$id;->content:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    :cond_c
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    if-nez v0, :cond_18

    sget v0, Lmiuix/navigation/R$id;->navigation:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    :cond_18
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    if-nez v0, :cond_24

    sget v0, Lmiuix/navigation/R$id;->preview:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    :cond_24
    return-void
.end method

.method private setChildViewEnabled(Landroid/view/View;Z)V
    .registers 10

    if-eqz p1, :cond_7b

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne v0, p2, :cond_a

    goto/16 :goto_7b

    :cond_a
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    if-eqz v0, :cond_19

    if-eq v0, p1, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_19

    if-nez p2, :cond_19

    return-void

    :cond_19
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    if-eqz p2, :cond_31

    move v6, v4

    goto :goto_32

    :cond_31
    move v6, v5

    :goto_32
    aput v6, v3, v2

    if-eqz p2, :cond_38

    move v2, v5

    goto :goto_39

    :cond_38
    move v2, v4

    :goto_39
    aput v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_55

    :cond_3f
    new-array v0, v3, [F

    if-eqz p2, :cond_45

    move v3, v4

    goto :goto_46

    :cond_45
    move v3, v5

    :goto_46
    aput v3, v0, v2

    if-eqz p2, :cond_4c

    move v2, v5

    goto :goto_4d

    :cond_4c
    move v2, v4

    :goto_4d
    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    :goto_55
    iput-object p1, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x1f4

    goto :goto_64

    :cond_62
    const-wide/16 v0, 0x0

    :goto_64
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->getScrimAnimatorListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p2, :cond_73

    goto :goto_74

    :cond_73
    move v4, v5

    :goto_74
    iput v4, p0, Lmiuix/navigation/NavigationLayout;->mScrimOpacityAnimatior:F

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_7b
    :goto_7b
    return-void
.end method

.method private setContentPreviewScrollX(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->hasPreview()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_12
    return-void
.end method

.method private setNavigationOffset(F)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiuix/navigation/NavigationLayout$LayoutParams;

    iget v1, v0, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    iput p1, v0, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mListener:Lmiuix/navigation/NavigationLayout$NavigationListener;

    if-eqz v1, :cond_18

    invoke-interface {v1, p1}, Lmiuix/navigation/NavigationLayout$NavigationListener;->onDrawerSlide(F)V

    :cond_18
    iget p1, p0, Lmiuix/navigation/NavigationLayout;->mDrawerMode:I

    if-nez p1, :cond_21

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->setContentPreviewScrollX(I)V

    goto :goto_3c

    :cond_21
    const/4 v1, 0x1

    if-ne p1, v1, :cond_39

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-boolean v1, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    if-eqz v1, :cond_2f

    goto :goto_30

    :cond_2f
    neg-int p1, p1

    :goto_30
    int-to-float p1, p1

    iget v0, v0, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->setContentPreviewScrollX(I)V

    goto :goto_3c

    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_3c
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    instance-of p1, p1, Lmiuix/navigation/NavigationLayout$LayoutParams;

    return p1
.end method

.method public closeNavigationDrawer(Z)V
    .registers 5

    iget-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mFirstMeasure:Z

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    if-eqz p1, :cond_28

    iget-boolean p1, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    if-nez p1, :cond_c

    return-void

    :cond_c
    iget-boolean p1, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_1c

    :cond_15
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    :goto_1c
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lmiuix/internal/util/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_33

    :cond_28
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->setNavigationOffset(F)V

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mListener:Lmiuix/navigation/NavigationLayout$NavigationListener;

    if-eqz p1, :cond_33

    invoke-interface {p1}, Lmiuix/navigation/NavigationLayout$NavigationListener;->onDrawerClosed()V

    :cond_33
    :goto_33
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public computeScroll()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mDrawerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimOpacity:F

    goto :goto_12

    :cond_c
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->getNavigationOffset()F

    move-result v0

    iput v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimOpacity:F

    :goto_12
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/internal/util/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_1e
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->drawScrim(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->drawShadow(Landroid/graphics/Canvas;)V

    goto :goto_14

    :cond_e
    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->drawDivider(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->drawNavigationDisableScrim(Landroid/graphics/Canvas;)V

    :goto_14
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lmiuix/navigation/NavigationLayout;->getDrawerLockMode()I

    move-result v0

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_27

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_27

    invoke-virtual {p0}, Lmiuix/navigation/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result p1

    invoke-virtual {p0, v1}, Lmiuix/navigation/NavigationLayout;->closeNavigationDrawer(Z)V

    return p1

    :cond_27
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lmiuix/navigation/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v2, v0, :cond_36

    if-ge v0, v3, :cond_36

    if-ge v4, v1, :cond_36

    if-ge v1, v5, :cond_36

    const/4 p1, 0x1

    return p1

    :cond_36
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Lmiuix/navigation/NavigationLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lmiuix/navigation/NavigationLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Lmiuix/navigation/NavigationLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiuix/navigation/NavigationLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Lmiuix/navigation/NavigationLayout$LayoutParams;

    invoke-direct {v0, p1}, Lmiuix/navigation/NavigationLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDividerWidth()I
    .registers 2

    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mDividerWidth:I

    return v0
.end method

.method public getDrawerEnabledOrientation()I
    .registers 2

    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabledOrientation:I

    return v0
.end method

.method public getDrawerLockMode()I
    .registers 2

    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mLockMode:I

    return v0
.end method

.method public isNavigationDrawerOpen()Z
    .registers 3

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiuix/navigation/NavigationLayout$LayoutParams;

    iget v0, v0, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public measureChildWithMarginsPadding(Landroid/view/View;III)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    invoke-static {p2, v2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->pullChildren()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    invoke-virtual {v0, p1}, Lmiuix/internal/util/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-boolean v1, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    if-eqz v1, :cond_7c

    iget v1, p0, Lmiuix/navigation/NavigationLayout;->mLockMode:I

    if-eqz v1, :cond_10

    goto/16 :goto_7c

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3b

    if-eq v1, v2, :cond_2f

    const/4 p1, 0x2

    const/4 v4, 0x3

    if-eq v1, p1, :cond_21

    if-eq v1, v4, :cond_2f

    goto :goto_39

    :cond_21
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    invoke-virtual {p1, v4}, Lmiuix/internal/util/ViewDragHelper;->checkTouchSlop(I)Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_39

    :cond_2f
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->closePeekingDrawer()V

    iput-boolean v3, p0, Lmiuix/navigation/NavigationLayout;->mChildrenCanceledTouch:Z

    :cond_39
    :goto_39
    move p1, v3

    goto :goto_6b

    :cond_3b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput v1, p0, Lmiuix/navigation/NavigationLayout;->mInitialMotionX:F

    iput p1, p0, Lmiuix/navigation/NavigationLayout;->mInitialMotionY:F

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->getNavigationOffset()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_68

    iget-object v4, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    float-to-int v1, v1

    float-to-int p1, p1

    invoke-virtual {v4, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    if-eq v4, v5, :cond_66

    iget-object v4, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    invoke-virtual {v4, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    if-ne p1, v1, :cond_68

    :cond_66
    move p1, v2

    goto :goto_69

    :cond_68
    move p1, v3

    :goto_69
    iput-boolean v3, p0, Lmiuix/navigation/NavigationLayout;->mChildrenCanceledTouch:Z

    :goto_6b
    if-nez v0, :cond_7b

    if-nez p1, :cond_7b

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->isDrawerPeeking()Z

    move-result p1

    if-nez p1, :cond_7b

    iget-boolean p1, p0, Lmiuix/navigation/NavigationLayout;->mChildrenCanceledTouch:Z

    if-eqz p1, :cond_7a

    goto :goto_7b

    :cond_7a
    move v2, v3

    :cond_7b
    :goto_7b
    return v2

    :cond_7c
    :goto_7c
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLayout(ZIIII)V
    .registers 18

    move-object v6, p0

    move v7, p2

    iget-boolean v0, v6, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_b0

    iget-object v0, v6, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lmiuix/navigation/NavigationLayout$LayoutParams;

    neg-int v1, v0

    int-to-float v10, v1

    int-to-float v11, v0

    iget v1, v9, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    mul-float/2addr v1, v11

    add-float/2addr v1, v10

    float-to-int v2, v1

    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    add-int v4, v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, v0, p3

    move-object v0, p0

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object v0, v6, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v7

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->hasPreview()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_43

    :cond_42
    move v1, v8

    :goto_43
    iget v2, v6, Lmiuix/navigation/NavigationLayout;->mDrawerMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_56

    iget v2, v9, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    mul-float/2addr v10, v2

    float-to-int v2, v10

    iget-boolean v3, v6, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    if-eqz v3, :cond_52

    rsub-int/lit8 v2, v2, 0x0

    :cond_52
    invoke-direct {p0, v2}, Lmiuix/navigation/NavigationLayout;->setContentPreviewScrollX(I)V

    goto :goto_7b

    :cond_56
    if-nez v2, :cond_5c

    invoke-direct {p0, v8}, Lmiuix/navigation/NavigationLayout;->setContentPreviewScrollX(I)V

    goto :goto_7b

    :cond_5c
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7b

    int-to-float v2, v7

    iget v3, v9, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    mul-float/2addr v11, v3

    add-float/2addr v11, v2

    float-to-int v2, v11

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->hasPreview()Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v0, v6, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    move/from16 v8, p4

    move v4, v0

    goto :goto_7e

    :cond_76
    move/from16 v4, p4

    move v7, v0

    move v8, v1

    goto :goto_7f

    :cond_7b
    :goto_7b
    move v4, v0

    move v8, v1

    move v2, v7

    :goto_7e
    move v7, v4

    :goto_7f
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->hasPreview()Z

    move-result v0

    if-eqz v0, :cond_a2

    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, v0, p3

    move-object v0, p0

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, v0, p3

    move-object v0, p0

    move v2, v7

    move v4, v8

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    goto/16 :goto_10e

    :cond_a2
    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, v0, p3

    move-object v0, p0

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    goto :goto_10e

    :cond_b0
    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, v0, v7

    iget-object v0, v6, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, v0, p3

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object v0, v6, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v7

    iget v1, v6, Lmiuix/navigation/NavigationLayout;->mDividerWidth:I

    add-int v2, v0, v1

    iget-object v0, v6, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v7, v0, v2

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->hasPreview()Z

    move-result v0

    if-eqz v0, :cond_fd

    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, v0, p3

    move-object v0, p0

    move v3, p3

    move v4, v7

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, v0, p3

    move-object v0, p0

    move v2, v7

    move/from16 v4, p4

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    goto :goto_10b

    :cond_fd
    iget-object v1, v6, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, v0, p3

    move-object v0, p0

    move v3, p3

    move v4, v7

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    :goto_10b
    invoke-direct {p0, v8}, Lmiuix/navigation/NavigationLayout;->setContentPreviewScrollX(I)V

    :goto_10e
    return-void
.end method

.method public onMeasure(II)V
    .registers 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mFirstMeasure:Z

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->pullChildren()V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_21

    move v3, v5

    goto :goto_22

    :cond_21
    move v3, v0

    :goto_22
    if-eqz v3, :cond_27

    iget-object v6, p0, Lmiuix/navigation/NavigationLayout;->mLandscapeWidthDescription:Lmiuix/navigation/NavigationLayout$WidthDescription;

    goto :goto_29

    :cond_27
    iget-object v6, p0, Lmiuix/navigation/NavigationLayout;->mPortraitWidthDescription:Lmiuix/navigation/NavigationLayout$WidthDescription;

    :goto_29
    iget v7, v6, Lmiuix/navigation/NavigationLayout$WidthDescription;->type:I

    if-eqz v7, :cond_36

    if-eq v7, v5, :cond_31

    move v6, v0

    goto :goto_39

    :cond_31
    iget v6, v6, Lmiuix/navigation/NavigationLayout$WidthDescription;->value:F

    int-to-float v7, v1

    mul-float/2addr v6, v7

    goto :goto_38

    :cond_36
    iget v6, v6, Lmiuix/navigation/NavigationLayout$WidthDescription;->value:F

    :goto_38
    float-to-int v6, v6

    :goto_39
    const/high16 v7, 0x40000000  # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v7, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {p0, v7, v6, v2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget v2, p0, Lmiuix/navigation/NavigationLayout;->mDrawerMode:I

    if-ne v2, v4, :cond_7d

    iget-object v2, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lmiuix/navigation/NavigationLayout$LayoutParams;

    iget v4, v2, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    const/high16 v6, 0x3f000000  # 0.5f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_63

    iget-object v4, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    goto :goto_64

    :cond_63
    move v4, v0

    :goto_64
    iget v2, v2, Lmiuix/navigation/NavigationLayout$LayoutParams;->offset:F

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v6

    iget-object v6, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->hasPreview()Z

    move-result v6

    if-eqz v6, :cond_7e

    iget-object v6, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_7e

    :cond_7d
    move v4, v0

    :cond_7e
    :goto_7e
    iget v2, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabledOrientation:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_87

    invoke-direct {p0, p1, v4, p2, v1}, Lmiuix/navigation/NavigationLayout;->measureContentPreviewWithMargins(IIII)V

    goto :goto_99

    :cond_87
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_91

    if-eqz v3, :cond_91

    invoke-direct {p0, p1, v4, p2, v1}, Lmiuix/navigation/NavigationLayout;->measureContentPreviewWithMargins(IIII)V

    goto :goto_99

    :cond_91
    and-int/2addr v2, v5

    if-eqz v2, :cond_9b

    if-nez v3, :cond_9b

    invoke-direct {p0, p1, v4, p2, v1}, Lmiuix/navigation/NavigationLayout;->measureContentPreviewWithMargins(IIII)V

    :goto_99
    move v0, v5

    goto :goto_a7

    :cond_9b
    iget-object v2, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lmiuix/navigation/NavigationLayout;->mDividerWidth:I

    add-int/2addr v2, v3

    invoke-direct {p0, p1, v2, p2, v1}, Lmiuix/navigation/NavigationLayout;->measureContentPreviewWithMargins(IIII)V

    :goto_a7
    iget-boolean p1, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    if-eq p1, v0, :cond_b4

    iput-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mListener:Lmiuix/navigation/NavigationLayout$NavigationListener;

    if-eqz p1, :cond_b4

    invoke-interface {p1, v0}, Lmiuix/navigation/NavigationLayout$NavigationListener;->onDrawerEnableStateChange(Z)V

    :cond_b4
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Lmiuix/navigation/NavigationLayout$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lmiuix/navigation/NavigationLayout$SavedState;->offset:F

    invoke-direct {p0, v0}, Lmiuix/navigation/NavigationLayout;->setNavigationOffset(F)V

    iget p1, p1, Lmiuix/navigation/NavigationLayout$SavedState;->offset:F

    const/high16 v0, 0x3f000000  # 0.5f

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-ltz p1, :cond_1b

    invoke-virtual {p0, v0}, Lmiuix/navigation/NavigationLayout;->openNavigationDrawer(Z)V

    goto :goto_1e

    :cond_1b
    invoke-virtual {p0, v0}, Lmiuix/navigation/NavigationLayout;->closeNavigationDrawer(Z)V

    :goto_1e
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    move p1, v0

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    iput-boolean p1, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    if-eqz p1, :cond_d

    const/4 v0, 0x2

    :cond_d
    invoke-virtual {v1, v0}, Lmiuix/internal/util/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lmiuix/navigation/NavigationLayout$SavedState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lmiuix/navigation/NavigationLayout$SavedState;-><init>(Landroid/os/Parcelable;Lmiuix/navigation/NavigationLayout$1;)V

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->getNavigationOffset()F

    move-result v0

    iput v0, v1, Lmiuix/navigation/NavigationLayout$SavedState;->offset:F

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    invoke-virtual {v0, p1}, Lmiuix/internal/util/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    if-eqz v0, :cond_76

    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mLockMode:I

    if-eqz v0, :cond_f

    goto/16 :goto_76

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6f

    if-eq v0, v3, :cond_2b

    const/4 p1, 0x3

    if-eq v0, p1, :cond_25

    goto :goto_75

    :cond_25
    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->closePeekingDrawer()V

    iput-boolean v2, p0, Lmiuix/navigation/NavigationLayout;->mChildrenCanceledTouch:Z

    goto :goto_75

    :cond_2b
    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mInitialMotionX:F

    sub-float v0, v1, v0

    iget v4, p0, Lmiuix/navigation/NavigationLayout;->mInitialMotionY:F

    sub-float v4, p1, v4

    iget-object v5, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    invoke-virtual {v5}, Lmiuix/internal/util/ViewDragHelper;->getTouchSlop()I

    move-result v5

    iget-object v6, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    float-to-int v1, v1

    float-to-int p1, p1

    invoke-virtual {v6, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5b

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    if-eq p1, v1, :cond_4b

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    if-ne p1, v1, :cond_5b

    :cond_4b
    mul-float/2addr v0, v0

    mul-float/2addr v4, v4

    add-float/2addr v4, v0

    mul-int/2addr v5, v5

    int-to-float p1, v5

    cmpg-float p1, v4, p1

    if-gez p1, :cond_5b

    invoke-virtual {p0}, Lmiuix/navigation/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result p1

    if-eqz p1, :cond_5b

    goto :goto_5c

    :cond_5b
    move v2, v3

    :goto_5c
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz v2, :cond_67

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->closePeekingDrawer()V

    goto :goto_75

    :cond_67
    iget p1, p0, Lmiuix/navigation/NavigationLayout;->mLockMode:I

    if-nez p1, :cond_75

    invoke-virtual {p0, v3}, Lmiuix/navigation/NavigationLayout;->closeNavigationDrawer(Z)V

    goto :goto_75

    :cond_6f
    iput v1, p0, Lmiuix/navigation/NavigationLayout;->mInitialMotionX:F

    iput p1, p0, Lmiuix/navigation/NavigationLayout;->mInitialMotionY:F

    iput-boolean v2, p0, Lmiuix/navigation/NavigationLayout;->mChildrenCanceledTouch:Z

    :cond_75
    :goto_75
    return v3

    :cond_76
    :goto_76
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public openNavigationDrawer(Z)V
    .registers 5

    iget-boolean v0, p0, Lmiuix/navigation/NavigationLayout;->mFirstMeasure:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move p1, v1

    :cond_6
    if-eqz p1, :cond_19

    iget-boolean p1, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabled:Z

    if-nez p1, :cond_d

    return-void

    :cond_d
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lmiuix/internal/util/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_25

    :cond_19
    const/high16 p1, 0x3f800000  # 1.0f

    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout;->setNavigationOffset(F)V

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout;->mListener:Lmiuix/navigation/NavigationLayout$NavigationListener;

    if-eqz p1, :cond_25

    invoke-interface {p1}, Lmiuix/navigation/NavigationLayout$NavigationListener;->onDrawerOpened()V

    :cond_25
    :goto_25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    iget-boolean v1, p0, Lmiuix/navigation/NavigationLayout;->mLayoutRtl:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    goto :goto_9

    :cond_8
    const/4 v1, 0x1

    :goto_9
    invoke-virtual {v0, v1}, Lmiuix/internal/util/ViewDragHelper;->isEdgeTouched(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_12
    if-eqz p1, :cond_17

    invoke-direct {p0}, Lmiuix/navigation/NavigationLayout;->closePeekingDrawer()V

    :cond_17
    return-void
.end method

.method public setContentEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mContent:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lmiuix/navigation/NavigationLayout;->setChildViewEnabled(Landroid/view/View;Z)V

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mPreview:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lmiuix/navigation/NavigationLayout;->setChildViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lmiuix/navigation/NavigationLayout;->mDividerWidth:I

    goto :goto_c

    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lmiuix/navigation/NavigationLayout;->mDividerWidth:I

    :goto_c
    iput-object p1, p0, Lmiuix/navigation/NavigationLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerWidth(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigation/NavigationLayout;->mDividerWidth:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawerEnabledOrientation(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigation/NavigationLayout;->mDrawerEnabledOrientation:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDrawerLockMode(I)V
    .registers 4

    iget v0, p0, Lmiuix/navigation/NavigationLayout;->mLockMode:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lmiuix/navigation/NavigationLayout;->mLockMode:I

    if-eqz p1, :cond_e

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mDragger:Lmiuix/internal/util/ViewDragHelper;

    invoke-virtual {v0}, Lmiuix/internal/util/ViewDragHelper;->cancel()V

    :cond_e
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    goto :goto_1d

    :cond_16
    invoke-virtual {p0, v1}, Lmiuix/navigation/NavigationLayout;->openNavigationDrawer(Z)V

    goto :goto_1d

    :cond_1a
    invoke-virtual {p0, v1}, Lmiuix/navigation/NavigationLayout;->closeNavigationDrawer(Z)V

    :goto_1d
    return-void
.end method

.method public setDrawerMode(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigation/NavigationLayout;->mDrawerMode:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNavigationEanbled(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lmiuix/navigation/NavigationLayout;->setChildViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setNavigationListener(Lmiuix/navigation/NavigationLayout$NavigationListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigation/NavigationLayout;->mListener:Lmiuix/navigation/NavigationLayout$NavigationListener;

    return-void
.end method

.method public setNavigationShadow(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/navigation/NavigationLayout;->setNavigationShadow(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationShadow(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigation/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScrimColor(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigation/NavigationLayout;->mScrimColor:I

    return-void
.end method
