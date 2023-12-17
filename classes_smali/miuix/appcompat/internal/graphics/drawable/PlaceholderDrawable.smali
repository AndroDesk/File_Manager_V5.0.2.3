.class public Lmiuix/appcompat/internal/graphics/drawable/PlaceholderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PlaceholderDrawable.java"


# instance fields
.field public mHeight:I

.field private mPadding:Landroid/graphics/Rect;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/graphics/drawable/PlaceholderDrawable;->mWidth:I

    .line 7
    iput v0, p0, Lmiuix/appcompat/internal/graphics/drawable/PlaceholderDrawable;->mHeight:I

    .line 9
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/graphics/drawable/PlaceholderDrawable;->mHeight:I

    .line 3
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/graphics/drawable/PlaceholderDrawable;->mWidth:I

    .line 3
    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/graphics/drawable/PlaceholderDrawable;->mPadding:Landroid/graphics/Rect;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 13

    .line 1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 10
    move-result v2

    .line 11
    if-eq v2, v1, :cond_8d

    .line 13
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 16
    move-result v3

    .line 17
    if-ge v3, v0, :cond_15

    .line 19
    const/4 v4, 0x3

    .line 20
    if-eq v2, v4, :cond_8d

    .line 22
    :cond_15
    const/4 v4, 0x2

    .line 23
    if-eq v2, v4, :cond_19

    .line 25
    goto :goto_6

    .line 26
    :cond_19
    if-le v3, v0, :cond_1c

    .line 28
    goto :goto_6

    .line 29
    :cond_1c
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    const-string v3, "size"

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_43

    .line 41
    sget-object v2, Lmiuix/appcompat/R$styleable;->PlaceholderDrawableSize:[I

    .line 43
    invoke-virtual {p1, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 46
    move-result-object v2

    .line 47
    sget v3, Lmiuix/appcompat/R$styleable;->PlaceholderDrawableSize_android_width:I

    .line 49
    const/4 v4, -0x1

    .line 50
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 53
    move-result v3

    .line 54
    iput v3, p0, Lmiuix/appcompat/internal/graphics/drawable/PlaceholderDrawable;->mWidth:I

    .line 56
    sget v3, Lmiuix/appcompat/R$styleable;->PlaceholderDrawableSize_android_height:I

    .line 58
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 61
    move-result v3

    .line 62
    iput v3, p0, Lmiuix/appcompat/internal/graphics/drawable/PlaceholderDrawable;->mHeight:I

    .line 64
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    goto :goto_6

    .line 68
    :cond_43
    const-string v3, "padding"

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_75

    .line 76
    sget-object v2, Lmiuix/appcompat/R$styleable;->PlaceholderDrawablePadding:[I

    .line 78
    invoke-virtual {p1, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 81
    move-result-object v2

    .line 82
    new-instance v3, Landroid/graphics/Rect;

    .line 84
    sget v4, Lmiuix/appcompat/R$styleable;->PlaceholderDrawablePadding_android_left:I

    .line 86
    const/4 v5, 0x0

    .line 87
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 90
    move-result v4

    .line 91
    sget v6, Lmiuix/appcompat/R$styleable;->PlaceholderDrawablePadding_android_top:I

    .line 93
    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 96
    move-result v6

    .line 97
    sget v7, Lmiuix/appcompat/R$styleable;->PlaceholderDrawablePadding_android_right:I

    .line 99
    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 102
    move-result v7

    .line 103
    sget v8, Lmiuix/appcompat/R$styleable;->PlaceholderDrawablePadding_android_bottom:I

    .line 105
    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 108
    move-result v5

    .line 109
    invoke-direct {v3, v4, v6, v7, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 112
    iput-object v3, p0, Lmiuix/appcompat/internal/graphics/drawable/PlaceholderDrawable;->mPadding:Landroid/graphics/Rect;

    .line 114
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    goto :goto_6

    .line 118
    :cond_75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    const-string v4, "Bad element under <placeholder>: "

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v2

    .line 135
    const-string v3, "drawable"

    .line 137
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    goto/16 :goto_6

    .line 142
    :cond_8d
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
