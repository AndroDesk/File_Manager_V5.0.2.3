.class public Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;
.super Ljava/lang/Object;
.source "MiuixNavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/MiuixNavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimHelper"
.end annotation


# static fields
.field private static final CONTENT_RATIO:Ljava/lang/String; = "contentRatio"

.field private static final CONTENT_SWITCH_ALPHA:Ljava/lang/String; = "contentSwitchAlpha"

.field private static final CONTENT_SWITCH_RATIO:Ljava/lang/String; = "contentSwitchRatio"

.field private static final CONTENT_VIEW_AFTER_SWITCH_RATIO:Ljava/lang/String; = "contentViewAfterSwitchRatio"

.field private static final NAVIGATION_RATIO:Ljava/lang/String; = "navigationRatio"

.field private static final NAVIGATION_SWITCH_ALPHA:Ljava/lang/String; = "navigationSwitchAlpha"

.field private static final NAVIGATION_SWITCH_RATIO:Ljava/lang/String; = "navigationSwitchRatio"


# instance fields
.field private mContentOffset:I

.field private mContentRatio:F

.field private mContentSwitchAlpha:F

.field private mContentSwitchRatio:F

.field private mContentViewAfterSwitchOffset:I

.field private mContentViewAfterSwitchRatio:F

.field private mCurrentContentViewAfterSwitchOffset:I

.field private mInvalidated:Z

.field private mLastRealContentRatio:F

.field private mLastRealNavigationRatio:F

.field private mNavigationHadLayout:Z

.field private mNavigationOffset:I

.field private mNavigationRatio:F

.field private mNavigationSwitchAlpha:F

.field private mNavigationSwitchRatio:F

.field private final mUpdateAnimation:Ljava/lang/Runnable;

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/navigator/MiuixNavigationLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lmiuix/navigator/MiuixNavigationLayout;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationRatio:F

    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentRatio:F

    new-instance v0, Lmiuix/navigator/f;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lmiuix/navigator/f;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mUpdateAnimation:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/navigator/MiuixNavigationLayout;Lmiuix/navigator/MiuixNavigationLayout$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;-><init>(Lmiuix/navigator/MiuixNavigationLayout;)V

    return-void
.end method

