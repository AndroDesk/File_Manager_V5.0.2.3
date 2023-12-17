.class public Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable;
.super Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;
.source "RadioButtonAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable$RadioButtonConstantState;
    }
.end annotation


# instance fields
.field private mDrawPadding:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;-><init>()V

    const/16 v0, 0x13

    .line 2
    iput v0, p0, Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable;->mDrawPadding:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V

    const/16 p2, 0x13

    .line 4
    iput p2, p0, Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable;->mDrawPadding:I

    if-eqz p1, :cond_11

    .line 5
    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_radio_button_drawable_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable;->mDrawPadding:I

    :cond_11
    return-void
.end method


# virtual methods
.method public getCheckWidgetDrawableStyle()I
    .registers 2

    .line 1
    sget v0, Lmiuix/appcompat/R$style;->CheckWidgetDrawable_RadioButton:I

    .line 3
    return v0
.end method

.method public isSingleSelectionWidget()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public newCheckWidgetConstantState()Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
    .registers 2

    .line 1
    new-instance v0, Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable$RadioButtonConstantState;

    .line 3
    invoke-direct {v0}, Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable$RadioButtonConstantState;-><init>()V

    .line 6
    return-object v0
.end method

.method public setCheckWidgetDrawableBounds(IIII)V
    .registers 6

    .line 1
    iget v0, p0, Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable;->mDrawPadding:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    sub-int/2addr p4, v0

    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(IIII)V

    return-void
.end method

.method public setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 2
    iget v0, p0, Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable;->mDrawPadding:I

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 3
    invoke-super {p0, p1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V

    return-void
.end method
