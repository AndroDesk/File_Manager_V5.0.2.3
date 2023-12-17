.class public Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;
.super Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;
.source "PhoneFloatingActivityHelper.java"


# instance fields
.field private mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

.field private mPanel:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;-><init>()V

    const v0, 0x1010054

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;->mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

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

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;->mPanel:Landroid/view/View;

    return-object v0
.end method

.method public getFloatingLayoutParam()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;->mPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

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

    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;->mPanel:Landroid/view/View;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;->mPanel:Landroid/view/View;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    :cond_1b
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;->mPanel:Landroid/view/View;

    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;->mDefaultPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

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

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;->mPanel:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

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
