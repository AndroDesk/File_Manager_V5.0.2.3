.class public Lmiuix/androidbasewidget/widget/SingleCenterTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SingleCenterTextView.java"


# instance fields
.field private mEnableSingleCenter:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/SingleCenterTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/SingleCenterTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 4
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p3, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p3}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 4
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/SingleCenterTextView;->mEnableSingleCenter:Z

    .line 6
    if-eqz p1, :cond_1b

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    .line 15
    move-result p1

    .line 16
    const/4 p2, 0x1

    .line 17
    if-ne p1, p2, :cond_1b

    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    .line 22
    move-result p1

    .line 23
    if-eq p1, p2, :cond_1b

    .line 25
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 28
    :cond_1b
    return-void
.end method

.method public setEnableSingleCenter(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/SingleCenterTextView;->mEnableSingleCenter:Z

    .line 3
    return-void
.end method
