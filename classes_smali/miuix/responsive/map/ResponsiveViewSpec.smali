.class public Lmiuix/responsive/map/ResponsiveViewSpec;
.super Ljava/lang/Object;
.source "ResponsiveViewSpec.java"


# instance fields
.field private mEffectiveScreenOrientation:I

.field private mHideInScreenMode:I

.field private mView:Landroid/view/View;

.field private mViewId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mViewId:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mViewId:I

    iput p2, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mHideInScreenMode:I

    return-void
.end method


# virtual methods
.method public getEffectiveScreenOrientation()I
    .registers 2

    iget v0, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mEffectiveScreenOrientation:I

    return v0
.end method

.method public getHideInScreenMode()I
    .registers 2

    iget v0, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mHideInScreenMode:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getViewId()I
    .registers 2

    iget v0, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mViewId:I

    return v0
.end method

.method public onResponsiveState(Lmiuix/responsive/map/ScreenSpec;)V
    .registers 4

    iget p1, p1, Lmiuix/responsive/map/ScreenSpec;->screenMode:I

    and-int/lit8 p1, p1, 0x7

    iget-object v0, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mView:Landroid/view/View;

    if-eqz v0, :cond_13

    iget v1, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mHideInScreenMode:I

    if-ge v1, p1, :cond_e

    const/4 p1, 0x0

    goto :goto_10

    :cond_e
    const/16 p1, 0x8

    :goto_10
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method public setEffectiveScreenOrientation(I)V
    .registers 2

    iput p1, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mEffectiveScreenOrientation:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mView:Landroid/view/View;

    return-void
.end method
