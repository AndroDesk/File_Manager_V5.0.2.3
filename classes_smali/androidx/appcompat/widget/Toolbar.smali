.class public Landroidx/appcompat/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"

# interfaces
.implements Lm0/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/Toolbar$e;,
        Landroidx/appcompat/widget/Toolbar$f;,
        Landroidx/appcompat/widget/Toolbar$SavedState;,
        Landroidx/appcompat/widget/Toolbar$g;,
        Landroidx/appcompat/widget/Toolbar$h;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/n$a;

.field private mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

.field private mBackInvokedCallbackEnabled:Z

.field private mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field public mButtonGravity:I

.field public mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private mContentInsets:Landroidx/appcompat/widget/p0;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field public mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$f;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field public mMenuBuilderCallback:Landroidx/appcompat/view/menu/h$a;

.field public final mMenuHostHelper:Lm0/m;

.field public mMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$e;

.field private mNavButtonView:Landroid/widget/ImageButton;

.field public mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$h;

.field private mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mProvidedMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:Landroid/content/res/ColorStateList;

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:Landroid/content/res/ColorStateList;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Landroidx/appcompat/widget/b1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lh/a;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x800013

    .line 4
    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 7
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    .line 8
    new-instance v0, Lm0/m;

    new-instance v1, Landroidx/appcompat/widget/z0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/widget/z0;-><init>(Landroidx/appcompat/widget/Toolbar;I)V

    invoke-direct {v0, v1}, Lm0/m;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Lm0/m;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mProvidedMenuItems:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Landroidx/appcompat/widget/Toolbar$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$a;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$e;

    .line 11
    new-instance v0, Landroidx/appcompat/widget/Toolbar$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$b;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v5, Lh/j;->Toolbar:[I

    invoke-static {v0, p2, v5, p3}, Landroidx/appcompat/widget/y0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/y0;

    move-result-object v0

    .line 13
    iget-object v7, v0, Landroidx/appcompat/widget/y0;->b:Landroid/content/res/TypedArray;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    .line 14
    invoke-static/range {v3 .. v8}, Lm0/g0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 15
    sget p1, Lh/j;->Toolbar_titleTextAppearance:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    .line 16
    sget p1, Lh/j;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 17
    sget p1, Lh/j;->Toolbar_android_gravity:I

    iget p2, p0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    .line 18
    iget-object p3, v0, Landroidx/appcompat/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p3, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 19
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    .line 20
    sget p1, Lh/j;->Toolbar_buttonGravity:I

    const/16 p2, 0x30

    .line 21
    iget-object p3, v0, Landroidx/appcompat/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p3, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 22
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    .line 23
    sget p1, Lh/j;->Toolbar_titleMargin:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/y0;->c(II)I

    move-result p1

    .line 24
    sget p2, Lh/j;->Toolbar_titleMargins:I

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result p3

    if-eqz p3, :cond_8a

    .line 25
    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/widget/y0;->c(II)I

    move-result p1

    .line 26
    :cond_8a
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 27
    sget p1, Lh/j;->Toolbar_titleMarginStart:I

    const/4 p2, -0x1

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y0;->c(II)I

    move-result p1

    if-ltz p1, :cond_9d

    .line 28
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 29
    :cond_9d
    sget p1, Lh/j;->Toolbar_titleMarginEnd:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y0;->c(II)I

    move-result p1

    if-ltz p1, :cond_a7

    .line 30
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 31
    :cond_a7
    sget p1, Lh/j;->Toolbar_titleMarginTop:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y0;->c(II)I

    move-result p1

    if-ltz p1, :cond_b1

    .line 32
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 33
    :cond_b1
    sget p1, Lh/j;->Toolbar_titleMarginBottom:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y0;->c(II)I

    move-result p1

    if-ltz p1, :cond_bb

    .line 34
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 35
    :cond_bb
    sget p1, Lh/j;->Toolbar_maxButtonHeight:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y0;->d(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    .line 36
    sget p1, Lh/j;->Toolbar_contentInsetStart:I

    const/high16 p2, -0x80000000

    .line 37
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y0;->c(II)I

    move-result p1

    .line 38
    sget p3, Lh/j;->Toolbar_contentInsetEnd:I

    .line 39
    invoke-virtual {v0, p3, p2}, Landroidx/appcompat/widget/y0;->c(II)I

    move-result p3

    .line 40
    sget v1, Lh/j;->Toolbar_contentInsetLeft:I

    .line 41
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/y0;->d(II)I

    move-result v1

    .line 42
    sget v3, Lh/j;->Toolbar_contentInsetRight:I

    .line 43
    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/widget/y0;->d(II)I

    move-result v3

    .line 44
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    .line 45
    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/p0;

    .line 46
    iput-boolean v2, v4, Landroidx/appcompat/widget/p0;->h:Z

    if-eq v1, p2, :cond_ea

    .line 47
    iput v1, v4, Landroidx/appcompat/widget/p0;->e:I

    iput v1, v4, Landroidx/appcompat/widget/p0;->a:I

    :cond_ea
    if-eq v3, p2, :cond_f0

    .line 48
    iput v3, v4, Landroidx/appcompat/widget/p0;->f:I

    iput v3, v4, Landroidx/appcompat/widget/p0;->b:I

    :cond_f0
    if-ne p1, p2, :cond_f4

    if-eq p3, p2, :cond_f7

    .line 49
    :cond_f4
    invoke-virtual {v4, p1, p3}, Landroidx/appcompat/widget/p0;->a(II)V

    .line 50
    :cond_f7
    sget p1, Lh/j;->Toolbar_contentInsetStartWithNavigation:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y0;->c(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 51
    sget p1, Lh/j;->Toolbar_contentInsetEndWithActions:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y0;->c(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 52
    sget p1, Lh/j;->Toolbar_collapseIcon:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 53
    sget p1, Lh/j;->Toolbar_collapseContentDescription:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 54
    sget p1, Lh/j;->Toolbar_title:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_126

    .line 56
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    :cond_126
    sget p1, Lh/j;->Toolbar_subtitle:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_135

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 60
    :cond_135
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 61
    sget p1, Lh/j;->Toolbar_popupTheme:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 62
    sget p1, Lh/j;->Toolbar_navigationIcon:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_14f

    .line 63
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :cond_14f
    sget p1, Lh/j;->Toolbar_navigationContentDescription:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_15e

    .line 66
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 67
    :cond_15e
    sget p1, Lh/j;->Toolbar_logo:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_169

    .line 68
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_169
    sget p1, Lh/j;->Toolbar_logoDescription:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_178

    .line 71
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 72
    :cond_178
    sget p1, Lh/j;->Toolbar_titleTextColor:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result p2

    if-eqz p2, :cond_187

    .line 73
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 74
    :cond_187
    sget p1, Lh/j;->Toolbar_subtitleTextColor:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result p2

    if-eqz p2, :cond_196

    .line 75
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 76
    :cond_196
    sget p1, Lh/j;->Toolbar_menu:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result p2

    if-eqz p2, :cond_1a5

    .line 77
    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 78
    :cond_1a5
    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->n()V

    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_c

    .line 11
    move v0, v2

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v0, v1

    .line 14
    :goto_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    move-result v3

    .line 18
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 21
    move-result v4

    .line 22
    invoke-static {p2, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 25
    move-result p2

    .line 26
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 29
    if-eqz v0, :cond_43

    .line 31
    sub-int/2addr v3, v2

    .line 32
    :goto_1f
    if-ltz v3, :cond_67

    .line 34
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/appcompat/widget/Toolbar$g;

    .line 44
    iget v2, v1, Landroidx/appcompat/widget/Toolbar$g;->b:I

    .line 46
    if-nez v2, :cond_40

    .line 48
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_40

    .line 54
    iget v1, v1, Landroidx/appcompat/app/a$a;->a:I

    .line 56
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildHorizontalGravity(I)I

    .line 59
    move-result v1

    .line 60
    if-ne v1, p2, :cond_40

    .line 62
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_40
    add-int/lit8 v3, v3, -0x1

    .line 67
    goto :goto_1f

    .line 68
    :cond_43
    :goto_43
    if-ge v1, v3, :cond_67

    .line 70
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Landroidx/appcompat/widget/Toolbar$g;

    .line 80
    iget v4, v2, Landroidx/appcompat/widget/Toolbar$g;->b:I

    .line 82
    if-nez v4, :cond_64

    .line 84
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_64

    .line 90
    iget v2, v2, Landroidx/appcompat/app/a$a;->a:I

    .line 92
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/Toolbar;->getChildHorizontalGravity(I)I

    .line 95
    move-result v2

    .line 96
    if-ne v2, p2, :cond_64

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_64
    add-int/lit8 v1, v1, 0x1

    .line 103
    goto :goto_43

    .line 104
    :cond_67
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_b

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$g;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_18

    .line 12
    :cond_b
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_16

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$g;

    .line 21
    move-result-object v0

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    check-cast v0, Landroidx/appcompat/widget/Toolbar$g;

    .line 25
    :goto_18
    const/4 v1, 0x1

    .line 26
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$g;->b:I

    .line 28
    if-eqz p2, :cond_2a

    .line 30
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 32
    if-eqz p2, :cond_2a

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_2d

    .line 43
    :cond_2a
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    :goto_2d
    return-void
.end method

.method private ensureContentInsets()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/p0;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/appcompat/widget/p0;

    .line 7
    invoke-direct {v0}, Landroidx/appcompat/widget/p0;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/p0;

    .line 12
    :cond_b
    return-void
.end method

.method private ensureLogoView()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 16
    :cond_f
    return-void
.end method

.method private ensureMenu()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenuView()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 6
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    .line 8
    if-nez v1, :cond_2a

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/appcompat/view/menu/h;

    .line 16
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$f;

    .line 18
    if-nez v1, :cond_1a

    .line 20
    new-instance v1, Landroidx/appcompat/widget/Toolbar$f;

    .line 22
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$f;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    .line 25
    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$f;

    .line 27
    :cond_1a
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 33
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$f;

    .line 35
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 37
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/n;Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->updateBackInvokedCallbackState()V

    .line 43
    :cond_2a
    return-void
.end method

.method private ensureMenuView()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 3
    if-nez v0, :cond_42

    .line 5
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 17
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    .line 19
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 22
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 24
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$e;

    .line 26
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$e;)V

    .line 29
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 31
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/n$a;

    .line 33
    new-instance v2, Landroidx/appcompat/widget/Toolbar$c;

    .line 35
    invoke-direct {v2, p0}, Landroidx/appcompat/widget/Toolbar$c;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    .line 38
    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/view/menu/n$a;

    .line 40
    iput-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/view/menu/h$a;

    .line 42
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$g;

    .line 45
    move-result-object v0

    .line 46
    const v1, 0x800005

    .line 49
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    .line 51
    and-int/lit8 v2, v2, 0x70

    .line 53
    or-int/2addr v1, v2

    .line 54
    iput v1, v0, Landroidx/appcompat/app/a$a;->a:I

    .line 56
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 58
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 67
    :cond_42
    return-void
.end method

.method private ensureNavButtonView()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 3
    if-nez v0, :cond_25

    .line 5
    new-instance v0, Landroidx/appcompat/widget/k;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    sget v3, Lh/a;->toolbarNavigationButtonStyle:I

    .line 14
    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$g;

    .line 22
    move-result-object v0

    .line 23
    const v1, 0x800003

    .line 26
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    .line 28
    and-int/lit8 v2, v2, 0x70

    .line 30
    or-int/2addr v1, v2

    .line 31
    iput v1, v0, Landroidx/appcompat/app/a$a;->a:I

    .line 33
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 35
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    :cond_25
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .registers 6

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 10
    move-result p1

    .line 11
    and-int/lit8 p1, p1, 0x7

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq p1, v1, :cond_19

    .line 16
    const/4 v2, 0x3

    .line 17
    if-eq p1, v2, :cond_19

    .line 19
    const/4 v3, 0x5

    .line 20
    if-eq p1, v3, :cond_19

    .line 22
    if-ne v0, v1, :cond_18

    .line 24
    move v2, v3

    .line 25
    :cond_18
    return v2

    .line 26
    :cond_19
    return p1
.end method

.method private getChildTop(Landroid/view/View;I)I
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/widget/Toolbar$g;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 10
    move-result p1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-lez p2, :cond_12

    .line 14
    sub-int p2, p1, p2

    .line 16
    div-int/lit8 p2, p2, 0x2

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move p2, v1

    .line 20
    :goto_13
    iget v2, v0, Landroidx/appcompat/app/a$a;->a:I

    .line 22
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/Toolbar;->getChildVerticalGravity(I)I

    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x30

    .line 28
    if-eq v2, v3, :cond_58

    .line 30
    const/16 v3, 0x50

    .line 32
    if-eq v2, v3, :cond_49

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 37
    move-result p2

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 45
    move-result v3

    .line 46
    sub-int v4, v3, p2

    .line 48
    sub-int/2addr v4, v2

    .line 49
    sub-int/2addr v4, p1

    .line 50
    div-int/lit8 v4, v4, 0x2

    .line 52
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 54
    if-ge v4, v5, :cond_39

    .line 56
    move v4, v5

    .line 57
    goto :goto_47

    .line 58
    :cond_39
    sub-int/2addr v3, v2

    .line 59
    sub-int/2addr v3, p1

    .line 60
    sub-int/2addr v3, v4

    .line 61
    sub-int/2addr v3, p2

    .line 62
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 64
    if-ge v3, p1, :cond_47

    .line 66
    sub-int/2addr p1, v3

    .line 67
    sub-int/2addr v4, p1

    .line 68
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 71
    move-result v4

    .line 72
    :cond_47
    :goto_47
    add-int/2addr p2, v4

    .line 73
    return p2

    .line 74
    :cond_49
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 77
    move-result v1

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 81
    move-result v2

    .line 82
    sub-int/2addr v1, v2

    .line 83
    sub-int/2addr v1, p1

    .line 84
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 86
    sub-int/2addr v1, p1

    .line 87
    sub-int/2addr v1, p2

    .line 88
    return v1

    .line 89
    :cond_58
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 92
    move-result p1

    .line 93
    sub-int/2addr p1, p2

    .line 94
    return p1
.end method

.method private getChildVerticalGravity(I)I
    .registers 3

    .line 1
    and-int/lit8 p1, p1, 0x70

    .line 3
    const/16 v0, 0x10

    .line 5
    if-eq p1, v0, :cond_12

    .line 7
    const/16 v0, 0x30

    .line 9
    if-eq p1, v0, :cond_12

    .line 11
    const/16 v0, 0x50

    .line 13
    if-eq p1, v0, :cond_12

    .line 15
    iget p1, p0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    .line 17
    and-int/lit8 p1, p1, 0x70

    .line 19
    :cond_12
    return p1
.end method

.method private getCurrentMenuItems()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_a
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    .line 14
    move-result v3

    .line 15
    if-ge v2, v3, :cond_1a

    .line 17
    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-object v0
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    invoke-static {p1}, Lm0/i;->c(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 10
    move-result v0

    .line 11
    invoke-static {p1}, Lm0/i;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 14
    move-result p1

    .line 15
    add-int/2addr p1, v0

    .line 16
    return p1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 1
    new-instance v0, Lm/f;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lm/f;-><init>(Landroid/content/Context;)V

    .line 10
    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 11
    add-int/2addr v0, p1

    .line 12
    return v0
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p2, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    aget p2, p2, v2

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    move v3, v0

    .line 12
    move v4, v3

    .line 13
    :goto_c
    if-ge v3, v2, :cond_3e

    .line 15
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Landroid/view/View;

    .line 21
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v6

    .line 25
    check-cast v6, Landroidx/appcompat/widget/Toolbar$g;

    .line 27
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 29
    sub-int/2addr v7, v1

    .line 30
    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 32
    sub-int/2addr v1, p2

    .line 33
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    .line 36
    move-result p2

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 40
    move-result v6

    .line 41
    neg-int v7, v7

    .line 42
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    .line 45
    move-result v7

    .line 46
    neg-int v1, v1

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 50
    move-result v1

    .line 51
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 54
    move-result v5

    .line 55
    add-int/2addr v5, p2

    .line 56
    add-int/2addr v5, v6

    .line 57
    add-int/2addr v4, v5

    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 60
    move p2, v1

    .line 61
    move v1, v7

    .line 62
    goto :goto_c

    .line 63
    :cond_3e
    return v4
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p0, :cond_11

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_f

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    :goto_11
    const/4 p1, 0x1

    .line 19
    :goto_12
    return p1
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/widget/Toolbar$g;

    .line 7
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 9
    const/4 v2, 0x0

    .line 10
    aget v3, p3, v2

    .line 12
    sub-int/2addr v1, v3

    .line 13
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result v3

    .line 17
    add-int/2addr v3, p2

    .line 18
    neg-int p2, v1

    .line 19
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result p2

    .line 23
    aput p2, p3, v2

    .line 25
    invoke-direct {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    .line 28
    move-result p2

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 32
    move-result p3

    .line 33
    add-int p4, v3, p3

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 38
    move-result v1

    .line 39
    add-int/2addr v1, p2

    .line 40
    invoke-virtual {p1, v3, p2, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 43
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 45
    add-int/2addr p3, p1

    .line 46
    add-int/2addr p3, v3

    .line 47
    return p3
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/widget/Toolbar$g;

    .line 7
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 9
    const/4 v2, 0x1

    .line 10
    aget v3, p3, v2

    .line 12
    sub-int/2addr v1, v3

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result v4

    .line 18
    sub-int/2addr p2, v4

    .line 19
    neg-int v1, v1

    .line 20
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 23
    move-result v1

    .line 24
    aput v1, p3, v2

    .line 26
    invoke-direct {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    .line 29
    move-result p3

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 33
    move-result p4

    .line 34
    sub-int v1, p2, p4

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 39
    move-result v2

    .line 40
    add-int/2addr v2, p3

    .line 41
    invoke-virtual {p1, v1, p3, p2, v2}, Landroid/view/View;->layout(IIII)V

    .line 44
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 46
    add-int/2addr p4, p1

    .line 47
    sub-int/2addr p2, p4

    .line 48
    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .registers 14

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 9
    const/4 v2, 0x0

    .line 10
    aget v3, p6, v2

    .line 12
    sub-int/2addr v1, v3

    .line 13
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 15
    const/4 v4, 0x1

    .line 16
    aget v5, p6, v4

    .line 18
    sub-int/2addr v3, v5

    .line 19
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result v5

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v6

    .line 27
    add-int/2addr v6, v5

    .line 28
    neg-int v1, v1

    .line 29
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result v1

    .line 33
    aput v1, p6, v2

    .line 35
    neg-int v1, v3

    .line 36
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 39
    move-result v1

    .line 40
    aput v1, p6, v4

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 45
    move-result p6

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 49
    move-result v1

    .line 50
    add-int/2addr v1, p6

    .line 51
    add-int/2addr v1, v6

    .line 52
    add-int/2addr v1, p3

    .line 53
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 55
    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 58
    move-result p2

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 62
    move-result p3

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 66
    move-result p6

    .line 67
    add-int/2addr p6, p3

    .line 68
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 70
    add-int/2addr p6, p3

    .line 71
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 73
    add-int/2addr p6, p3

    .line 74
    add-int/2addr p6, p5

    .line 75
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 77
    invoke-static {p4, p6, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 80
    move-result p3

    .line 81
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 87
    move-result p1

    .line 88
    add-int/2addr p1, v6

    .line 89
    return p1
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .registers 10

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
    add-int/2addr v2, p3

    .line 23
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 25
    invoke-static {p2, v2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 28
    move-result p2

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 32
    move-result p3

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 36
    move-result v1

    .line 37
    add-int/2addr v1, p3

    .line 38
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 40
    add-int/2addr v1, p3

    .line 41
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 43
    add-int/2addr v1, p3

    .line 44
    add-int/2addr v1, p5

    .line 45
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 47
    invoke-static {p4, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 50
    move-result p3

    .line 51
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 54
    move-result p4

    .line 55
    const/high16 p5, 0x40000000  # 2.0f

    .line 57
    if-eq p4, p5, :cond_4a

    .line 59
    if-ltz p6, :cond_4a

    .line 61
    if-eqz p4, :cond_46

    .line 63
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 66
    move-result p3

    .line 67
    invoke-static {p3, p6}, Ljava/lang/Math;->min(II)I

    .line 70
    move-result p6

    .line 71
    :cond_46
    invoke-static {p6, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 74
    move-result p3

    .line 75
    :cond_4a
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 78
    return-void
.end method

.method private onCreateMenu()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentMenuItems()Ljava/util/ArrayList;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Lm0/m;

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    .line 14
    move-result-object v3

    .line 15
    iget-object v2, v2, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v2

    .line 21
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_24

    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lm0/o;

    .line 33
    invoke-interface {v4, v0, v3}, Lm0/o;->c(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 36
    goto :goto_14

    .line 37
    :cond_24
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentMenuItems()Ljava/util/ArrayList;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 44
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mProvidedMenuItems:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method private postShowOverflowMenu()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method private shouldCollapse()Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapsible:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    move v2, v1

    .line 12
    :goto_b
    if-ge v2, v0, :cond_27

    .line 14
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object v3

    .line 18
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_24

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 27
    move-result v4

    .line 28
    if-lez v4, :cond_24

    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 33
    move-result v3

    .line 34
    if-lez v3, :cond_24

    .line 36
    return v1

    .line 37
    :cond_24
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_b

    .line 40
    :cond_27
    const/4 v0, 0x1

    .line 41
    return v0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .registers 3

    .line 1
    if-eqz p1, :cond_12

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v0

    .line 7
    if-ne v0, p0, :cond_12

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 12
    move-result p1

    .line 13
    const/16 v0, 0x8

    .line 15
    if-eq p1, v0, :cond_12

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    :goto_13
    return p1
.end method


# virtual methods
.method public addChildrenForExpandedActionView()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

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
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/view/View;

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 24
    goto :goto_8

    .line 25
    :cond_18
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 30
    return-void
.end method

.method public addMenuProvider(Lm0/o;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Lm0/m;

    .line 2
    iget-object v1, v0, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, v0, Lm0/m;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public addMenuProvider(Lm0/o;Landroidx/lifecycle/m;)V
    .registers 4

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Lm0/m;

    invoke-virtual {v0, p1, p2}, Lm0/m;->a(Lm0/o;Landroidx/lifecycle/m;)V

    return-void
.end method

.method public addMenuProvider(Lm0/o;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$State;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Lm0/m;

    invoke-virtual {v0, p1, p2, p3}, Lm0/m;->b(Lm0/o;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public canShowOverflowMenu()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_10

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 9
    if-eqz v0, :cond_10

    .line 11
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView;->d:Z

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 7
    instance-of p1, p1, Landroidx/appcompat/widget/Toolbar$g;

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public collapseActionView()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$f;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$f;->b:Landroidx/appcompat/view/menu/j;

    .line 9
    :goto_8
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/j;->collapseActionView()Z

    .line 14
    :cond_d
    return-void
.end method

.method public dismissPopupMenus()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 3
    if-eqz v0, :cond_1a

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 7
    if-eqz v0, :cond_1a

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->b()Z

    .line 12
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 14
    if-eqz v0, :cond_1a

    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->b()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1a

    .line 22
    iget-object v0, v0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    .line 24
    invoke-interface {v0}, Landroidx/appcompat/view/menu/q;->dismiss()V

    .line 27
    :cond_1a
    return-void
.end method

.method public ensureCollapseButtonView()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 3
    if-nez v0, :cond_3e

    .line 5
    new-instance v0, Landroidx/appcompat/widget/k;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    sget v3, Lh/a;->toolbarNavigationButtonStyle:I

    .line 14
    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 19
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 26
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$g;

    .line 34
    move-result-object v0

    .line 35
    const v1, 0x800003

    .line 38
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    .line 40
    and-int/lit8 v2, v2, 0x70

    .line 42
    or-int/2addr v1, v2

    .line 43
    iput v1, v0, Landroidx/appcompat/app/a$a;->a:I

    .line 45
    const/4 v1, 0x2

    .line 46
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$g;->b:I

    .line 48
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 50
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 55
    new-instance v1, Landroidx/appcompat/widget/Toolbar$d;

    .line 57
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$d;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_3e
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$g;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$g;
    .registers 2

    .line 2
    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;

    invoke-direct {v0}, Landroidx/appcompat/widget/Toolbar$g;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$g;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$g;
    .registers 4

    .line 3
    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$g;
    .registers 3

    .line 4
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$g;

    if-eqz v0, :cond_c

    .line 5
    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;

    check-cast p1, Landroidx/appcompat/widget/Toolbar$g;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroidx/appcompat/widget/Toolbar$g;)V

    return-object v0

    .line 6
    :cond_c
    instance-of v0, p1, Landroidx/appcompat/app/a$a;

    if-eqz v0, :cond_18

    .line 7
    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;

    check-cast p1, Landroidx/appcompat/app/a$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroidx/appcompat/app/a$a;)V

    return-object v0

    .line 8
    :cond_18
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_24

    .line 9
    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 10
    :cond_24
    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCollapseContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getCollapseIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getContentInsetEnd()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/p0;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-boolean v1, v0, Landroidx/appcompat/widget/p0;->g:Z

    .line 7
    if-eqz v1, :cond_b

    .line 9
    iget v0, v0, Landroidx/appcompat/widget/p0;->a:I

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    iget v0, v0, Landroidx/appcompat/widget/p0;->b:I

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public getContentInsetEndWithActions()I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 3
    const/high16 v1, -0x80000000

    .line 5
    if-eq v0, v1, :cond_7

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    .line 11
    move-result v0

    .line 12
    :goto_b
    return v0
.end method

.method public getContentInsetLeft()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/p0;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget v0, v0, Landroidx/appcompat/widget/p0;->a:I

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return v0
.end method

.method public getContentInsetRight()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/p0;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget v0, v0, Landroidx/appcompat/widget/p0;->b:I

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return v0
.end method

.method public getContentInsetStart()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/p0;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-boolean v1, v0, Landroidx/appcompat/widget/p0;->g:Z

    .line 7
    if-eqz v1, :cond_b

    .line 9
    iget v0, v0, Landroidx/appcompat/widget/p0;->b:I

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    iget v0, v0, Landroidx/appcompat/widget/p0;->a:I

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public getContentInsetStartWithNavigation()I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 3
    const/high16 v1, -0x80000000

    .line 5
    if-eq v0, v1, :cond_7

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    .line 11
    move-result v0

    .line 12
    :goto_b
    return v0
.end method

.method public getCurrentContentInsetEnd()I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_11

    .line 6
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    .line 8
    if-eqz v0, :cond_11

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->hasVisibleItems()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_11

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v0, v1

    .line 19
    :goto_12
    if-eqz v0, :cond_23

    .line 21
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    .line 24
    move-result v0

    .line 25
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 27
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result v1

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 34
    move-result v0

    .line 35
    goto :goto_27

    .line 36
    :cond_23
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    .line 39
    move-result v0

    .line 40
    :goto_27
    return v0
.end method

.method public getCurrentContentInsetLeft()I
    .registers 3

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_e

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    .line 13
    move-result v0

    .line 14
    goto :goto_12

    .line 15
    :cond_e
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    .line 18
    move-result v0

    .line 19
    :goto_12
    return v0
.end method

.method public getCurrentContentInsetRight()I
    .registers 3

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_e

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    .line 13
    move-result v0

    .line 14
    goto :goto_12

    .line 15
    :cond_e
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    .line 18
    move-result v0

    .line 19
    :goto_12
    return v0
.end method

.method public getCurrentContentInsetStart()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_16

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    .line 10
    move-result v0

    .line 11
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result v1

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 21
    move-result v0

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    .line 26
    move-result v0

    .line 27
    :goto_1a
    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getNavButtonView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 3
    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getOuterActionMenuPresenter()Landroidx/appcompat/widget/ActionMenuPresenter;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3
    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method getPopupContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public getPopupTheme()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    .line 3
    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public final getSubtitleTextView()Landroid/widget/TextView;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getTitleMarginBottom()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 3
    return v0
.end method

.method public getTitleMarginEnd()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 3
    return v0
.end method

.method public getTitleMarginStart()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 3
    return v0
.end method

.method public getTitleMarginTop()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 3
    return v0
.end method

.method public final getTitleTextView()Landroid/widget/TextView;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 3
    return-object v0
.end method

.method public getWrapper()Landroidx/appcompat/widget/d0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/b1;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/appcompat/widget/b1;

    .line 7
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/b1;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/b1;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/b1;

    .line 14
    return-object v0
.end method

.method public hasExpandedActionView()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$f;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$f;->b:Landroidx/appcompat/view/menu/j;

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_16

    .line 7
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 9
    if-eqz v0, :cond_12

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->b()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    move v0, v1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v0, v2

    .line 20
    :goto_13
    if-eqz v0, :cond_16

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v1, v2

    .line 24
    :goto_17
    return v1
.end method

.method public inflateMenu(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    return-void
.end method

.method public invalidateMenu()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mProvidedMenuItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1e

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/view/MenuItem;

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    .line 26
    move-result v1

    .line 27
    invoke-interface {v2, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 30
    goto :goto_6

    .line 31
    :cond_1e
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->onCreateMenu()V

    .line 34
    return-void
.end method

.method public isBackInvokedCallbackEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedCallbackEnabled:Z

    .line 3
    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_20

    .line 7
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 9
    if-eqz v0, :cond_1c

    .line 11
    iget-object v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    .line 13
    if-nez v3, :cond_17

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->c()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_15

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    move v0, v2

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    :goto_17
    move v0, v1

    .line 25
    :goto_18
    if-eqz v0, :cond_1c

    .line 27
    move v0, v1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v0, v2

    .line 30
    :goto_1d
    if-eqz v0, :cond_20

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v1, v2

    .line 34
    :goto_21
    return v1
.end method

.method public isOverflowMenuShowing()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_16

    .line 7
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 9
    if-eqz v0, :cond_12

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->c()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    move v0, v1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v0, v2

    .line 20
    :goto_13
    if-eqz v0, :cond_16

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v1, v2

    .line 24
    :goto_17
    return v1
.end method

.method public isTitleTruncated()Z
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    return v1

    .line 14
    :cond_d
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 17
    move-result v2

    .line 18
    move v3, v1

    .line 19
    :goto_12
    if-ge v3, v2, :cond_1f

    .line 21
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 24
    move-result v4

    .line 25
    if-lez v4, :cond_1c

    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_12

    .line 32
    :cond_1f
    return v1
.end method

.method public onAttachedToWindow()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->updateBackInvokedCallbackState()V

    .line 7
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->updateBackInvokedCallbackState()V

    .line 12
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x9

    .line 8
    if-ne v0, v2, :cond_b

    .line 10
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 12
    :cond_b
    iget-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 14
    const/4 v4, 0x1

    .line 15
    if-nez v3, :cond_1a

    .line 17
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 20
    move-result p1

    .line 21
    if-ne v0, v2, :cond_1a

    .line 23
    if-nez p1, :cond_1a

    .line 25
    iput-boolean v4, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 27
    :cond_1a
    const/16 p1, 0xa

    .line 29
    if-eq v0, p1, :cond_21

    .line 31
    const/4 p1, 0x3

    .line 32
    if-ne v0, p1, :cond_23

    .line 34
    :cond_21
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 36
    :cond_23
    return v4
.end method

.method public onLayout(ZIIII)V
    .registers 25

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-static/range {p0 .. p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    .line 3
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int v10, v4, v7

    .line 9
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    .line 10
    aput v3, v11, v2

    aput v3, v11, v3

    .line 11
    invoke-static/range {p0 .. p0}, Lm0/g0$d;->d(Landroid/view/View;)I

    move-result v12

    if-ltz v12, :cond_3c

    sub-int v13, p5, p3

    .line 12
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_3d

    :cond_3c
    move v12, v3

    .line 13
    :goto_3d
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v13}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_57

    if-eqz v1, :cond_50

    .line 14
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    move v14, v13

    move v13, v6

    goto :goto_59

    .line 15
    :cond_50
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v6, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_58

    :cond_57
    move v13, v6

    :goto_58
    move v14, v10

    .line 16
    :goto_59
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_70

    if-eqz v1, :cond_6a

    .line 17
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v14, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_70

    .line 18
    :cond_6a
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v13, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    .line 19
    :cond_70
    :goto_70
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_87

    if-eqz v1, :cond_81

    .line 20
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15, v13, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_87

    .line 21
    :cond_81
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15, v14, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v14

    .line 22
    :cond_87
    :goto_87
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v15

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v16

    sub-int v2, v15, v13

    .line 24
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v11, v3

    sub-int v2, v10, v14

    sub-int v2, v16, v2

    .line 25
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v17, 0x1

    aput v2, v11, v17

    .line 26
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v10, v10, v16

    .line 27
    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 28
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v13}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_c4

    if-eqz v1, :cond_be

    .line 29
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_c4

    .line 30
    :cond_be
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v13, v2, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v2

    .line 31
    :cond_c4
    :goto_c4
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v13}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_db

    if-eqz v1, :cond_d5

    .line 32
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_db

    .line 33
    :cond_d5
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v13, v2, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v2

    .line 34
    :cond_db
    :goto_db
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    .line 35
    iget-object v14, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v14}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    if-eqz v13, :cond_102

    .line 36
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/widget/Toolbar$g;

    .line 37
    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p4, v7

    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v3

    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v3

    const/4 v3, 0x0

    add-int/2addr v7, v3

    goto :goto_105

    :cond_102
    move/from16 p4, v7

    const/4 v7, 0x0

    :goto_105
    if-eqz v14, :cond_11f

    .line 38
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar$g;

    .line 39
    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v4

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v15

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v3

    add-int/2addr v7, v4

    goto :goto_121

    :cond_11f
    move/from16 v16, v4

    :goto_121
    if-nez v13, :cond_12d

    if-eqz v14, :cond_126

    goto :goto_12d

    :cond_126
    move/from16 v18, v6

    move/from16 p3, v12

    :goto_12a
    const/4 v1, 0x0

    goto/16 :goto_292

    :cond_12d
    :goto_12d
    if-eqz v13, :cond_132

    .line 40
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto :goto_134

    :cond_132
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    :goto_134
    if-eqz v14, :cond_139

    .line 41
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    goto :goto_13b

    :cond_139
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 42
    :goto_13b
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar$g;

    .line 43
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar$g;

    if-eqz v13, :cond_151

    .line 44
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    if-gtz v15, :cond_15b

    :cond_151
    if-eqz v14, :cond_15e

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 45
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    if-lez v15, :cond_15e

    :cond_15b
    const/16 v17, 0x1

    goto :goto_160

    :cond_15e
    const/16 v17, 0x0

    .line 46
    :goto_160
    iget v15, v0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    and-int/lit8 v15, v15, 0x70

    move/from16 v18, v6

    const/16 v6, 0x30

    if-eq v15, v6, :cond_1a8

    const/16 v6, 0x50

    if-eq v15, v6, :cond_19a

    sub-int v6, v5, v8

    sub-int/2addr v6, v9

    sub-int/2addr v6, v7

    .line 47
    div-int/lit8 v6, v6, 0x2

    .line 48
    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p3, v12

    iget v12, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    move/from16 p5, v2

    add-int v2, v15, v12

    if-ge v6, v2, :cond_183

    add-int v6, v15, v12

    goto :goto_198

    :cond_183
    sub-int/2addr v5, v9

    sub-int/2addr v5, v7

    sub-int/2addr v5, v6

    sub-int/2addr v5, v8

    .line 49
    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v2, v3

    if-ge v5, v2, :cond_198

    .line 50
    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v5

    sub-int/2addr v6, v2

    const/4 v2, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_198
    :goto_198
    add-int/2addr v8, v6

    goto :goto_1b7

    :cond_19a
    move/from16 p5, v2

    move/from16 p3, v12

    sub-int/2addr v5, v9

    .line 51
    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v2

    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    sub-int/2addr v5, v2

    sub-int v8, v5, v7

    goto :goto_1b7

    :cond_1a8
    move/from16 p5, v2

    move/from16 p3, v12

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    add-int v8, v2, v3

    :goto_1b7
    if-eqz v1, :cond_229

    if-eqz v17, :cond_1be

    .line 53
    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_1bf

    :cond_1be
    const/4 v1, 0x0

    :goto_1bf
    const/4 v2, 0x1

    aget v3, v11, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    .line 54
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v10, v4

    neg-int v1, v1

    .line 55
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v2

    if-eqz v13, :cond_1f6

    .line 56
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$g;

    .line 57
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v10, v2

    .line 58
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    .line 59
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v8, v10, v3}, Landroid/view/View;->layout(IIII)V

    .line 60
    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    sub-int/2addr v2, v4

    .line 61
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v3, v1

    goto :goto_1f7

    :cond_1f6
    move v2, v10

    :goto_1f7
    if-eqz v14, :cond_21d

    .line 62
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$g;

    .line 63
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v1

    .line 64
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    .line 65
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    .line 66
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v8, v10, v3}, Landroid/view/View;->layout(IIII)V

    .line 67
    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    sub-int v1, v10, v1

    goto :goto_21e

    :cond_21d
    move v1, v10

    :goto_21e
    if-eqz v17, :cond_225

    .line 68
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v10, v1

    :cond_225
    move/from16 v2, p5

    goto/16 :goto_12a

    :cond_229
    if-eqz v17, :cond_22f

    .line 69
    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    const/4 v1, 0x0

    goto :goto_231

    :cond_22f
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_231
    aget v2, v11, v1

    sub-int/2addr v3, v2

    .line 70
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v2, v2, p5

    neg-int v3, v3

    .line 71
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v11, v1

    if-eqz v13, :cond_266

    .line 72
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar$g;

    .line 73
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 74
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    .line 75
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2, v8, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 76
    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    add-int/2addr v4, v6

    .line 77
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v5, v3

    goto :goto_267

    :cond_266
    move v4, v2

    :goto_267
    if-eqz v14, :cond_28b

    .line 78
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar$g;

    .line 79
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v3

    .line 80
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 81
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    .line 82
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2, v8, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 83
    iget v5, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    add-int/2addr v3, v5

    goto :goto_28c

    :cond_28b
    move v3, v2

    :goto_28c
    if-eqz v17, :cond_292

    .line 84
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 85
    :cond_292
    :goto_292
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 86
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_29f
    if-ge v4, v3, :cond_2b2

    .line 87
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move/from16 v12, p3

    invoke-direct {v0, v5, v2, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_29f

    :cond_2b2
    move/from16 v12, p3

    .line 88
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 89
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_2c1
    if-ge v4, v3, :cond_2d2

    .line 90
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {v0, v5, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c1

    .line 91
    :cond_2d2
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 92
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v11}, Landroidx/appcompat/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v3

    sub-int v4, v16, v18

    sub-int v4, v4, p4

    .line 93
    div-int/lit8 v4, v4, 0x2

    add-int v4, v4, v18

    .line 94
    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    if-ge v4, v2, :cond_2ed

    goto :goto_2f4

    :cond_2ed
    if-le v3, v10, :cond_2f3

    sub-int/2addr v3, v10

    sub-int v2, v4, v3

    goto :goto_2f4

    :cond_2f3
    move v2, v4

    .line 95
    :goto_2f4
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2fa
    if-ge v1, v3, :cond_30b

    .line 96
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {v0, v4, v2, v11, v12}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2fa

    .line 97
    :cond_30b
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 19

    .line 1
    move-object/from16 v7, p0

    .line 3
    iget-object v8, v7, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    .line 5
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 8
    move-result v9

    .line 9
    const/4 v10, 0x0

    .line 10
    xor-int/lit8 v11, v9, 0x1

    .line 12
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 14
    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_4d

    .line 20
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 22
    const/4 v5, 0x0

    .line 23
    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    .line 25
    const/4 v3, 0x0

    .line 26
    move-object/from16 v0, p0

    .line 28
    move/from16 v2, p1

    .line 30
    move/from16 v4, p2

    .line 32
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 35
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 40
    move-result v0

    .line 41
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 43
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 53
    move-result v1

    .line 54
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 56
    invoke-direct {v7, v2}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    .line 59
    move-result v2

    .line 60
    add-int/2addr v1, v2

    .line 61
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 64
    move-result v1

    .line 65
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 67
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    .line 70
    move-result v2

    .line 71
    invoke-static {v10, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 74
    move-result v2

    .line 75
    move v12, v1

    .line 76
    move v13, v2

    .line 77
    goto :goto_50

    .line 78
    :cond_4d
    move v0, v10

    .line 79
    move v12, v0

    .line 80
    move v13, v12

    .line 81
    :goto_50
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 83
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_8f

    .line 89
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 91
    const/4 v5, 0x0

    .line 92
    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    .line 94
    const/4 v3, 0x0

    .line 95
    move-object/from16 v0, p0

    .line 97
    move/from16 v2, p1

    .line 99
    move/from16 v4, p2

    .line 101
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 104
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 109
    move-result v0

    .line 110
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 112
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    .line 115
    move-result v1

    .line 116
    add-int/2addr v0, v1

    .line 117
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 119
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 122
    move-result v1

    .line 123
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 125
    invoke-direct {v7, v2}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    .line 128
    move-result v2

    .line 129
    add-int/2addr v1, v2

    .line 130
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    .line 133
    move-result v12

    .line 134
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 136
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    .line 139
    move-result v1

    .line 140
    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 143
    move-result v13

    .line 144
    :cond_8f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    .line 147
    move-result v1

    .line 148
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 151
    move-result v2

    .line 152
    add-int/lit8 v14, v2, 0x0

    .line 154
    sub-int/2addr v1, v0

    .line 155
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 158
    move-result v0

    .line 159
    aput v0, v8, v9

    .line 161
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 163
    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_e0

    .line 169
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 171
    const/4 v5, 0x0

    .line 172
    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    .line 174
    move-object/from16 v0, p0

    .line 176
    move/from16 v2, p1

    .line 178
    move v3, v14

    .line 179
    move/from16 v4, p2

    .line 181
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 184
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 189
    move-result v0

    .line 190
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 192
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    .line 195
    move-result v1

    .line 196
    add-int/2addr v0, v1

    .line 197
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 199
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 202
    move-result v1

    .line 203
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 205
    invoke-direct {v7, v2}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    .line 208
    move-result v2

    .line 209
    add-int/2addr v1, v2

    .line 210
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    .line 213
    move-result v12

    .line 214
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 216
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    .line 219
    move-result v1

    .line 220
    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 223
    move-result v13

    .line 224
    goto :goto_e1

    .line 225
    :cond_e0
    move v0, v10

    .line 226
    :goto_e1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    .line 229
    move-result v1

    .line 230
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 233
    move-result v2

    .line 234
    add-int v9, v2, v14

    .line 236
    sub-int/2addr v1, v0

    .line 237
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 240
    move-result v0

    .line 241
    aput v0, v8, v11

    .line 243
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 245
    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_125

    .line 251
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 253
    const/4 v5, 0x0

    .line 254
    move-object/from16 v0, p0

    .line 256
    move/from16 v2, p1

    .line 258
    move v3, v9

    .line 259
    move/from16 v4, p2

    .line 261
    move-object v6, v8

    .line 262
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 265
    move-result v0

    .line 266
    add-int/2addr v9, v0

    .line 267
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 272
    move-result v0

    .line 273
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 275
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    .line 278
    move-result v1

    .line 279
    add-int/2addr v0, v1

    .line 280
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    .line 283
    move-result v12

    .line 284
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 286
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    .line 289
    move-result v0

    .line 290
    invoke-static {v13, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 293
    move-result v13

    .line 294
    :cond_125
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 296
    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_158

    .line 302
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 304
    const/4 v5, 0x0

    .line 305
    move-object/from16 v0, p0

    .line 307
    move/from16 v2, p1

    .line 309
    move v3, v9

    .line 310
    move/from16 v4, p2

    .line 312
    move-object v6, v8

    .line 313
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 316
    move-result v0

    .line 317
    add-int/2addr v9, v0

    .line 318
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 320
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 323
    move-result v0

    .line 324
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 326
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    .line 329
    move-result v1

    .line 330
    add-int/2addr v0, v1

    .line 331
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    .line 334
    move-result v12

    .line 335
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 337
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    .line 340
    move-result v0

    .line 341
    invoke-static {v13, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 344
    move-result v13

    .line 345
    :cond_158
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 348
    move-result v11

    .line 349
    move v14, v10

    .line 350
    :goto_15d
    if-ge v14, v11, :cond_19d

    .line 352
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 355
    move-result-object v15

    .line 356
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 359
    move-result-object v0

    .line 360
    check-cast v0, Landroidx/appcompat/widget/Toolbar$g;

    .line 362
    iget v0, v0, Landroidx/appcompat/widget/Toolbar$g;->b:I

    .line 364
    if-nez v0, :cond_19a

    .line 366
    invoke-direct {v7, v15}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 369
    move-result v0

    .line 370
    if-nez v0, :cond_174

    .line 372
    goto :goto_19a

    .line 373
    :cond_174
    const/4 v5, 0x0

    .line 374
    move-object/from16 v0, p0

    .line 376
    move-object v1, v15

    .line 377
    move/from16 v2, p1

    .line 379
    move v3, v9

    .line 380
    move/from16 v4, p2

    .line 382
    move-object v6, v8

    .line 383
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 386
    move-result v0

    .line 387
    add-int/2addr v9, v0

    .line 388
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    .line 391
    move-result v0

    .line 392
    invoke-direct {v7, v15}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    .line 395
    move-result v1

    .line 396
    add-int/2addr v0, v1

    .line 397
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    .line 400
    move-result v0

    .line 401
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    .line 404
    move-result v1

    .line 405
    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 408
    move-result v1

    .line 409
    move v12, v0

    .line 410
    move v13, v1

    .line 411
    :cond_19a
    :goto_19a
    add-int/lit8 v14, v14, 0x1

    .line 413
    goto :goto_15d

    .line 414
    :cond_19d
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 416
    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 418
    add-int v11, v0, v1

    .line 420
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 422
    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 424
    add-int v14, v0, v1

    .line 426
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 428
    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 431
    move-result v0

    .line 432
    if-eqz v0, :cond_1e8

    .line 434
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 436
    add-int v3, v9, v14

    .line 438
    move-object/from16 v0, p0

    .line 440
    move/from16 v2, p1

    .line 442
    move/from16 v4, p2

    .line 444
    move v5, v11

    .line 445
    move-object v6, v8

    .line 446
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 449
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 451
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 454
    move-result v0

    .line 455
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 457
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    .line 460
    move-result v1

    .line 461
    add-int/2addr v0, v1

    .line 462
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 464
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 467
    move-result v1

    .line 468
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 470
    invoke-direct {v7, v2}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    .line 473
    move-result v2

    .line 474
    add-int/2addr v1, v2

    .line 475
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 477
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    .line 480
    move-result v2

    .line 481
    invoke-static {v13, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 484
    move-result v13

    .line 485
    move v15, v1

    .line 486
    move v6, v13

    .line 487
    move v13, v0

    .line 488
    goto :goto_1eb

    .line 489
    :cond_1e8
    move v15, v10

    .line 490
    move v6, v13

    .line 491
    move v13, v15

    .line 492
    :goto_1eb
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 494
    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 497
    move-result v0

    .line 498
    if-eqz v0, :cond_222

    .line 500
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 502
    add-int v3, v9, v14

    .line 504
    add-int v5, v15, v11

    .line 506
    move-object/from16 v0, p0

    .line 508
    move/from16 v2, p1

    .line 510
    move/from16 v4, p2

    .line 512
    move v11, v6

    .line 513
    move-object v6, v8

    .line 514
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 517
    move-result v0

    .line 518
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    .line 521
    move-result v13

    .line 522
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 524
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 527
    move-result v0

    .line 528
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 530
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    .line 533
    move-result v1

    .line 534
    add-int/2addr v0, v1

    .line 535
    add-int/2addr v15, v0

    .line 536
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 538
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    .line 541
    move-result v0

    .line 542
    invoke-static {v11, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 545
    move-result v6

    .line 546
    goto :goto_223

    .line 547
    :cond_222
    move v11, v6

    .line 548
    :goto_223
    add-int/2addr v9, v13

    .line 549
    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    .line 552
    move-result v0

    .line 553
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 556
    move-result v1

    .line 557
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 560
    move-result v2

    .line 561
    add-int/2addr v2, v1

    .line 562
    add-int/2addr v2, v9

    .line 563
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 566
    move-result v1

    .line 567
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 570
    move-result v3

    .line 571
    add-int/2addr v3, v1

    .line 572
    add-int/2addr v3, v0

    .line 573
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 576
    move-result v0

    .line 577
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 580
    move-result v0

    .line 581
    const/high16 v1, -0x1000000

    .line 583
    and-int/2addr v1, v6

    .line 584
    move/from16 v2, p1

    .line 586
    invoke-static {v0, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 589
    move-result v0

    .line 590
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 593
    move-result v1

    .line 594
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 597
    move-result v1

    .line 598
    shl-int/lit8 v2, v6, 0x10

    .line 600
    move/from16 v3, p2

    .line 602
    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 605
    move-result v1

    .line 606
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->shouldCollapse()Z

    .line 609
    move-result v2

    .line 610
    if-eqz v2, :cond_264

    .line 612
    goto :goto_265

    .line 613
    :cond_264
    move v10, v1

    .line 614
    :goto_265
    invoke-virtual {v7, v0, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 617
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$SavedState;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    check-cast p1, Landroidx/appcompat/widget/Toolbar$SavedState;

    .line 11
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 20
    if-eqz v0, :cond_18

    .line 22
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    :goto_19
    iget v1, p1, Landroidx/appcompat/widget/Toolbar$SavedState;->a:I

    .line 28
    if-eqz v1, :cond_2c

    .line 30
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$f;

    .line 32
    if-eqz v2, :cond_2c

    .line 34
    if-eqz v0, :cond_2c

    .line 36
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2c

    .line 42
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 45
    :cond_2c
    iget-boolean p1, p1, Landroidx/appcompat/widget/Toolbar$SavedState;->b:Z

    .line 47
    if-eqz p1, :cond_33

    .line 49
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->postShowOverflowMenu()V

    .line 52
    :cond_33
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 4
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/p0;

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne p1, v1, :cond_c

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v1, 0x0

    .line 14
    :goto_d
    iget-boolean p1, v0, Landroidx/appcompat/widget/p0;->g:Z

    .line 16
    if-ne v1, p1, :cond_12

    .line 18
    goto :goto_4a

    .line 19
    :cond_12
    iput-boolean v1, v0, Landroidx/appcompat/widget/p0;->g:Z

    .line 21
    iget-boolean p1, v0, Landroidx/appcompat/widget/p0;->h:Z

    .line 23
    if-eqz p1, :cond_42

    .line 25
    const/high16 p1, -0x80000000

    .line 27
    if-eqz v1, :cond_2f

    .line 29
    iget v1, v0, Landroidx/appcompat/widget/p0;->d:I

    .line 31
    if-eq v1, p1, :cond_21

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    iget v1, v0, Landroidx/appcompat/widget/p0;->e:I

    .line 36
    :goto_23
    iput v1, v0, Landroidx/appcompat/widget/p0;->a:I

    .line 38
    iget v1, v0, Landroidx/appcompat/widget/p0;->c:I

    .line 40
    if-eq v1, p1, :cond_2a

    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    iget v1, v0, Landroidx/appcompat/widget/p0;->f:I

    .line 45
    :goto_2c
    iput v1, v0, Landroidx/appcompat/widget/p0;->b:I

    .line 47
    goto :goto_4a

    .line 48
    :cond_2f
    iget v1, v0, Landroidx/appcompat/widget/p0;->c:I

    .line 50
    if-eq v1, p1, :cond_34

    .line 52
    goto :goto_36

    .line 53
    :cond_34
    iget v1, v0, Landroidx/appcompat/widget/p0;->e:I

    .line 55
    :goto_36
    iput v1, v0, Landroidx/appcompat/widget/p0;->a:I

    .line 57
    iget v1, v0, Landroidx/appcompat/widget/p0;->d:I

    .line 59
    if-eq v1, p1, :cond_3d

    .line 61
    goto :goto_3f

    .line 62
    :cond_3d
    iget v1, v0, Landroidx/appcompat/widget/p0;->f:I

    .line 64
    :goto_3f
    iput v1, v0, Landroidx/appcompat/widget/p0;->b:I

    .line 66
    goto :goto_4a

    .line 67
    :cond_42
    iget p1, v0, Landroidx/appcompat/widget/p0;->e:I

    .line 69
    iput p1, v0, Landroidx/appcompat/widget/p0;->a:I

    .line 71
    iget p1, v0, Landroidx/appcompat/widget/p0;->f:I

    .line 73
    iput p1, v0, Landroidx/appcompat/widget/p0;->b:I

    .line 75
    :goto_4a
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    new-instance v0, Landroidx/appcompat/widget/Toolbar$SavedState;

    .line 3
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$f;

    .line 12
    if-eqz v1, :cond_15

    .line 14
    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$f;->b:Landroidx/appcompat/view/menu/j;

    .line 16
    if-eqz v1, :cond_15

    .line 18
    iget v1, v1, Landroidx/appcompat/view/menu/j;->a:I

    .line 20
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->a:I

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    .line 25
    move-result v1

    .line 26
    iput-boolean v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->b:Z

    .line 28
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_9

    .line 8
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 10
    :cond_9
    iget-boolean v2, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez v2, :cond_18

    .line 15
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 18
    move-result p1

    .line 19
    if-nez v0, :cond_18

    .line 21
    if-nez p1, :cond_18

    .line 23
    iput-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 25
    :cond_18
    if-eq v0, v3, :cond_1d

    .line 27
    const/4 p1, 0x3

    .line 28
    if-ne v0, p1, :cond_1f

    .line 30
    :cond_1d
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 32
    :cond_1f
    return v3
.end method

.method public removeChildrenForExpandedActionView()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_6
    if-ltz v0, :cond_26

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/appcompat/widget/Toolbar$g;

    .line 19
    iget v2, v2, Landroidx/appcompat/widget/Toolbar$g;->b:I

    .line 21
    const/4 v3, 0x2

    .line 22
    if-eq v2, v3, :cond_23

    .line 24
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 26
    if-eq v1, v2, :cond_23

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 31
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_23
    add-int/lit8 v0, v0, -0x1

    .line 38
    goto :goto_6

    .line 39
    :cond_26
    return-void
.end method

.method public removeMenuProvider(Lm0/o;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Lm0/m;

    .line 3
    invoke-virtual {v0, p1}, Lm0/m;->c(Lm0/o;)V

    .line 6
    return-void
.end method

.method public setBackInvokedCallbackEnabled(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedCallbackEnabled:Z

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedCallbackEnabled:Z

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->updateBackInvokedCallbackState()V

    .line 10
    :cond_9
    return-void
.end method

.method public setCollapseContentDescription(I)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapseContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCollapseContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V

    .line 4
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_10
    return-void
.end method

.method public setCollapseIcon(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_14

    .line 4
    :cond_b
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz p1, :cond_14

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public setCollapsible(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapsible:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .registers 3

    .line 1
    if-gez p1, :cond_4

    .line 3
    const/high16 p1, -0x80000000

    .line 5
    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 7
    if-eq p1, v0, :cond_13

    .line 9
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_13

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 20
    :cond_13
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .registers 3

    .line 1
    if-gez p1, :cond_4

    .line 3
    const/high16 p1, -0x80000000

    .line 5
    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 7
    if-eq p1, v0, :cond_13

    .line 9
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_13

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 20
    :cond_13
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/p0;

    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Landroidx/appcompat/widget/p0;->h:Z

    .line 9
    const/high16 v1, -0x80000000

    .line 11
    if-eq p1, v1, :cond_10

    .line 13
    iput p1, v0, Landroidx/appcompat/widget/p0;->e:I

    .line 15
    iput p1, v0, Landroidx/appcompat/widget/p0;->a:I

    .line 17
    :cond_10
    if-eq p2, v1, :cond_16

    .line 19
    iput p2, v0, Landroidx/appcompat/widget/p0;->f:I

    .line 21
    iput p2, v0, Landroidx/appcompat/widget/p0;->b:I

    .line 23
    :cond_16
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/p0;

    .line 6
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/p0;->a(II)V

    .line 9
    return-void
.end method

.method public setLogo(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p1, :cond_14

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureLogoView()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_2a

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2a

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_31

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_31
    return-void
.end method

.method public setLogoDescription(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .registers 3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureLogoView()V

    .line 4
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_10
    return-void
.end method

.method public setMenu(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .registers 6

    .line 1
    if-nez p1, :cond_7

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenuView()V

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 13
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/h;

    .line 15
    if-ne v0, p1, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    if-eqz v0, :cond_1d

    .line 20
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 22
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/h;->removeMenuPresenter(Landroidx/appcompat/view/menu/n;)V

    .line 25
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$f;

    .line 27
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/h;->removeMenuPresenter(Landroidx/appcompat/view/menu/n;)V

    .line 30
    :cond_1d
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$f;

    .line 32
    if-nez v0, :cond_28

    .line 34
    new-instance v0, Landroidx/appcompat/widget/Toolbar$f;

    .line 36
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$f;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    .line 39
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$f;

    .line 41
    :cond_28
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p2, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    .line 44
    if-eqz p1, :cond_3a

    .line 46
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/n;Landroid/content/Context;)V

    .line 51
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$f;

    .line 53
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/n;Landroid/content/Context;)V

    .line 58
    goto :goto_4f

    .line 59
    :cond_3a
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/h;)V

    .line 65
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$f;

    .line 67
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/Toolbar$f;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/h;)V

    .line 72
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 75
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$f;

    .line 77
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar$f;->updateMenuView(Z)V

    .line 80
    :goto_4f
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 82
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    .line 84
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 87
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 89
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 92
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 94
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->updateBackInvokedCallbackState()V

    .line 97
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/n$a;Landroidx/appcompat/view/menu/h$a;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/n$a;

    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/h$a;

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 7
    if-eqz v0, :cond_c

    .line 9
    iput-object p1, v0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/view/menu/n$a;

    .line 11
    iput-object p2, v0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/view/menu/h$a;

    .line 13
    :cond_c
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    .line 4
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_15

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/c1;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_15
    return-void
.end method

.method public setNavigationIcon(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p1, :cond_14

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_2a

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2a

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_31

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_31
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$h;

    .line 3
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 6
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 9
    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    .line 3
    if-eq v0, p1, :cond_1a

    .line 5
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    .line 7
    if-nez p1, :cond_f

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 15
    goto :goto_1a

    .line 16
    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 27
    :cond_1a
    :goto_1a
    return-void
.end method

.method public setSubtitle(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 5

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_31

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 8
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_28

    .line 9
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 10
    :cond_28
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_31

    .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 12
    :cond_31
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_56

    .line 14
    :cond_40
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_56

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 15
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    :cond_56
    :goto_56
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5d

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_5d
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .registers 4

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 10
    :cond_9
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextColor:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void
.end method

.method public setTitle(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 5

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_31

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 8
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_28

    .line 9
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 10
    :cond_28
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_31

    .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 12
    :cond_31
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_56

    .line 14
    :cond_40
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_56

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 15
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    :cond_56
    :goto_56
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5d

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_5d
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleMargin(IIII)V
    .registers 5

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 3
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 5
    iput p3, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 7
    iput p4, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 12
    return-void
.end method

.method public setTitleMarginBottom(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setTitleMarginStart(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setTitleMarginTop(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .registers 4

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 10
    :cond_9
    return-void
.end method

.method public setTitleTextColor(I)V
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextColor:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void
.end method

.method public showOverflowMenu()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_16

    .line 7
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 9
    if-eqz v0, :cond_12

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    move v0, v1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v0, v2

    .line 20
    :goto_13
    if-eqz v0, :cond_16

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v1, v2

    .line 24
    :goto_17
    return v1
.end method

.method updateBackInvokedCallbackState()V
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x21

    .line 5
    if-lt v0, v1, :cond_4d

    .line 7
    invoke-static {p0}, Landroidx/appcompat/widget/Toolbar$e;->a(Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->hasExpandedActionView()Z

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_21

    .line 18
    if-eqz v0, :cond_21

    .line 20
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 22
    invoke-static {p0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_21

    .line 28
    iget-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedCallbackEnabled:Z

    .line 30
    if-eqz v1, :cond_21

    .line 32
    move v1, v2

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    const/4 v1, 0x0

    .line 35
    :goto_22
    if-eqz v1, :cond_3f

    .line 37
    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 39
    if-nez v3, :cond_3f

    .line 41
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 43
    if-nez v1, :cond_37

    .line 45
    new-instance v1, Landroidx/appcompat/widget/z0;

    .line 47
    invoke-direct {v1, p0, v2}, Landroidx/appcompat/widget/z0;-><init>(Landroidx/appcompat/widget/Toolbar;I)V

    .line 50
    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar$e;->b(Ljava/lang/Runnable;)Landroid/window/OnBackInvokedCallback;

    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 56
    :cond_37
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 58
    invoke-static {v0, v1}, Landroidx/appcompat/widget/Toolbar$e;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 63
    goto :goto_4d

    .line 64
    :cond_3f
    if-nez v1, :cond_4d

    .line 66
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 68
    if-eqz v0, :cond_4d

    .line 70
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 72
    invoke-static {v0, v1}, Landroidx/appcompat/widget/Toolbar$e;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 78
    :cond_4d
    :goto_4d
    return-void
.end method
