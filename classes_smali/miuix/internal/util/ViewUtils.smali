.class public Lmiuix/internal/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/util/ViewUtils$RelativePadding;,
        Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;
    }
.end annotation


# static fields
.field private static final PADDING_KEY:I = -0x80000000

.field public static final TAG:Ljava/lang/String; = "ViewUtils"

.field private static sSetFrameFetched:Z

.field private static sSetFrameMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static containsPoint(Landroid/view/View;II)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 4
    move-result v0

    .line 5
    if-le p1, v0, :cond_1a

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_1a

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 16
    move-result p1

    .line 17
    if-le p2, p1, :cond_1a

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 22
    move-result p0

    .line 23
    if-ge p2, p0, :cond_1a

    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p0, 0x0

    .line 28
    :goto_1b
    return p0
.end method

.method public static doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lmiuix/internal/util/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;IILmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;IILmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;)V
    .registers 7

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiuix/core/R$styleable;->MiuixInsets:[I

    .line 3
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lmiuix/core/R$styleable;->MiuixInsets_miuixPaddingBottomSystemWindowInsets:I

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 6
    sget v0, Lmiuix/core/R$styleable;->MiuixInsets_miuixPaddingLeftSystemWindowInsets:I

    .line 7
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 8
    sget v1, Lmiuix/core/R$styleable;->MiuixInsets_miuixPaddingRightSystemWindowInsets:I

    .line 9
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    new-instance p1, Lmiuix/internal/util/ViewUtils$1;

    invoke-direct {p1, p2, v0, p3, p4}, Lmiuix/internal/util/ViewUtils$1;-><init>(ZZZLmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;)V

    invoke-static {p0, p1}, Lmiuix/internal/util/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static doOnApplyWindowInsets(Landroid/view/View;Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;)V
    .registers 7

    .line 12
    new-instance v0, Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 13
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 14
    invoke-static {p0}, Lm0/g0$e;->f(Landroid/view/View;)I

    move-result v1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 16
    invoke-static {p0}, Lm0/g0$e;->e(Landroid/view/View;)I

    move-result v3

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lmiuix/internal/util/ViewUtils$RelativePadding;-><init>(IIII)V

    .line 18
    new-instance v1, Lmiuix/internal/util/ViewUtils$2;

    invoke-direct {v1, p1, v0}, Lmiuix/internal/util/ViewUtils$2;-><init>(Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;Lmiuix/internal/util/ViewUtils$RelativePadding;)V

    .line 19
    invoke-static {p0, v1}, Lm0/g0$i;->u(Landroid/view/View;Lm0/v;)V

    .line 20
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->requestApplyInsetsWhenAttached(Landroid/view/View;)V

    return-void
.end method

.method private static fetchSetFrame()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi",
            "SoonBlockedPrivateApi"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lmiuix/internal/util/ViewUtils;->sSetFrameFetched:Z

    .line 3
    if-nez v0, :cond_24

    .line 5
    const-class v0, Landroid/view/View;

    .line 7
    const/4 v1, 0x4

    .line 8
    new-array v1, v1, [Ljava/lang/Class;

    .line 10
    const/4 v2, 0x0

    .line 11
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 13
    aput-object v3, v1, v2

    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object v3, v1, v2

    .line 18
    const/4 v4, 0x2

    .line 19
    aput-object v3, v1, v4

    .line 21
    const/4 v4, 0x3

    .line 22
    aput-object v3, v1, v4

    .line 24
    const-string v3, "setFrame"

    .line 26
    invoke-static {v0, v3, v1}, Lmiuix/reflect/Reflects;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lmiuix/internal/util/ViewUtils;->sSetFrameMethod:Ljava/lang/reflect/Method;

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 35
    sput-boolean v2, Lmiuix/internal/util/ViewUtils;->sSetFrameFetched:Z

    .line 37
    :cond_24
    return-void
.end method

.method public static getBackgroundHeight(Landroid/view/View;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_b

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_b
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public static getBackgroundWidth(Landroid/view/View;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_b

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_b
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public static getContentRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 19
    move-result v1

    .line 20
    add-int/2addr v1, v0

    .line 21
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 30
    move-result v1

    .line 31
    sub-int/2addr v0, v1

    .line 32
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 34
    sub-int/2addr v0, v1

    .line 35
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 44
    move-result p0

    .line 45
    sub-int/2addr v0, p0

    .line 46
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 48
    sub-int/2addr v0, p0

    .line 49
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 51
    return-void
.end method

.method public static getMeasuredHeightWithMargin(Landroid/view/View;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    move-result p0

    .line 9
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    if-eqz v1, :cond_14

    .line 13
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 17
    add-int/2addr p0, v1

    .line 18
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 20
    add-int/2addr p0, v0

    .line 21
    :cond_14
    return p0
.end method

.method public static intersectsWith(Landroid/view/View;Landroid/graphics/Rect;)Z
    .registers 4

    .line 1
    if-eqz p1, :cond_24

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 6
    move-result v0

    .line 7
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 9
    if-ge v0, v1, :cond_24

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 14
    move-result v0

    .line 15
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 17
    if-ge v0, v1, :cond_24

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 22
    move-result v0

    .line 23
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 25
    if-le v0, v1, :cond_24

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 30
    move-result p0

    .line 31
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 33
    if-le p0, p1, :cond_24

    .line 35
    const/4 p0, 0x1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 p0, 0x0

    .line 38
    :goto_25
    return p0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_8

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public static isNightMode(Landroid/content/res/Configuration;)Z
    .registers 3

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 4
    invoke-static {p0}, Landroidx/core/content/a;->y(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0

    .line 5
    :cond_b
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public static layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V
    .registers 8

    .line 1
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    move-result p0

    .line 9
    if-eqz v0, :cond_d

    .line 11
    sub-int v1, p0, p4

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move v1, p2

    .line 15
    :goto_e
    if-eqz v0, :cond_12

    .line 17
    sub-int p4, p0, p2

    .line 19
    :cond_12
    invoke-virtual {p1, v1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 22
    return-void
.end method

.method public static requestApplyInsetsWhenAttached(Landroid/view/View;)V
    .registers 2

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_c

    .line 9
    invoke-static {p0}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 12
    goto :goto_14

    .line 13
    :cond_c
    new-instance v0, Lmiuix/internal/util/ViewUtils$3;

    .line 15
    invoke-direct {v0}, Lmiuix/internal/util/ViewUtils$3;-><init>()V

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 21
    :goto_14
    return-void
.end method

.method public static resetPaddingBottom(Landroid/view/View;I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 16
    return-void
.end method

.method public static resetPaddingTop(Landroid/view/View;I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 16
    return-void
.end method

.method public static setLeftTopRightBottom(Landroid/view/View;IIII)V
    .registers 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_a

    .line 7
    invoke-static {p0, p1, p2, p3, p4}, Lf1/x;->l(Landroid/view/View;IIII)V

    .line 10
    goto :goto_33

    .line 11
    :cond_a
    invoke-static {}, Lmiuix/internal/util/ViewUtils;->fetchSetFrame()V

    .line 14
    sget-object v0, Lmiuix/internal/util/ViewUtils;->sSetFrameMethod:Ljava/lang/reflect/Method;

    .line 16
    if-eqz v0, :cond_33

    .line 18
    const/4 v1, 0x4

    .line 19
    :try_start_12
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 26
    aput-object p1, v1, v2

    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object p2

    .line 33
    aput-object p2, v1, p1

    .line 35
    const/4 p1, 0x2

    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p2

    .line 40
    aput-object p2, v1, p1

    .line 42
    const/4 p1, 0x3

    .line 43
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p2

    .line 47
    aput-object p2, v1, p1

    .line 49
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_33} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_33} :catch_33

    .line 52
    :catch_33
    :cond_33
    :goto_33
    return-void
.end method
