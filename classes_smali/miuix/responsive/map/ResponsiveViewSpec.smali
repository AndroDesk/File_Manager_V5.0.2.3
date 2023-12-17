.class public Lmiuix/responsive/map/ResponsiveViewSpec;
.super Ljava/lang/Object;
.source "ResponsiveViewSpec.java"


# instance fields
.field private mEffectiveScreenOrientation:I

.field private mHideInScreenMode:I

.field private mView:Landroid/view/View;

.field private mViewId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mViewId:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mViewId:I

    .line 5
    iput p2, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mHideInScreenMode:I

    return-void
.end method


# virtual methods
.method public getEffectiveScreenOrientation()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mEffectiveScreenOrientation:I

    .line 3
    return v0
.end method

.method public getHideInScreenMode()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mHideInScreenMode:I

    .line 3
    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getViewId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mViewId:I

    .line 3
    return v0
.end method

.method public onResponsiveState(Lmiuix/responsive/map/ScreenSpec;)V
    .registers 4

    .line 1
    iget p1, p1, Lmiuix/responsive/map/ScreenSpec;->screenMode:I

    .line 3
    and-int/lit8 p1, p1, 0x7

    .line 5
    iget-object v0, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mView:Landroid/view/View;

    .line 7
    if-eqz v0, :cond_13

    .line 9
    iget v1, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mHideInScreenMode:I

    .line 11
    if-ge v1, p1, :cond_e

    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    const/16 p1, 0x8

    .line 17
    :goto_10
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :cond_13
    return-void
.end method

.method public setEffectiveScreenOrientation(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mEffectiveScreenOrientation:I

    .line 3
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mView:Landroid/view/View;

    .line 3
    return-void
.end method
