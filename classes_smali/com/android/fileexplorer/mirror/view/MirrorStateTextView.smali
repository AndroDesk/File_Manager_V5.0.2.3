.class public Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;
.super Landroid/widget/TextView;
.source "MirrorStateTextView.java"


# static fields
.field private static final LATER_LENGTH:I = 0x8

.field private static final PRE_LENGTH:I = 0x5


# instance fields
.field private mIsEdit:Z

.field private mIsList:Z

.field private mListHeight:F

.field private mOneLineHeight:F

.field private mPaddingStart:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mRectF:Landroid/graphics/RectF;

.field private mTwoLineHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mRectF:Landroid/graphics/RectF;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mIsEdit:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mIsList:Z

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->initView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mRectF:Landroid/graphics/RectF;

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mIsEdit:Z

    .line 11
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mIsList:Z

    .line 12
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->initView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mRectF:Landroid/graphics/RectF;

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mIsEdit:Z

    .line 17
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mIsList:Z

    .line 18
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->initView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mRectF:Landroid/graphics/RectF;

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mIsEdit:Z

    .line 23
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mIsList:Z

    .line 24
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->initView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private drawGrid(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_63

    .line 7
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mIsList:Z

    .line 9
    if-nez v0, :cond_63

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 30
    move-result v1

    .line 31
    int-to-float v1, v1

    .line 32
    const/high16 v2, 0x40000000  # 2.0f

    .line 34
    iget v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mPaddingStart:F

    .line 36
    mul-float/2addr v3, v2

    .line 37
    sub-float/2addr v1, v3

    .line 38
    cmpl-float v0, v0, v1

    .line 40
    const/4 v1, 0x0

    .line 41
    if-lez v0, :cond_37

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mRectF:Landroid/graphics/RectF;

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 48
    move-result v2

    .line 49
    int-to-float v2, v2

    .line 50
    iget v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mTwoLineHeight:F

    .line 52
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 55
    goto :goto_43

    .line 56
    :cond_37
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mRectF:Landroid/graphics/RectF;

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 61
    move-result v2

    .line 62
    int-to-float v2, v2

    .line 63
    iget v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mOneLineHeight:F

    .line 65
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    :goto_43
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mPaint:Landroid/graphics/Paint;

    .line 70
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 72
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mPaint:Landroid/graphics/Paint;

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 80
    move-result-object v1

    .line 81
    const v2, 0x7f060107

    .line 84
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 87
    move-result v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mRectF:Landroid/graphics/RectF;

    .line 93
    iget v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mRadius:F

    .line 95
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mPaint:Landroid/graphics/Paint;

    .line 97
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 100
    :cond_63
    return-void
.end method

.method private initView(Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/android/fileexplorer/R$styleable;->MirrorStateTextView:[I

    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 18
    move-result v1

    .line 19
    iput-boolean v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mIsList:Z

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p1

    .line 28
    const v1, 0x7f070334

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 34
    move-result p1

    .line 35
    int-to-float p1, p1

    .line 36
    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mOneLineHeight:F

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object p1

    .line 42
    const v1, 0x7f070337

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 48
    move-result p1

    .line 49
    int-to-float p1, p1

    .line 50
    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mTwoLineHeight:F

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object p1

    .line 56
    const v1, 0x7f070332

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 62
    move-result p1

    .line 63
    int-to-float p1, p1

    .line 64
    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mRadius:F

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 69
    move-result-object p1

    .line 70
    const v1, 0x7f070335

    .line 73
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 76
    move-result p1

    .line 77
    int-to-float p1, p1

    .line 78
    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mPaddingStart:F

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 83
    move-result-object p1

    .line 84
    const v1, 0x7f070325

    .line 87
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 90
    move-result p1

    .line 91
    int-to-float p1, p1

    .line 92
    iput p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mListHeight:F

    .line 94
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mPaint:Landroid/graphics/Paint;

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object v1

    .line 100
    const v2, 0x7f060107

    .line 103
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 106
    move-result v1

    .line 107
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mPaint:Landroid/graphics/Paint;

    .line 112
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 114
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 117
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mPaint:Landroid/graphics/Paint;

    .line 119
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 121
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setShowSoftInputOnFocus(Z)V

    .line 127
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->drawGrid(Landroid/graphics/Canvas;)V

    .line 4
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 12

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_91

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 22
    move-result v1

    .line 23
    int-to-float v1, v1

    .line 24
    const/high16 v2, 0x40000000  # 2.0f

    .line 26
    iget v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;->mPaddingStart:F

    .line 28
    mul-float/2addr v3, v2

    .line 29
    sub-float/2addr v1, v3

    .line 30
    cmpl-float v0, v0, v1

    .line 32
    if-lez v0, :cond_8d

    .line 34
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 37
    move-result v0

    .line 38
    const/16 v1, 0xd

    .line 40
    if-le v0, v1, :cond_89

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const/4 v2, 0x5

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-interface {p1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string v2, "..."

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    add-int/lit8 v4, v0, -0x8

    .line 63
    invoke-interface {p1, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 77
    move-result v5

    .line 78
    move v6, v3

    .line 79
    move v7, v6

    .line 80
    :goto_4f
    if-ge v6, v5, :cond_60

    .line 82
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 85
    move-result v8

    .line 86
    invoke-static {v8}, Ljava/lang/Character;->isLowerCase(C)Z

    .line 89
    move-result v8

    .line 90
    if-eqz v8, :cond_5d

    .line 92
    add-int/lit8 v7, v7, 0x1

    .line 94
    :cond_5d
    add-int/lit8 v6, v6, 0x1

    .line 96
    goto :goto_4f

    .line 97
    :cond_60
    const/16 v5, 0xa

    .line 99
    if-lt v7, v5, :cond_85

    .line 101
    const/16 v5, 0x11

    .line 103
    if-le v0, v5, :cond_85

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    const/4 v5, 0x7

    .line 111
    invoke-interface {p1, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v4, v4, -0x2

    .line 123
    invoke-interface {p1, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v1

    .line 134
    :cond_85
    invoke-super {p0, v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 137
    goto :goto_94

    .line 138
    :cond_89
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 141
    goto :goto_94

    .line 142
    :cond_8d
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 145
    goto :goto_94

    .line 146
    :cond_91
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 149
    :goto_94
    return-void
.end method
