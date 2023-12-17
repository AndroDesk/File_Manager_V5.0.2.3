.class public Lcom/android/fileexplorer/view/StrokeTextView;
.super Landroid/widget/TextView;
.source "StrokeTextView.java"


# instance fields
.field private mStroke:F

.field private mStrokeColor:I

.field private outlineTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/fileexplorer/view/StrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/StrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 4
    iput p2, p0, Lcom/android/fileexplorer/view/StrokeTextView;->mStroke:F

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/StrokeTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/fileexplorer/view/StrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 8
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/StrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 9
    sget-object v0, Lcom/android/fileexplorer/R$styleable;->StrokeTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x40c00000  # 6.0f

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/StrokeTextView;->mStroke:F

    const/4 p2, 0x0

    const/4 v0, -0x1

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/StrokeTextView;->mStrokeColor:I

    .line 12
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/StrokeTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IF)V
    .registers 6

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/view/StrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 15
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/StrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 16
    iput p4, p0, Lcom/android/fileexplorer/view/StrokeTextView;->mStroke:F

    .line 17
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/StrokeTextView;->init()V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/StrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/fileexplorer/view/StrokeTextView;->mStroke:F

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/StrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 19
    iget v1, p0, Lcom/android/fileexplorer/view/StrokeTextView;->mStrokeColor:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/view/StrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 26
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 33
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/StrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 9
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/view/StrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 9
    return-void
.end method

.method public onMeasure(II)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/StrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_15

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_21

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/view/StrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 24
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/android/fileexplorer/view/StrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 36
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 39
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/StrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    return-void
.end method
