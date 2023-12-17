.class public Lmiuix/responsive/widget/ResponsiveRecyclerView;
.super Lmiuix/recyclerview/widget/RecyclerView;
.source "ResponsiveRecyclerView.java"

# interfaces
.implements Lmiuix/responsive/interfaces/IViewResponsive;


# instance fields
.field private mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

.field private mResponsiveViewStateManager:Lmiuix/responsive/page/manager/ResponsiveViewStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/responsive/widget/ResponsiveRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/responsive/widget/ResponsiveRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;

    invoke-direct {p1, p0, p0}, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;-><init>(Landroid/view/View;Lmiuix/responsive/interfaces/IViewResponsive;)V

    iput-object p1, p0, Lmiuix/responsive/widget/ResponsiveRecyclerView;->mResponsiveViewStateManager:Lmiuix/responsive/page/manager/ResponsiveViewStateManager;

    return-void
.end method


# virtual methods
.method public clearIViewResponsive()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/responsive/widget/ResponsiveRecyclerView;->mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

    .line 4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/responsive/widget/ResponsiveRecyclerView;->mResponsiveViewStateManager:Lmiuix/responsive/page/manager/ResponsiveViewStateManager;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 18
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 21
    iget-object v0, p0, Lmiuix/responsive/widget/ResponsiveRecyclerView;->mResponsiveViewStateManager:Lmiuix/responsive/page/manager/ResponsiveViewStateManager;

    .line 23
    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/ResponsiveViewStateManager;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 26
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/responsive/widget/ResponsiveRecyclerView;->mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lmiuix/responsive/interfaces/IViewResponsive;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public setIViewResponsive(Lmiuix/responsive/interfaces/IViewResponsive;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/responsive/widget/ResponsiveRecyclerView;->mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

    .line 3
    return-void
.end method
