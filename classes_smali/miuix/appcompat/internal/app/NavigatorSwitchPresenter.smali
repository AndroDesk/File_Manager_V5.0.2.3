.class public Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;
.super Ljava/lang/Object;
.source "NavigatorSwitchPresenter.java"


# instance fields
.field private mAlpha:F

.field private final mNavigatorSwitch:Landroid/view/View;

.field private mSuppressAlpha:Z

.field private mSuppressVisibility:Z

.field private mVisibility:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mVisibility:I

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mAlpha:F

    .line 18
    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mAlpha:F

    .line 3
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mSuppressAlpha:Z

    .line 5
    if-nez v0, :cond_b

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 12
    :cond_b
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mVisibility:I

    .line 3
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mSuppressVisibility:Z

    .line 5
    if-nez v0, :cond_b

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_b
    return-void
.end method

.method public suppressAlpha(ZF)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mSuppressAlpha:Z

    .line 3
    if-eqz p1, :cond_a

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 10
    goto :goto_11

    .line 11
    :cond_a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    .line 13
    iget p2, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mAlpha:F

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 18
    :goto_11
    return-void
.end method

.method public suppressVisibility(ZI)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mSuppressVisibility:Z

    .line 3
    if-eqz p1, :cond_a

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    goto :goto_11

    .line 11
    :cond_a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    .line 13
    iget p2, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mVisibility:I

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :goto_11
    return-void
.end method
