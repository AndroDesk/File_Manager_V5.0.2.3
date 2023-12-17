.class public Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams$ScrollFlags;
    }
.end annotation


# static fields
.field public static final COLLAPSIBLE_FLAGS:I

.field public static final FLAG_QUICK_RETURN:I

.field public static final FLAG_SNAP:I

.field public static final SCROLL_FLAG_ENTER_ALWAYS:I

.field public static final SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED:I

.field public static final SCROLL_FLAG_EXIT_UNTIL_COLLAPSED:I

.field public static final SCROLL_FLAG_NO_SCROLL:I

.field public static final SCROLL_FLAG_SCROLL:I

.field public static final SCROLL_FLAG_SNAP:I

.field public static final SCROLL_FLAG_SNAP_MARGINS:I


# instance fields
.field public scrollFlags:I

.field public scrollInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->COLLAPSIBLE_FLAGS:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->FLAG_QUICK_RETURN:I

    const v0, 0x92d87

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->FLAG_SNAP:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->SCROLL_FLAG_ENTER_ALWAYS:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->SCROLL_FLAG_EXIT_UNTIL_COLLAPSED:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->SCROLL_FLAG_NO_SCROLL:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->SCROLL_FLAG_SCROLL:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->SCROLL_FLAG_SNAP:I

    const v0, 0x92db6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->SCROLL_FLAG_SNAP_MARGINS:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    return-void
.end method

.method public constructor <init>(IIF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    sget-object v1, Lcom/google/android/material/R$styleable;->AppBarLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    :cond_23
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    iget v0, p1, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    iget-object p1, p1, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getScrollFlags()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    return v0
.end method

.method public getScrollInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public isCollapsible()Z
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    and-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method public setScrollFlags(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    return-void
.end method

.method public setScrollInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method
