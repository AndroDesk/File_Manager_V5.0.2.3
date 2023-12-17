.class public Landroidx/preference/internal/PreferenceImageView;
.super Landroid/widget/ImageView;
.source "PreferenceImageView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    const v1, 0x7fffffff

    .line 8
    iput v1, p0, Landroidx/preference/internal/PreferenceImageView;->a:I

    .line 10
    iput v1, p0, Landroidx/preference/internal/PreferenceImageView;->b:I

    .line 12
    sget-object v2, Landroidx/preference/q;->PreferenceImageView:[I

    .line 14
    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 17
    move-result-object p1

    .line 18
    sget p2, Landroidx/preference/q;->PreferenceImageView_maxWidth:I

    .line 20
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 23
    move-result p2

    .line 24
    invoke-virtual {p0, p2}, Landroidx/preference/internal/PreferenceImageView;->setMaxWidth(I)V

    .line 27
    sget p2, Landroidx/preference/q;->PreferenceImageView_maxHeight:I

    .line 29
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 32
    move-result p2

    .line 33
    invoke-virtual {p0, p2}, Landroidx/preference/internal/PreferenceImageView;->setMaxHeight(I)V

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    return-void
.end method


# virtual methods
.method public getMaxHeight()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/preference/internal/PreferenceImageView;->b:I

    .line 3
    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/preference/internal/PreferenceImageView;->a:I

    .line 3
    return v0
.end method

.method public final onMeasure(II)V
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    const v1, 0x7fffffff

    .line 8
    const/high16 v2, -0x80000000

    .line 10
    if-eq v0, v2, :cond_d

    .line 12
    if-nez v0, :cond_1f

    .line 14
    :cond_d
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 17
    move-result v3

    .line 18
    invoke-virtual {p0}, Landroidx/preference/internal/PreferenceImageView;->getMaxWidth()I

    .line 21
    move-result v4

    .line 22
    if-eq v4, v1, :cond_1f

    .line 24
    if-lt v4, v3, :cond_1b

    .line 26
    if-nez v0, :cond_1f

    .line 28
    :cond_1b
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 31
    move-result p1

    .line 32
    :cond_1f
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 35
    move-result v0

    .line 36
    if-eq v0, v2, :cond_27

    .line 38
    if-nez v0, :cond_39

    .line 40
    :cond_27
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 43
    move-result v3

    .line 44
    invoke-virtual {p0}, Landroidx/preference/internal/PreferenceImageView;->getMaxHeight()I

    .line 47
    move-result v4

    .line 48
    if-eq v4, v1, :cond_39

    .line 50
    if-lt v4, v3, :cond_35

    .line 52
    if-nez v0, :cond_39

    .line 54
    :cond_35
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 57
    move-result p2

    .line 58
    :cond_39
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 61
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/preference/internal/PreferenceImageView;->b:I

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 6
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/preference/internal/PreferenceImageView;->a:I

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 6
    return-void
.end method
