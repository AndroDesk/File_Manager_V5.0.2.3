.class public Lmiuix/responsive/widget/ResponsiveConstraint;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ResponsiveConstraint.java"

# interfaces
.implements Lmiuix/responsive/interfaces/IViewResponsive;


# instance fields
.field private mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

.field private mResponsiveViewStateManager:Lmiuix/responsive/page/manager/ResponsiveViewStateManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/responsive/widget/ResponsiveConstraint;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/responsive/widget/ResponsiveConstraint;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/responsive/widget/ResponsiveConstraint;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;

    invoke-direct {p1, p0, p0}, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;-><init>(Landroid/view/View;Lmiuix/responsive/interfaces/IViewResponsive;)V

    iput-object p1, p0, Lmiuix/responsive/widget/ResponsiveConstraint;->mResponsiveViewStateManager:Lmiuix/responsive/page/manager/ResponsiveViewStateManager;

    return-void
.end method


# virtual methods
.method public clearIViewResponsive()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/responsive/widget/ResponsiveConstraint;->mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lmiuix/responsive/widget/ResponsiveConstraint;->mResponsiveViewStateManager:Lmiuix/responsive/page/manager/ResponsiveViewStateManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiuix/responsive/widget/ResponsiveConstraint;->mResponsiveViewStateManager:Lmiuix/responsive/page/manager/ResponsiveViewStateManager;

    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)Z
    .registers 5

    iget-object v0, p0, Lmiuix/responsive/widget/ResponsiveConstraint;->mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2, p3}, Lmiuix/responsive/interfaces/IViewResponsive;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public setIViewResponsive(Lmiuix/responsive/interfaces/IViewResponsive;)V
    .registers 2

    iput-object p1, p0, Lmiuix/responsive/widget/ResponsiveConstraint;->mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

    return-void
.end method
