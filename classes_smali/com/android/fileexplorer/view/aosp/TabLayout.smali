.class public Lcom/android/fileexplorer/view/aosp/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$e;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/aosp/TabLayout$AdapterChangeListener;,
        Lcom/android/fileexplorer/view/aosp/TabLayout$PagerAdapterObserver;,
        Lcom/android/fileexplorer/view/aosp/TabLayout$ViewPagerOnTabSelectedListener;,
        Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;,
        Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;,
        Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;,
        Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;,
        Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;,
        Lcom/android/fileexplorer/view/aosp/TabLayout$OnTabSelectedListener;,
        Lcom/android/fileexplorer/view/aosp/TabLayout$TabIndicatorGravity;,
        Lcom/android/fileexplorer/view/aosp/TabLayout$TabGravity;,
        Lcom/android/fileexplorer/view/aosp/TabLayout$LabelVisibility;,
        Lcom/android/fileexplorer/view/aosp/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field public static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x14

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field private static final DEF_STYLE_RES:I = 0x7f120512

.field public static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field public static final GRAVITY_START:I = 0x2

.field public static final INDICATOR_GRAVITY_BOTTOM:I = 0x0

.field public static final INDICATOR_GRAVITY_CENTER:I = 0x1

.field public static final INDICATOR_GRAVITY_STRETCH:I = 0x3

.field public static final INDICATOR_GRAVITY_TOP:I = 0x2

.field private static final INVALID_WIDTH:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TabLayout"

.field private static final MIN_INDICATOR_WIDTH:I = 0x18

.field public static final MODE_AUTO:I = 0x2

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field public static final TAB_LABEL_VISIBILITY_LABELED:I = 0x1

.field public static final TAB_LABEL_VISIBILITY_UNLABELED:I = 0x0

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38

.field private static final tabPool:Ll0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/d<",
            "Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapterChangeListener:Lcom/android/fileexplorer/view/aosp/TabLayout$AdapterChangeListener;

.field private contentInsetStart:I

.field private currentVpSelectedListener:Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;

.field public inlineLabel:Z

.field public mode:I

.field private pageChangeListener:Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;

.field private pagerAdapter:Li1/a;

.field private pagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final requestedTabMaxWidth:I

.field private final requestedTabMinWidth:I

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private final scrollableTabMinWidth:I

.field private selectedListener:Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;

.field private final selectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

.field private setupViewPagerImplicitly:Z

.field public final slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

.field public final tabBackgroundResId:I

.field public tabGravity:I

.field public tabIconTint:Landroid/content/res/ColorStateList;

.field public tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field public tabIndicatorAnimationDuration:I

.field public tabIndicatorFullWidth:Z

.field public tabIndicatorGravity:I

.field public tabMaxWidth:I

.field public tabPaddingBottom:I

.field public tabPaddingEnd:I

.field public tabPaddingStart:I

.field public tabPaddingTop:I

.field public tabRippleColorStateList:Landroid/content/res/ColorStateList;

.field public tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

.field public tabTextAppearance:I

.field public tabTextColors:Landroid/content/res/ColorStateList;

.field public tabTextMultiLineSize:F

.field public tabTextSize:F

.field private final tabViewContentBounds:Landroid/graphics/RectF;

.field private final tabViewPool:Ll0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/d<",
            "Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field public unboundedRipple:Z

