.class public Lmiuix/appcompat/internal/util/ActionBarViewFactory;
.super Ljava/lang/Object;
.source "ActionBarViewFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/widget/AppCompatImageView;Landroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->lambda$generateTitleUpView$0(Landroidx/appcompat/widget/AppCompatImageView;Landroid/content/Context;)V

    return-void
.end method

.method public static generateCollapseTitle(Landroid/content/Context;II)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;-><init>(Landroid/content/Context;II)V

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->init()V

    .line 9
    return-object v0
.end method

.method public static generateExpandTitle(Landroid/content/Context;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    .registers 2

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->init()V

    .line 9
    return-object v0
.end method

.method public static generateTitleUpView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 3
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    sget v1, Lmiuix/appcompat/R$id;->up:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 11
    const/16 v1, 0x8

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v1

    .line 20
    sget v2, Lmiuix/appcompat/R$string;->actionbar_button_up_description:I

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 33
    new-instance v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 35
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 42
    new-instance v2, Landroidx/appcompat/app/s;

    .line 44
    const/16 v3, 0x9

    .line 46
    invoke-direct {v2, v3, v1, p0}, Landroidx/appcompat/app/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 54
    const/4 v2, -0x2

    .line 55
    invoke-direct {p0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    if-eqz p1, :cond_41

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    :cond_41
    return-object v0
.end method

.method private static synthetic lambda$generateTitleUpView$0(Landroidx/appcompat/widget/AppCompatImageView;Landroid/content/Context;)V
    .registers 5

    .line 1
    const v0, 0x101030b

    .line 4
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    const/4 p1, 0x1

    .line 12
    new-array v0, p1, [Landroid/view/View;

    .line 14
    const/4 v1, 0x0

    .line 15
    aput-object p0, v0, v1

    .line 17
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 24
    move-result-object v0

    .line 25
    const/high16 v2, 0x42700000  # 60.0f

    .line 27
    invoke-interface {v0, v2}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 30
    new-array p1, p1, [Landroid/view/View;

    .line 32
    aput-object p0, p1, v1

    .line 34
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 41
    move-result-object p1

    .line 42
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 44
    invoke-interface {p1, v0}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Landroid/view/View;

    .line 54
    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    .line 56
    invoke-interface {p1, p0, v0}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 59
    return-void
.end method