.method public static synthetic a(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;ZLmiuix/navigator/SwitchInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->lambda$new$0(ZLmiuix/navigator/SwitchInfo;)V

    return-void
.end method

.method public static synthetic access$2002(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationHadLayout:Z

    return p1
.end method

.method public static synthetic access$2102(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;I)I
    .registers 2

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationOffset:I

    return p1
.end method

.method public static synthetic access$2202(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;I)I
    .registers 2

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentOffset:I

    return p1
.end method

.method public static synthetic access$2400(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;)F
    .registers 1

    iget p0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mLastRealContentRatio:F

    return p0
.end method

.method public static synthetic b(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->lambda$new$1()V

    return-void
.end method

.method private synthetic lambda$new$0(ZLmiuix/navigator/SwitchInfo;)V
    .registers 9

    iget-object v0, p2, Lmiuix/navigator/SwitchInfo;->view:Landroid/view/View;

    sget v1, Lmiuix/navigator/R$id;->miuix_appcompat_navigator_switch_presenter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;

    iget v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    move v1, v3

    goto :goto_16

    :cond_14
    const/16 v1, 0x8

    :goto_16
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->setVisibility(I)V

    iget v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchAlpha:F

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->setAlpha(F)V

    iget-object v0, p2, Lmiuix/navigator/SwitchInfo;->view:Landroid/view/View;

    iget v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentOffset:I

    int-to-float v1, v1

    iget v4, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchRatio:F

    const/high16 v5, 0x3f800000  # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v4, v1

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p2, Lmiuix/navigator/SwitchInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_37

    iget v3, p2, Lmiuix/navigator/SwitchInfo;->offset:I

    :cond_37
    iput v3, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mCurrentContentViewAfterSwitchOffset:I

    iget-object v0, p2, Lmiuix/navigator/SwitchInfo;->presenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    if-eqz v0, :cond_63

    if-eqz p1, :cond_44

    int-to-float p1, v3

    iget v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentViewAfterSwitchRatio:F

    sub-float/2addr v1, v5

    goto :goto_49

    :cond_44
    int-to-float p1, v3

    iget v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentViewAfterSwitchRatio:F

    sub-float v1, v5, v1

    :goto_49
    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->setTranslationX(F)V

    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentViewAfterSwitchRatio:F

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_5e

    cmpl-float p1, p1, v5

    if-nez p1, :cond_58

    goto :goto_5e

    :cond_58
    iget-object p1, p2, Lmiuix/navigator/SwitchInfo;->presenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    invoke-virtual {p1}, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->ignoreHover()V

    goto :goto_63

    :cond_5e
    :goto_5e
    iget-object p1, p2, Lmiuix/navigator/SwitchInfo;->presenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    invoke-virtual {p1, v1}, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->setTranslationXTagForHover(F)V

    :cond_63
    :goto_63
    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mInvalidated:Z

    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/MiuixNavigationLayout;

    if-nez v1, :cond_e

    return-void

    :cond_e
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    move v2, v3

    goto :goto_18

    :cond_17
    move v2, v0

    :goto_18
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1500(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationRatio:F

    mul-float/2addr v4, v5

    invoke-static {v1, v4}, Lmiuix/navigator/MiuixNavigationLayout;->access$2500(Lmiuix/navigator/MiuixNavigationLayout;F)V

    iget v5, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentRatio:F

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    mul-float/2addr v4, v5

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    if-ltz v5, :cond_46

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1500(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v5, v6

    goto :goto_4e

    :cond_46
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v5, v4

    move v4, v7

    :goto_4e
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-lt v8, v9, :cond_66

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$2600(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v8

    iget-boolean v9, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationHadLayout:Z

    if-eqz v9, :cond_62

    cmpg-float v9, v4, v6

    if-gez v9, :cond_62

    move v9, v3

    goto :goto_63

    :cond_62
    move v9, v0

    :goto_63
    invoke-static {v8, v9}, Lf1/x;->q(Landroid/widget/FrameLayout;Z)V

    :cond_66
    iget v8, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mLastRealNavigationRatio:F

    cmpl-float v9, v8, v7

    if-nez v9, :cond_7a

    cmpl-float v9, v4, v7

    if-lez v9, :cond_7a

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$2600(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v3, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationHadLayout:Z

    goto :goto_8a

    :cond_7a
    cmpl-float v8, v8, v7

    if-lez v8, :cond_8a

    cmpl-float v8, v4, v7

    if-nez v8, :cond_8a

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$2600(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_8a
    :goto_8a
    cmpl-float v8, v4, v7

    if-nez v8, :cond_92

    invoke-static {v1, v0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$2700(Lmiuix/navigator/MiuixNavigationLayout;ZZ)V

    goto :goto_b1

    :cond_92
    cmpl-float v8, v4, v6

    if-nez v8, :cond_ae

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$2800(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_a9

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$2800(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_a7

    goto :goto_a9

    :cond_a7
    move v8, v0

    goto :goto_aa

    :cond_a9
    :goto_a9
    move v8, v3

    :goto_aa
    invoke-static {v1, v3, v8}, Lmiuix/navigator/MiuixNavigationLayout;->access$2700(Lmiuix/navigator/MiuixNavigationLayout;ZZ)V

    goto :goto_b1

    :cond_ae
    invoke-static {v1, v3, v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$2700(Lmiuix/navigator/MiuixNavigationLayout;ZZ)V

    :goto_b1
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1500(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    if-eqz v2, :cond_ba

    neg-float v8, v8

    :cond_ba
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$2600(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$400(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$600(Lmiuix/navigator/MiuixNavigationLayout;)Z

    move-result v10

    if-eqz v10, :cond_cd

    move v10, v7

    goto :goto_ce

    :cond_cd
    move v10, v8

    :goto_ce
    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$2900(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->setTranslationX(F)V

    iput v4, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mLastRealNavigationRatio:F

    iput v5, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mLastRealContentRatio:F

    cmpl-float v4, v5, v7

    if-lez v4, :cond_e2

    move v4, v3

    goto :goto_e3

    :cond_e2
    move v4, v0

    :goto_e3
    cmpl-float v8, v5, v6

    if-nez v8, :cond_e8

    goto :goto_e9

    :cond_e8
    move v3, v0

    :goto_e9
    invoke-static {v1, v4, v3}, Lmiuix/navigator/MiuixNavigationLayout;->access$3000(Lmiuix/navigator/MiuixNavigationLayout;ZZ)V

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1000(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3100(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3200(Lmiuix/navigator/MiuixNavigationLayout;)Z

    move-result v8

    const/16 v9, 0x8

    if-eqz v8, :cond_167

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v4

    int-to-float v4, v4

    sub-float v8, v5, v6

    mul-float/2addr v8, v4

    if-eqz v2, :cond_113

    neg-float v8, v8

    :cond_113
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1000(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3300(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3300(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v9, :cond_137

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_138

    :cond_137
    move v4, v0

    :goto_138
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    int-to-float v4, v4

    sub-float/2addr v8, v4

    float-to-int v4, v8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3300(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3100(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3100(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_17b

    :cond_167
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1000(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationX(F)V

    const/4 v5, -0x1

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3100(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_17b
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3400(Lmiuix/navigator/MiuixNavigationLayout;)V

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3500(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1ae

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3500(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    move-result-object v3

    sget v4, Lmiuix/navigator/R$id;->miuix_appcompat_navigator_switch_presenter:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;

    iget v4, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchRatio:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_197

    goto :goto_198

    :cond_197
    move v0, v9

    :goto_198
    invoke-virtual {v3, v0}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->setVisibility(I)V

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchAlpha:F

    invoke-virtual {v3, v0}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->setAlpha(F)V

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3500(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationOffset:I

    int-to-float v3, v3

    iget v4, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchRatio:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, v3

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationX(F)V

    :cond_1ae
    new-instance v0, Lmiuix/navigator/i;

    invoke-direct {v0, p0, v2}, Lmiuix/navigator/i;-><init>(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;Z)V

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3600(Lmiuix/navigator/MiuixNavigationLayout;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$3700(Lmiuix/navigator/MiuixNavigationLayout;Ljava/lang/Iterable;Ll0/a;)V

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$3800(Lmiuix/navigator/MiuixNavigationLayout;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$3700(Lmiuix/navigator/MiuixNavigationLayout;Ljava/lang/Iterable;Ll0/a;)V

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public getContentRatio()F
    .registers 2

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentRatio:F

    return v0
.end method

.method public getContentSwitchAlpha()F
    .registers 2

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchAlpha:F

    return v0
.end method

.method public getContentSwitchRatio()F
    .registers 2

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchRatio:F

    return v0
.end method

.method public getContentViewAfterSwitchRatio()F
    .registers 2

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentViewAfterSwitchRatio:F

    return v0
.end method

.method public getNavigationRatio()F
    .registers 2

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationRatio:F

    return v0
.end method

.method public getNavigationSwitchAlpha()F
    .registers 2

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchAlpha:F

    return v0
.end method

.method public getNavigationSwitchRatio()F
    .registers 2

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchRatio:F

    return v0
.end method

.method public invalidate()V
    .registers 3

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mInvalidated:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mUpdateAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_13
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mUpdateAnimation:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public postInvalidate()V
    .registers 3

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mInvalidated:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mInvalidated:Z

    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mUpdateAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mUpdateAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method public setContentRatio(F)V
    .registers 3

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentRatio:F

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->postInvalidate()V

    return-void
.end method

.method public setContentSwitchAlpha(F)V
    .registers 3

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchAlpha:F

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->postInvalidate()V

    return-void
.end method

.method public setContentSwitchRatio(F)V
    .registers 3

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentSwitchRatio:F

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->postInvalidate()V

    return-void
.end method

.method public setContentViewAfterSwitchRatio(F)V
    .registers 3

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentViewAfterSwitchRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mContentViewAfterSwitchRatio:F

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->postInvalidate()V

    return-void
.end method

.method public setNavigationRatio(F)V
    .registers 3

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationRatio:F

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->postInvalidate()V

    return-void
.end method

.method public setNavigationSwitchAlpha(F)V
    .registers 3

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchAlpha:F

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->postInvalidate()V

    return-void
.end method

.method public setNavigationSwitchRatio(F)V
    .registers 3

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->mNavigationSwitchRatio:F

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->postInvalidate()V

    return-void
.end method
