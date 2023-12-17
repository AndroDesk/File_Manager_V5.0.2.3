.class public final Landroidx/appcompat/widget/ActionMenuPresenter$d;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionMenuView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3
    sget p1, Lh/a;->actionOverflowButtonStyle:I

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p2, v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Landroidx/appcompat/widget/c1;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 30
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$d$a;

    .line 32
    invoke-direct {p1, p0, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$d$a;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter$d;Landroid/view/View;)V

    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final needsDividerAfter()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final needsDividerBefore()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final performClick()Z
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    .line 18
    return v1
.end method

.method public final setFrame(IIII)Z
    .registers 9

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p3

    .line 13
    if-eqz p2, :cond_3f

    .line 15
    if-eqz p3, :cond_3f

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 20
    move-result p2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 24
    move-result p4

    .line 25
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    .line 28
    move-result v0

    .line 29
    div-int/lit8 v0, v0, 0x2

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 34
    move-result v1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 38
    move-result v2

    .line 39
    sub-int/2addr v1, v2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 47
    move-result v3

    .line 48
    sub-int/2addr v2, v3

    .line 49
    add-int/2addr p2, v1

    .line 50
    div-int/lit8 p2, p2, 0x2

    .line 52
    add-int/2addr p4, v2

    .line 53
    div-int/lit8 p4, p4, 0x2

    .line 55
    sub-int v1, p2, v0

    .line 57
    sub-int v2, p4, v0

    .line 59
    add-int/2addr p2, v0

    .line 60
    add-int/2addr p4, v0

    .line 61
    invoke-static {p3, v1, v2, p2, p4}, Lg0/a$b;->f(Landroid/graphics/drawable/Drawable;IIII)V

    .line 64
    :cond_3f
    return p1
.end method
