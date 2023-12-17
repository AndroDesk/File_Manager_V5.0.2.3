.class public Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;
.super Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;
.source "PhoneFloatingActivityHelper.java"


# instance fields
.field private mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

.field private mPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;-><init>()V

    .line 4
    const v0, 0x1010054

    .line 7
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;->mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

    .line 13
    return-void
.end method


# virtual methods
.method public delegateFinishFloatingActivityInternal()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public executeCloseEnterAnimation()V
    .registers 1

    return-void
.end method

.method public executeCloseExitAnimation()V
    .registers 1

    return-void
.end method

.method public executeOpenEnterAnimation()V
    .registers 1

    return-void
.end method

.method public executeOpenExitAnimation()V
    .registers 1

    return-void
.end method

.method public exitFloatingActivityAll()V
    .registers 1

    return-void
.end method

.method public getFloatingBrightPanel()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getFloatingLayoutParam()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hideFloatingBrightPanel()V
    .registers 1

    return-void
.end method

.method public hideFloatingDimBackground()V
    .registers 1

    return-void
.end method

.method public init(Landroid/view/View;Z)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 3
    if-eqz p1, :cond_22

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1b

    .line 15
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 17
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 19
    const/high16 v0, -0x1000000

    .line 21
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    goto :goto_22

    .line 28
    :cond_1b
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 30
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;->mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    :cond_22
    :goto_22
    return-void
.end method

.method public isFloatingModeSupport()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method public replaceSubDecor(Landroid/view/View;Z)Landroid/view/ViewGroup;
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;->mPanel:Landroid/view/View;

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    .line 5
    return-object p1
.end method

.method public setEnableSwipToDismiss(Z)V
    .registers 2

    return-void
.end method

.method public setFloatingWindowBorderEnable(Z)V
    .registers 2

    return-void
.end method

.method public setFloatingWindowMode(Z)V
    .registers 2

    return-void
.end method

.method public setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V
    .registers 2

    return-void
.end method

.method public setOnFloatingWindowCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;)V
    .registers 2

    return-void
.end method

.method public shouldInterceptBack()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public showFloatingBrightPanel()V
    .registers 1

    return-void
.end method
