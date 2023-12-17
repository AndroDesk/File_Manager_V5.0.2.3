.class public Lcom/android/fileexplorer/view/FixedImageView;
.super Landroid/widget/ImageView;
.source "FixedImageView.java"


# instance fields
.field private mWhRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/FixedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/FixedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p3, Lcom/android/fileexplorer/R$styleable;->FixedImageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000  # 1.0f

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/FixedImageView;->mWhRatio:F

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 7
    move-result p1

    .line 8
    int-to-float p2, p1

    .line 9
    iget v0, p0, Lcom/android/fileexplorer/view/FixedImageView;->mWhRatio:F

    .line 11
    div-float/2addr p2, v0

    .line 12
    float-to-int p2, p2

    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 16
    return-void
.end method

.method public setWhRatio(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/FixedImageView;->mWhRatio:F

    .line 3
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    iput p1, p0, Lcom/android/fileexplorer/view/FixedImageView;->mWhRatio:F

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 14
    :cond_d
    return-void
.end method
