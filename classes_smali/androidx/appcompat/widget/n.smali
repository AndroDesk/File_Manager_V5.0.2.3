.class public final Landroidx/appcompat/widget/n;
.super Landroid/widget/PopupWindow;
.source "AppCompatPopupWindow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    sget-object v0, Lh/j;->PopupWindow:[I

    .line 6
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p2

    .line 10
    sget p3, Lh/j;->PopupWindow_overlapAnchor:I

    .line 12
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 15
    move-result p4

    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p4, :cond_19

    .line 19
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 22
    move-result p3

    .line 23
    invoke-static {p0, p3}, Landroidx/core/widget/i;->c(Landroid/widget/PopupWindow;Z)V

    .line 26
    :cond_19
    sget p3, Lh/j;->PopupWindow_android_popupBackground:I

    .line 28
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 31
    move-result p4

    .line 32
    if-eqz p4, :cond_2c

    .line 34
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 37
    move-result p4

    .line 38
    if-eqz p4, :cond_2c

    .line 40
    invoke-static {p1, p4}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 43
    move-result-object p1

    .line 44
    goto :goto_30

    .line 45
    :cond_2c
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 48
    move-result-object p1

    .line 49
    :goto_30
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method


# virtual methods
.method public final showAsDropDown(Landroid/view/View;II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public final showAsDropDown(Landroid/view/View;III)V
    .registers 5

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public final update(Landroid/view/View;IIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 4
    return-void
.end method
