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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mVisibility:I

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mAlpha:F

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .registers 3

    iput p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mAlpha:F

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mSuppressAlpha:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iput p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mVisibility:I

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mSuppressVisibility:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public suppressAlpha(ZF)V
    .registers 3

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mSuppressAlpha:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_11

    :cond_a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    iget p2, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mAlpha:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_11
    return-void
.end method

.method public suppressVisibility(ZI)V
    .registers 3

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mSuppressVisibility:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    :cond_a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    iget p2, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mVisibility:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_11
    return-void
.end method