.field public viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ll0/e;

    .line 3
    const/16 v1, 0x10

    .line 5
    invoke-direct {v0, v1}, Ll0/e;-><init>(I)V

    .line 8
    sput-object v0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPool:Ll0/d;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f040600

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    const v0, 0x7f120512

    .line 3
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    const p1, 0x7fffffff

    .line 6
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabMaxWidth:I

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 8
    new-instance p1, Lt/c;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Lt/c;-><init>(II)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabViewPool:Ll0/d;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 11
    new-instance v4, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    invoke-direct {v4, p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;-><init>(Lcom/android/fileexplorer/view/aosp/TabLayout;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 12
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v4, v3, v5}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 13
    sget-object v5, Lcom/google/android/material/R$styleable;->TabLayout:[I

    invoke-virtual {p1, p2, v5, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p3, p3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_7a

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/ColorDrawable;

    .line 16
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 17
    invoke-virtual {p3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 19
    sget-object p3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 20
    invoke-static {p0}, Lm0/g0$i;->i(Landroid/view/View;)F

    move-result p3

    .line 21
    invoke-virtual {v0, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 22
    invoke-static {p0, v0}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_7a
    const/16 p3, 0xa

    .line 23
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 24
    invoke-virtual {v4, p3}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    const/4 p3, 0x7

    .line 25
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 26
    invoke-virtual {v4, p3}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    const/4 p3, 0x5

    .line 27
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 28
    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    const/16 p3, 0x9

    .line 29
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 30
    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setSelectedTabIndicatorGravity(I)V

    const/16 p3, 0x8

    .line 31
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setTabIndicatorFullWidth(Z)V

    const/16 p3, 0xf

    .line 32
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPaddingBottom:I

    iput p3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPaddingEnd:I

    iput p3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPaddingTop:I

    iput p3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPaddingStart:I

    const/16 v0, 0x12

    .line 33
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPaddingStart:I

    const/16 p3, 0x13

    .line 34
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPaddingTop:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPaddingTop:I

    const/16 p3, 0x11

    .line 35
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPaddingEnd:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPaddingEnd:I

    const/16 p3, 0x10

    .line 36
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPaddingBottom:I

    .line 37
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPaddingBottom:I

    const/16 p3, 0x16

    const v0, 0x7f12027c

    .line 38
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabTextAppearance:I

    .line 39
    sget-object v0, Lh/j;->TextAppearance:[I

    .line 40
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 41
    :try_start_ea
    invoke-virtual {p3, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabTextSize:F

    const/4 v0, 0x3

    .line 42
    invoke-static {p1, p3, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;
    :try_end_f8
    .catchall {:try_start_ea .. :try_end_f8} :catchall_19b

    .line 43
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p3, 0x17

    .line 44
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_109

    .line 45
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    :cond_109
    const/16 p3, 0x15

    .line 46
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_121

    .line 47
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 48
    iget-object v4, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-static {v4, p3}, Lcom/android/fileexplorer/view/aosp/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 49
    :cond_121
    invoke-static {p1, p2, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    const/4 p3, 0x4

    .line 50
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    const/16 p3, 0x14

    .line 51
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x6

    const/16 p3, 0x12c

    .line 52
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIndicatorAnimationDuration:I

    const/16 p1, 0xd

    .line 53
    invoke-virtual {p2, p1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->requestedTabMinWidth:I

    .line 54
    invoke-virtual {p2, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->requestedTabMaxWidth:I

    .line 55
    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabBackgroundResId:I

    .line 56
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->contentInsetStart:I

    const/16 p1, 0xe

    .line 57
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->mode:I

    const/4 p1, 0x2

    .line 58
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabGravity:I

    const/16 p1, 0xb

    .line 59
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->inlineLabel:Z

    const/16 p1, 0x18

    .line 60
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->unboundedRipple:Z

    .line 61
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07014a

    .line 63
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabTextMultiLineSize:F

    const p2, 0x7f070148

    .line 64
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->scrollableTabMinWidth:I

    .line 65
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->applyModeAndGravity()V

    return-void

    :catchall_19b
    move-exception p1

    .line 66
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    throw p1
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/view/aosp/TabLayout;)Landroid/graphics/RectF;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    .line 3
    return-object p0
.end method

.method private addTabFromItemView(Lcom/google/android/material/tabs/TabItem;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->newTab()Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->text:Ljava/lang/CharSequence;

    .line 7
    if-eqz v1, :cond_b

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 12
    :cond_b
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 14
    if-eqz v1, :cond_12

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 19
    :cond_12
    iget v1, p1, Lcom/google/android/material/tabs/TabItem;->customLayout:I

    .line 21
    if-eqz v1, :cond_19

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->setCustomView(I)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 26
    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2a

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 43
    :cond_2a
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->addTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V

    .line 46
    return-void
.end method

.method private addTabView(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->setSelected(Z)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getPosition()I

    .line 15
    move-result p1

    .line 16
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 23
    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/google/android/material/tabs/TabItem;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    check-cast p1, Lcom/google/android/material/tabs/TabItem;

    .line 7
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->addTabFromItemView(Lcom/google/android/material/tabs/TabItem;)V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string v0, "Only TabItem instances can be added to TabLayout"

    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method

.method private animateToTab(I)V
    .registers 8

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_4

    .line 4
    return-void

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_44

    .line 13
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 15
    invoke-static {p0}, Lm0/g0$g;->c(Landroid/view/View;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_44

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 23
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->childrenNeedLayout()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    goto :goto_44

    .line 30
    :cond_1d
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 33
    move-result v0

    .line 34
    invoke-direct {p0, p1, v2}, Lcom/android/fileexplorer/view/aosp/TabLayout;->calculateScrollXForTab(IF)I

    .line 37
    move-result v2

    .line 38
    if-eq v0, v2, :cond_3c

    .line 40
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->ensureScrollAnimator()V

    .line 43
    iget-object v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 45
    const/4 v4, 0x2

    .line 46
    new-array v4, v4, [I

    .line 48
    const/4 v5, 0x0

    .line 49
    aput v0, v4, v5

    .line 51
    aput v2, v4, v1

    .line 53
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 56
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 58
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 61
    :cond_3c
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 63
    iget v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIndicatorAnimationDuration:I

    .line 65
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    .line 68
    return-void

    .line 69
    :cond_44
    :goto_44
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setScrollPosition(IFZ)V

    .line 72
    return-void
.end method

.method private applyGravityForModeScrollable(I)V
    .registers 3

    .line 1
    if-eqz p1, :cond_f

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_9

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_16

    .line 9
    goto :goto_1e

    .line 10
    :cond_9
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 15
    goto :goto_1e

    .line 16
    :cond_f
    const-string p1, "TabLayout"

    .line 18
    const-string v0, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead"

    .line 20
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_16
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 25
    const v0, 0x800003

    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 31
    :goto_1e
    return-void
.end method

.method private applyModeAndGravity()V
    .registers 6

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->mode:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    if-ne v0, v1, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    move v0, v2

    .line 11
    goto :goto_14

    .line 12
    :cond_b
    :goto_b
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->contentInsetStart:I

    .line 14
    iget v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPaddingStart:I

    .line 16
    sub-int/2addr v0, v3

    .line 17
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 20
    move-result v0

    .line 21
    :goto_14
    iget-object v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 23
    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 25
    invoke-static {v3, v0, v2, v2, v2}, Lm0/g0$e;->k(Landroid/view/View;IIII)V

    .line 28
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->mode:I

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz v0, :cond_36

    .line 33
    if-eq v0, v2, :cond_25

    .line 35
    if-eq v0, v1, :cond_25

    .line 37
    goto :goto_3b

    .line 38
    :cond_25
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabGravity:I

    .line 40
    if-ne v0, v1, :cond_30

    .line 42
    const-string v0, "TabLayout"

    .line 44
    const-string v1, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_30
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 51
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 54
    goto :goto_3b

    .line 55
    :cond_36
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabGravity:I

    .line 57
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->applyGravityForModeScrollable(I)V

    .line 60
    :goto_3b
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/aosp/TabLayout;->updateTabViews(Z)V

    .line 63
    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .registers 7

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->mode:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eqz v0, :cond_a

    .line 7
    if-ne v0, v2, :cond_9

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    return v1

    .line 11
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 19
    iget-object v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 21
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v3

    .line 25
    if-ge p1, v3, :cond_21

    .line 27
    iget-object v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 29
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    const/4 p1, 0x0

    .line 35
    :goto_22
    if-eqz v0, :cond_29

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 40
    move-result v3

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v3, v1

    .line 43
    :goto_2a
    if-eqz p1, :cond_30

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 48
    move-result v1

    .line 49
    :cond_30
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 52
    move-result p1

    .line 53
    div-int/lit8 v0, v3, 0x2

    .line 55
    add-int/2addr v0, p1

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 59
    move-result p1

    .line 60
    div-int/2addr p1, v2

    .line 61
    sub-int/2addr v0, p1

    .line 62
    add-int/2addr v3, v1

    .line 63
    int-to-float p1, v3

    .line 64
    const/high16 v1, 0x3f000000  # 0.5f

    .line 66
    mul-float/2addr p1, v1

    .line 67
    mul-float/2addr p1, p2

    .line 68
    float-to-int p1, p1

    .line 69
    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 71
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 74
    move-result p2

    .line 75
    if-nez p2, :cond_4e

    .line 77
    add-int/2addr v0, p1

    .line 78
    goto :goto_4f

    .line 79
    :cond_4e
    sub-int/2addr v0, p1

    .line 80
    :goto_4f
    return v0
.end method

.method private configureTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;I)V
    .registers 4

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->setPosition(I)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result p1

    .line 15
    :goto_e
    add-int/lit8 p2, p2, 0x1

    .line 17
    if-ge p2, p1, :cond_1e

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 27
    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->setPosition(I)V

    .line 30
    goto :goto_e

    .line 31
    :cond_1e
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [[I

    .line 4
    new-array v0, v0, [I

    .line 6
    sget-object v2, Landroid/widget/HorizontalScrollView;->SELECTED_STATE_SET:[I

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    aput p1, v0, v3

    .line 13
    sget-object p1, Landroid/widget/HorizontalScrollView;->EMPTY_STATE_SET:[I

    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object p1, v1, v2

    .line 18
    aput p0, v0, v2

    .line 20
    new-instance p0, Landroid/content/res/ColorStateList;

    .line 22
    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 25
    return-object p0
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    const/4 v1, -0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 8
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 11
    return-object v0
.end method

.method private createTabView(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabViewPool:Ll0/d;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-interface {v0}, Ll0/d;->acquire()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    if-nez v0, :cond_17

    .line 15
    new-instance v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;-><init>(Lcom/android/fileexplorer/view/aosp/TabLayout;Landroid/content/Context;)V

    .line 24
    :cond_17
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->setTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 31
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getTabMinWidth()I

    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 38
    invoke-static {p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->access$100(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)Ljava/lang/CharSequence;

    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_37

    .line 48
    invoke-static {p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->access$200(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)Ljava/lang/CharSequence;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 55
    goto :goto_3e

    .line 56
    :cond_37
    invoke-static {p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->access$100(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)Ljava/lang/CharSequence;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 63
    :goto_3e
    return-object v0
.end method

.method private dispatchTabReselected(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_8
    if-ltz v0, :cond_18

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;

    .line 19
    invoke-interface {v1, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;->onTabReselected(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 24
    goto :goto_8

    .line 25
    :cond_18
    return-void
.end method

.method private dispatchTabSelected(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_8
    if-ltz v0, :cond_18

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;

    .line 19
    invoke-interface {v1, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;->onTabSelected(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 24
    goto :goto_8

    .line 25
    :cond_18
    return-void
.end method

.method private dispatchTabUnselected(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_8
    if-ltz v0, :cond_18

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;

    .line 19
    invoke-interface {v1, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;->onTabUnselected(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 24
    goto :goto_8

    .line 25
    :cond_18
    return-void
.end method

.method private ensureScrollAnimator()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 3
    if-nez v0, :cond_22

    .line 5
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 7
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 12
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 14
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 19
    iget v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIndicatorAnimationDuration:I

    .line 21
    int-to-long v1, v1

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 27
    new-instance v1, Lcom/android/fileexplorer/view/aosp/TabLayout$1;

    .line 29
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$1;-><init>(Lcom/android/fileexplorer/view/aosp/TabLayout;)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 35
    :cond_22
    return-void
.end method

.method private getDefaultHeight()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ge v2, v0, :cond_29

    .line 11
    iget-object v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 19
    if-eqz v3, :cond_26

    .line 21
    invoke-virtual {v3}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_26

    .line 27
    invoke-virtual {v3}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_26

    .line 37
    const/4 v1, 0x1

    .line 38
    goto :goto_29

    .line 39
    :cond_26
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_8

    .line 42
    :cond_29
    :goto_29
    if-eqz v1, :cond_32

    .line 44
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->inlineLabel:Z

    .line 46
    if-nez v0, :cond_32

    .line 48
    const/16 v0, 0x48

    .line 50
    goto :goto_34

    .line 51
    :cond_32
    const/16 v0, 0x14

    .line 53
    :goto_34
    return v0
.end method

.method private getTabMinWidth()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->requestedTabMinWidth:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_6

    .line 6
    return v0

    .line 7
    :cond_6
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->mode:I

    .line 9
    if-eqz v0, :cond_10

    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_e

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    :goto_10
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->scrollableTabMinWidth:I

    .line 19
    :goto_12
    return v0
.end method

.method private getTabScrollRange()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    move-result v1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 15
    move-result v1

    .line 16
    sub-int/2addr v0, v1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    move-result v1

    .line 21
    sub-int/2addr v0, v1

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method private removeTabViewAt(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 11
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 14
    if-eqz v0, :cond_17

    .line 16
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->reset()V

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabViewPool:Ll0/d;

    .line 21
    invoke-interface {p1, v0}, Ll0/d;->release(Ljava/lang/Object;)Z

    .line 24
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 27
    return-void
.end method

.method private setSelectedTabView(I)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_25

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_a
    if-ge v2, v0, :cond_25

    .line 13
    iget-object v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 15
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x1

    .line 20
    if-ne v2, p1, :cond_17

    .line 22
    move v5, v4

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v5, v1

    .line 25
    :goto_18
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 28
    if-ne v2, p1, :cond_1e

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v4, v1

    .line 32
    :goto_1f
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_a

    .line 38
    :cond_25
    return-void
.end method

.method private setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .registers 6

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_14

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->pageChangeListener:Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;

    if-eqz v1, :cond_b

    .line 5
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 6
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->adapterChangeListener:Lcom/android/fileexplorer/view/aosp/TabLayout$AdapterChangeListener;

    if-eqz v0, :cond_14

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 8
    :cond_14
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->currentVpSelectedListener:Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->removeOnTabSelectedListener(Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;)V

    .line 10
    iput-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->currentVpSelectedListener:Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;

    :cond_1e
    if-eqz p1, :cond_69

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->pageChangeListener:Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_2d

    .line 13
    new-instance v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/android/fileexplorer/view/aosp/TabLayout;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->pageChangeListener:Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;

    .line 14
    :cond_2d
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->pageChangeListener:Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->pageChangeListener:Lcom/android/fileexplorer/view/aosp/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 16
    new-instance v0, Lcom/android/fileexplorer/view/aosp/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->currentVpSelectedListener:Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->addOnTabSelectedListener(Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;)V

    .line 18
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Li1/a;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 19
    invoke-virtual {p0, v0, p2}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setPagerAdapter(Li1/a;Z)V

    .line 20
    :cond_4a
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->adapterChangeListener:Lcom/android/fileexplorer/view/aosp/TabLayout$AdapterChangeListener;

    if-nez v0, :cond_55

    .line 21
    new-instance v0, Lcom/android/fileexplorer/view/aosp/TabLayout$AdapterChangeListener;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$AdapterChangeListener;-><init>(Lcom/android/fileexplorer/view/aosp/TabLayout;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->adapterChangeListener:Lcom/android/fileexplorer/view/aosp/TabLayout$AdapterChangeListener;

    .line 22
    :cond_55
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->adapterChangeListener:Lcom/android/fileexplorer/view/aosp/TabLayout$AdapterChangeListener;

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/view/aosp/TabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 23
    iget-object p2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->adapterChangeListener:Lcom/android/fileexplorer/view/aosp/TabLayout$AdapterChangeListener;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 24
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_6f

    .line 25
    :cond_69
    iput-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, v1, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setPagerAdapter(Li1/a;Z)V

    .line 27
    :goto_6f
    iput-boolean p3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->setupViewPagerImplicitly:Z

    return-void
.end method

.method private updateAllTabs()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_17

    .line 10
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 18
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->updateView()V

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_7

    .line 24
    :cond_17
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->mode:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_11

    .line 6
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabGravity:I

    .line 8
    if-nez v0, :cond_11

    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 13
    const/high16 v0, 0x3f800000  # 1.0f

    .line 15
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 17
    goto :goto_17

    .line 18
    :cond_11
    const/4 v0, -0x2

    .line 19
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 24
    :goto_17
    return-void
.end method


# virtual methods
.method public addOnTabSelectedListener(Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public addOnTabSelectedListener(Lcom/android/fileexplorer/view/aosp/TabLayout$OnTabSelectedListener;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->addOnTabSelectedListener(Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public addTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->addTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;Z)V

    return-void
.end method

.method public addTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;I)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->addTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;IZ)V

    return-void
.end method

.method public addTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;IZ)V
    .registers 5

    .line 4
    iget-object v0, p1, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->parent:Lcom/android/fileexplorer/view/aosp/TabLayout;

    if-ne v0, p0, :cond_10

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/TabLayout;->configureTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->addTabView(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V

    if-eqz p3, :cond_f

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->select()V

    :cond_f
    return-void

    .line 8
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tab belongs to a different TabLayout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;Z)V
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/fileexplorer/view/aosp/TabLayout;->addTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 4
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    return-void
.end method

.method public createTabFromPool()Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPool:Ll0/d;

    .line 3
    invoke-interface {v0}, Ll0/d;->acquire()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 9
    if-nez v0, :cond_f

    .line 11
    new-instance v0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 13
    invoke-direct {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;-><init>()V

    .line 16
    :cond_f
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedTabPosition()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedTab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getPosition()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, -0x1

    .line 11
    :goto_a
    return v0
.end method

.method public getTabAt(I)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;
    .registers 3

    .line 1
    if-ltz p1, :cond_12

    .line 3
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getTabCount()I

    .line 6
    move-result v0

    .line 7
    if-lt p1, v0, :cond_9

    .line 9
    goto :goto_12

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    :goto_12
    const/4 p1, 0x0

    .line 20
    :goto_13
    return-object p1
.end method

.method public getTabCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTabGravity()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabGravity:I

    .line 3
    return v0
.end method

.method public getTabIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getTabIndicatorGravity()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIndicatorGravity:I

    .line 3
    return v0
.end method

.method public getTabMaxWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabMaxWidth:I

    .line 3
    return v0
.end method

.method public getTabMode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->mode:I

    .line 3
    return v0
.end method

.method public getTabRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public hasUnboundedRipple()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->unboundedRipple:Z

    .line 3
    return v0
.end method

.method public isInlineLabel()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->inlineLabel:Z

    .line 3
    return v0
.end method

.method public isTabIndicatorFullWidth()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIndicatorFullWidth:Z

    .line 3
    return v0
.end method

.method public newTab()Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->createTabFromPool()Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 4
    move-result-object v0

    .line 5
    iput-object p0, v0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->parent:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 7
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->createTabView(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 10
    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 13
    return-object v0
.end method

.method public onAttachedToWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 9
    if-nez v0, :cond_18

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    .line 17
    if-eqz v1, :cond_18

    .line 19
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {p0, v0, v1, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    .line 25
    :cond_18
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->setupViewPagerImplicitly:Z

    .line 6
    if-eqz v0, :cond_e

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->setupViewPagerImplicitly:Z

    .line 15
    :cond_e
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1b

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 18
    if-eqz v2, :cond_18

    .line 20
    check-cast v1, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 22
    invoke-static {v1, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->access$300(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;Landroid/graphics/Canvas;)V

    .line 25
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1b
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 31
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getTabCount()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v2, v0, v2, v1}, Ln0/c$c;->a(IIIZ)Ln0/c$c;

    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Ln0/c$c;->a:Ljava/lang/Object;

    .line 16
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 21
    return-void
.end method

.method public onMeasure(II)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getDefaultHeight()I

    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 16
    move-result v0

    .line 17
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 20
    move-result v1

    .line 21
    const/high16 v2, -0x80000000

    .line 23
    const/high16 v3, 0x40000000  # 2.0f

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    if-eq v1, v2, :cond_2e

    .line 29
    if-eqz v1, :cond_1f

    .line 31
    goto :goto_41

    .line 32
    :cond_1f
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 35
    move-result p2

    .line 36
    add-int/2addr p2, v0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 40
    move-result v0

    .line 41
    add-int/2addr v0, p2

    .line 42
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 45
    move-result p2

    .line 46
    goto :goto_41

    .line 47
    :cond_2e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 50
    move-result v1

    .line 51
    if-ne v1, v5, :cond_41

    .line 53
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 56
    move-result v1

    .line 57
    if-lt v1, v0, :cond_41

    .line 59
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 66
    :cond_41
    :goto_41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 69
    move-result v0

    .line 70
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_5f

    .line 76
    iget v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->requestedTabMaxWidth:I

    .line 78
    if-lez v1, :cond_50

    .line 80
    goto :goto_5d

    .line 81
    :cond_50
    int-to-float v0, v0

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    move-result-object v1

    .line 86
    const/16 v2, 0x38

    .line 88
    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    .line 91
    move-result v1

    .line 92
    sub-float/2addr v0, v1

    .line 93
    float-to-int v1, v0

    .line 94
    :goto_5d
    iput v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabMaxWidth:I

    .line 96
    :cond_5f
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 99
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 102
    move-result p1

    .line 103
    if-ne p1, v5, :cond_ad

    .line 105
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 108
    move-result-object p1

    .line 109
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->mode:I

    .line 111
    if-eqz v0, :cond_82

    .line 113
    if-eq v0, v5, :cond_76

    .line 115
    const/4 v1, 0x2

    .line 116
    if-eq v0, v1, :cond_82

    .line 118
    goto :goto_8d

    .line 119
    :cond_76
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 122
    move-result v0

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 126
    move-result v1

    .line 127
    if-eq v0, v1, :cond_8d

    .line 129
    :goto_80
    move v4, v5

    .line 130
    goto :goto_8d

    .line 131
    :cond_82
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 134
    move-result v0

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 138
    move-result v1

    .line 139
    if-ge v0, v1, :cond_8d

    .line 141
    goto :goto_80

    .line 142
    :cond_8d
    :goto_8d
    if-eqz v4, :cond_ad

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 147
    move-result v0

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 151
    move-result v1

    .line 152
    add-int/2addr v1, v0

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 156
    move-result-object v0

    .line 157
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 159
    invoke-static {p2, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 162
    move-result p2

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 166
    move-result v0

    .line 167
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 170
    move-result v0

    .line 171
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 174
    :cond_ad
    return-void
.end method

.method public populateFromPagerAdapter()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->removeAllTabs()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->pagerAdapter:Li1/a;

    .line 6
    if-eqz v0, :cond_40

    .line 8
    invoke-virtual {v0}, Li1/a;->getCount()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_d
    if-ge v2, v0, :cond_23

    .line 16
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->newTab()Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 19
    move-result-object v3

    .line 20
    iget-object v4, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->pagerAdapter:Li1/a;

    .line 22
    invoke-virtual {v4, v2}, Li1/a;->getPageTitle(I)Ljava/lang/CharSequence;

    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p0, v3, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->addTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;Z)V

    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_d

    .line 36
    :cond_23
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 38
    if-eqz v1, :cond_40

    .line 40
    if-lez v0, :cond_40

    .line 42
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getSelectedTabPosition()I

    .line 49
    move-result v1

    .line 50
    if-eq v0, v1, :cond_40

    .line 52
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getTabCount()I

    .line 55
    move-result v1

    .line 56
    if-ge v0, v1, :cond_40

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getTabAt(I)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V

    .line 65
    :cond_40
    return-void
.end method

.method public releaseFromTabPool(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabPool:Ll0/d;

    .line 3
    invoke-interface {v0, p1}, Ll0/d;->release(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public removeAllTabs()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_8
    if-ltz v0, :cond_10

    .line 11
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->removeTabViewAt(I)V

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    goto :goto_8

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2c

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 38
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->reset()V

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->releaseFromTabPool(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)Z

    .line 44
    goto :goto_16

    .line 45
    :cond_2c
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedTab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 48
    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/android/fileexplorer/view/aosp/TabLayout$OnTabSelectedListener;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->removeOnTabSelectedListener(Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public removeTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V
    .registers 3

    .line 1
    iget-object v0, p1, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->parent:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 3
    if-ne v0, p0, :cond_c

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getPosition()I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->removeTabAt(I)V

    .line 12
    return-void

    .line 13
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    const-string v0, "Tab does not belong to this TabLayout."

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1
.end method

.method public removeTabAt(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedTab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getPosition()I

    .line 9
    move-result v0

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v0, v1

    .line 12
    :goto_b
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->removeTabViewAt(I)V

    .line 15
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 23
    if-eqz v2, :cond_1e

    .line 25
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->reset()V

    .line 28
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/aosp/TabLayout;->releaseFromTabPool(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)Z

    .line 31
    :cond_1e
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v2

    .line 37
    move v3, p1

    .line 38
    :goto_25
    if-ge v3, v2, :cond_35

    .line 40
    iget-object v4, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 48
    invoke-virtual {v4, v3}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->setPosition(I)V

    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 53
    goto :goto_25

    .line 54
    :cond_35
    if-ne v0, p1, :cond_52

    .line 56
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_41

    .line 64
    const/4 p1, 0x0

    .line 65
    goto :goto_4f

    .line 66
    :cond_41
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 68
    add-int/lit8 p1, p1, -0x1

    .line 70
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 73
    move-result p1

    .line 74
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 80
    :goto_4f
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V

    .line 83
    :cond_52
    return-void
.end method

.method public selectTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;Z)V

    return-void
.end method

.method public selectTab(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;Z)V
    .registers 7

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedTab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    if-ne v0, p1, :cond_11

    if-eqz v0, :cond_40

    .line 3
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->dispatchTabReselected(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->animateToTab(I)V

    goto :goto_40

    :cond_11
    const/4 v1, -0x1

    if-eqz p1, :cond_19

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getPosition()I

    move-result v2

    goto :goto_1a

    :cond_19
    move v2, v1

    :goto_1a
    if-eqz p2, :cond_34

    if-eqz v0, :cond_24

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->getPosition()I

    move-result p2

    if-ne p2, v1, :cond_2c

    :cond_24
    if-eq v2, v1, :cond_2c

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 7
    invoke-virtual {p0, v2, p2, v3}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_2f

    .line 8
    :cond_2c
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/aosp/TabLayout;->animateToTab(I)V

    :goto_2f
    if-eq v2, v1, :cond_34

    .line 9
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setSelectedTabView(I)V

    .line 10
    :cond_34
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedTab:Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    if-eqz v0, :cond_3b

    .line 11
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->dispatchTabUnselected(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V

    :cond_3b
    if-eqz p1, :cond_40

    .line 12
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->dispatchTabSelected(Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;)V

    :cond_40
    :goto_40
    return-void
.end method

.method public setContentInsetStart(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->contentInsetStart:I

    .line 3
    return-void
.end method

.method public setElevation(F)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    .line 7
    return-void
.end method

.method public setInlineLabel(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->inlineLabel:Z

    .line 3
    if-eq v0, p1, :cond_24

    .line 5
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->inlineLabel:Z

    .line 7
    const/4 p1, 0x0

    .line 8
    :goto_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v0

    .line 14
    if-ge p1, v0, :cond_21

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 24
    if-eqz v1, :cond_1e

    .line 26
    check-cast v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 28
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->updateOrientation()V

    .line 31
    :cond_1e
    add-int/lit8 p1, p1, 0x1

    .line 33
    goto :goto_7

    .line 34
    :cond_21
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->applyModeAndGravity()V

    .line 37
    :cond_24
    return-void
.end method

.method public setInlineLabelResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setInlineLabel(Z)V

    .line 12
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedListener:Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->removeOnTabSelectedListener(Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;)V

    .line 4
    :cond_7
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->selectedListener:Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;

    if-eqz p1, :cond_e

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->addOnTabSelectedListener(Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;)V

    :cond_e
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/android/fileexplorer/view/aosp/TabLayout$OnTabSelectedListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setOnTabSelectedListener(Lcom/android/fileexplorer/view/aosp/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public setPagerAdapter(Li1/a;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->pagerAdapter:Li1/a;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 7
    if-eqz v1, :cond_b

    .line 9
    invoke-virtual {v0, v1}, Li1/a;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 12
    :cond_b
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->pagerAdapter:Li1/a;

    .line 14
    if-eqz p2, :cond_21

    .line 16
    if-eqz p1, :cond_21

    .line 18
    iget-object p2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 20
    if-nez p2, :cond_1c

    .line 22
    new-instance p2, Lcom/android/fileexplorer/view/aosp/TabLayout$PagerAdapterObserver;

    .line 24
    invoke-direct {p2, p0}, Lcom/android/fileexplorer/view/aosp/TabLayout$PagerAdapterObserver;-><init>(Lcom/android/fileexplorer/view/aosp/TabLayout;)V

    .line 27
    iput-object p2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 29
    :cond_1c
    iget-object p2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 31
    invoke-virtual {p1, p2}, Li1/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 34
    :cond_21
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->populateFromPagerAdapter()V

    .line 37
    return-void
.end method

.method public setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->ensureScrollAnimator()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .registers 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method public setScrollPosition(IFZZ)V
    .registers 7

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_34

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_11

    goto :goto_34

    :cond_11
    if-eqz p4, :cond_18

    .line 4
    iget-object p4, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    invoke-virtual {p4, p1, p2}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->setIndicatorPositionFromTabPosition(IF)V

    .line 5
    :cond_18
    iget-object p4, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_27

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_27

    .line 6
    iget-object p4, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    :cond_27
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/TabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    if-eqz p3, :cond_34

    .line 8
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setSelectedTabView(I)V

    :cond_34
    :goto_34
    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .registers 3

    if-eqz p1, :cond_e

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    :cond_e
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    :goto_12
    return-void
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_d

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 4
    invoke-static {p1}, Lm0/g0$d;->k(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    .line 6
    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIndicatorGravity:I

    .line 3
    if-eq v0, p1, :cond_d

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIndicatorGravity:I

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 9
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-static {p1}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 14
    :cond_d
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 6
    return-void
.end method

.method public setTabGravity(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabGravity:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabGravity:I

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->applyModeAndGravity()V

    .line 10
    :cond_9
    return-void
.end method

.method public setTabIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->updateAllTabs()V

    .line 10
    :cond_9
    return-void
.end method

.method public setTabIconTintResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    .line 12
    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabIndicatorFullWidth:Z

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 5
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {p1}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 10
    return-void
.end method

.method public setTabMode(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->mode:I

    .line 3
    if-eq p1, v0, :cond_9

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->mode:I

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->applyModeAndGravity()V

    .line 10
    :cond_9
    return-void
.end method

.method public setTabRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_25

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 7
    const/4 p1, 0x0

    .line 8
    :goto_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v0

    .line 14
    if-ge p1, v0, :cond_25

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 24
    if-eqz v1, :cond_22

    .line 26
    check-cast v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->access$000(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;Landroid/content/Context;)V

    .line 35
    :cond_22
    add-int/lit8 p1, p1, 0x1

    .line 37
    goto :goto_7

    .line 38
    :cond_25
    return-void
.end method

.method public setTabRippleColorResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    .line 12
    return-void
.end method

.method public setTabTextColors(II)V
    .registers 3

    .line 4
    invoke-static {p1, p2}, Lcom/android/fileexplorer/view/aosp/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->updateAllTabs()V

    :cond_9
    return-void
.end method

.method public setTabViewGravity(I)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getTabCount()I

    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_19

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getTabAt(I)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_16

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getTabAt(I)Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;

    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/android/fileexplorer/view/aosp/TabLayout$Tab;->view:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 20
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 23
    :cond_16
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_19
    return-void
.end method

.method public setTabsFromPagerAdapter(Li1/a;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setPagerAdapter(Li1/a;Z)V

    .line 5
    return-void
.end method

.method public setUnboundedRipple(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->unboundedRipple:Z

    .line 3
    if-eq v0, p1, :cond_25

    .line 5
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->unboundedRipple:Z

    .line 7
    const/4 p1, 0x0

    .line 8
    :goto_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v0

    .line 14
    if-ge p1, v0, :cond_25

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 24
    if-eqz v1, :cond_22

    .line 26
    check-cast v0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->access$000(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;Landroid/content/Context;)V

    .line 35
    :cond_22
    add-int/lit8 p1, p1, 0x1

    .line 37
    goto :goto_7

    .line 38
    :cond_25
    return-void
.end method

.method public setUnboundedRippleResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setUnboundedRipple(Z)V

    .line 12
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getTabScrollRange()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public updateTabViews(Z)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_27

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout;->slidingTabIndicator:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v1

    .line 16
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->getTabMinWidth()I

    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/aosp/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 32
    if-eqz p1, :cond_24

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 37
    :cond_24
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_27
    return-void
.end method
