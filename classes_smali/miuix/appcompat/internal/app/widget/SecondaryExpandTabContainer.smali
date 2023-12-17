.class public Lmiuix/appcompat/internal/app/widget/SecondaryExpandTabContainer;
.super Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
.source "SecondaryExpandTabContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryExpandTabContainer;->getTabContainerHeight()I

    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setContentHeight(I)V

    .line 11
    return-void
.end method


# virtual methods
.method public getDefaultTabTextStyle()I
    .registers 2

    .line 1
    sget v0, Lmiuix/appcompat/R$attr;->actionBarTabTextSecondaryExpandStyle:I

    .line 3
    return v0
.end method

.method public getTabActivatedTextStyle()I
    .registers 2

    .line 1
    sget v0, Lmiuix/appcompat/R$attr;->actionBarTabActivatedTextSecondaryExpandStyle:I

    .line 3
    return v0
.end method

.method public getTabContainerHeight()I
    .registers 2

    const/4 v0, -0x2

    return v0
.end method
