.class public Lmiuix/smooth/SmoothContainerDrawable2;
.super Landroid/graphics/drawable/Drawable;
.source "SmoothContainerDrawable2.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;,
        Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmoothContainerDrawable2"


# instance fields
.field private mClipPath:Landroid/graphics/Path;

.field private mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

.field private mLayer:Landroid/graphics/RectF;

.field private mRadii:[F

.field private mRadius:F

.field private mStrokeColor:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeWidth:I

.field private mTempRadii:[F

.field private mUseSmooth:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mLayer:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mClipPath:Landroid/graphics/Path;

    .line 5
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 6
    invoke-direct {p0}, Lmiuix/smooth/SmoothContainerDrawable2;->init()V

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;)V
    .registers 5

    .line 7
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mLayer:Landroid/graphics/RectF;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mClipPath:Landroid/graphics/Path;

    .line 10
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    invoke-direct {v0, p3, p0, p1, p2}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;-><init>(Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;Lmiuix/smooth/SmoothContainerDrawable2;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 11
    iget p1, p3, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeWidth:I

    iput p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokeWidth:I

    .line 12
    iget p1, p3, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeColor:I

    iput p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokeColor:I

    .line 13
    iget-object p1, p3, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadii:[F

    iput-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadii:[F

    .line 14
    iget p1, p3, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadius:F

    iput p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadius:F

    .line 15
    iget-boolean p1, p3, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mUseSmooth:Z

    iput-boolean p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mUseSmooth:Z

    .line 16
    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setSmoothCornerEnable(Z)V

    .line 17
    invoke-direct {p0}, Lmiuix/smooth/SmoothContainerDrawable2;->init()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;Lmiuix/smooth/SmoothContainerDrawable2$1;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;)V

    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mClipPath:Landroid/graphics/Path;

    .line 11
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 14
    iget-object v2, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mLayer:Landroid/graphics/RectF;

    .line 16
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 18
    int-to-float v3, v3

    .line 19
    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 21
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 23
    int-to-float v3, v3

    .line 24
    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 26
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 28
    int-to-float v3, v3

    .line 29
    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 31
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 33
    int-to-float v0, v0

    .line 34
    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 36
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadii:[F

    .line 38
    if-nez v0, :cond_31

    .line 40
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mClipPath:Landroid/graphics/Path;

    .line 42
    iget v3, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadius:F

    .line 44
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 46
    invoke-virtual {v0, v2, v3, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 49
    goto :goto_38

    .line 50
    :cond_31
    iget-object v3, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mClipPath:Landroid/graphics/Path;

    .line 52
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 54
    invoke-virtual {v3, v2, v0, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 57
    :goto_38
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mClipPath:Landroid/graphics/Path;

    .line 59
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 62
    iget v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokeWidth:I

    .line 64
    int-to-float v2, v0

    .line 65
    const/high16 v3, 0x3f000000  # 0.5f

    .line 67
    mul-float/2addr v2, v3

    .line 68
    if-eqz v0, :cond_aa

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    move-result v0

    .line 74
    iget-object v3, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mLayer:Landroid/graphics/RectF;

    .line 76
    invoke-virtual {v3, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 79
    iget-object v3, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mClipPath:Landroid/graphics/Path;

    .line 81
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 84
    iget-object v3, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadii:[F

    .line 86
    if-nez v3, :cond_66

    .line 88
    iget-object v3, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mClipPath:Landroid/graphics/Path;

    .line 90
    iget-object v4, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mLayer:Landroid/graphics/RectF;

    .line 92
    iget v5, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadius:F

    .line 94
    add-float v6, v5, v2

    .line 96
    add-float/2addr v5, v2

    .line 97
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 99
    invoke-virtual {v3, v4, v6, v5, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 102
    goto :goto_91

    .line 103
    :cond_66
    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    .line 106
    move-result-object v3

    .line 107
    check-cast v3, [F

    .line 109
    iput-object v3, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mTempRadii:[F

    .line 111
    iget-object v4, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadii:[F

    .line 113
    const/4 v5, 0x0

    .line 114
    aget v6, v4, v5

    .line 116
    add-float/2addr v6, v2

    .line 117
    aput v6, v3, v5

    .line 119
    const/4 v5, 0x1

    .line 120
    aget v6, v4, v5

    .line 122
    add-float/2addr v6, v2

    .line 123
    aput v6, v3, v5

    .line 125
    const/4 v5, 0x2

    .line 126
    aget v6, v4, v5

    .line 128
    add-float/2addr v6, v2

    .line 129
    aput v6, v3, v5

    .line 131
    const/4 v5, 0x3

    .line 132
    aget v4, v4, v5

    .line 134
    add-float/2addr v4, v2

    .line 135
    aput v4, v3, v5

    .line 137
    iget-object v2, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mClipPath:Landroid/graphics/Path;

    .line 139
    iget-object v4, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mLayer:Landroid/graphics/RectF;

    .line 141
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 143
    invoke-virtual {v2, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 146
    :goto_91
    iget-object v2, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mClipPath:Landroid/graphics/Path;

    .line 148
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 151
    iget-object v2, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 153
    iget-object v2, v2, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 155
    iget-object v2, v2, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 157
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 163
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mClipPath:Landroid/graphics/Path;

    .line 165
    iget-object v2, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokePaint:Landroid/graphics/Paint;

    .line 167
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 170
    goto :goto_b3

    .line 171
    :cond_aa
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 173
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 175
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 177
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 180
    :goto_b3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 183
    return-void
.end method

.method private inflateInnerDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 10

    .line 1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 10
    move-result v2

    .line 11
    if-eq v2, v1, :cond_60

    .line 13
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 16
    move-result v3

    .line 17
    if-ge v3, v0, :cond_15

    .line 19
    const/4 v4, 0x3

    .line 20
    if-eq v2, v4, :cond_60

    .line 22
    :cond_15
    const/4 v4, 0x2

    .line 23
    if-eq v2, v4, :cond_19

    .line 25
    goto :goto_6

    .line 26
    :cond_19
    if-gt v3, v0, :cond_6

    .line 28
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    const-string v3, "child"

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_28

    .line 40
    goto :goto_6

    .line 41
    :cond_28
    :goto_28
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x4

    .line 46
    if-ne v0, v1, :cond_30

    .line 48
    goto :goto_28

    .line 49
    :cond_30
    if-ne v0, v4, :cond_45

    .line 51
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 53
    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;-><init>()V

    .line 56
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 59
    move-result-object p1

    .line 60
    iput-object p1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 65
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 67
    iput-object v0, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 69
    return-void

    .line 70
    :cond_45
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string p2, ": <child> tag requires a \'drawable\' attribute or child tag defining a drawable"

    .line 86
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p2

    .line 93
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p1

    .line 97
    :cond_60
    return-void
.end method

.method private init()V
    .registers 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 7
    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokePaint:Landroid/graphics/Paint;

    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokePaint:Landroid/graphics/Paint;

    .line 16
    iget v1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokeColor:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokePaint:Landroid/graphics/Paint;

    .line 23
    iget v1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokeWidth:I

    .line 25
    int-to-float v1, v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 29
    return-void
.end method

.method public static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 4

    .line 1
    if-nez p1, :cond_7

    .line 3
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_7
    const/4 p0, 0x0

    .line 9
    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private setSmoothCornerEnable(Z)V
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothCornerHelper;->setDrawableSmoothCornerEnable(Landroid/graphics/drawable/Drawable;Z)V

    .line 4
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 6
    iput-boolean p1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mUseSmooth:Z

    .line 8
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 4
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 6
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 8
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 13
    return-void
.end method

.method public canApplyTheme()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->canApplyTheme()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_10

    .line 11
    :cond_a
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    :cond_10
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->drawRoundRect(Landroid/graphics/Canvas;)V

    .line 4
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->getAlpha()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getBoundsInner()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getChildDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 7
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    return-object v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    return-object v0
.end method

.method public getCornerRadii()[F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadii:[F

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_e

    .line 9
    :cond_8
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [F

    .line 15
    :goto_e
    return-object v0
.end method

.method public getCornerRadius()F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    iget v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadius:F

    .line 5
    return v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->getDirtyBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->getIntrinsicHeight()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->getIntrinsicWidth()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLayerType()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    iget v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mLayerType:I

    .line 5
    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->getOpacity()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->getPadding(Landroid/graphics/Rect;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getStrokeColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    iget v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeColor:I

    .line 5
    return v0
.end method

.method public getStrokeWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    iget v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeWidth:I

    .line 5
    return v0
.end method

.method public getmRadii()[F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadii:[F

    .line 3
    return-object v0
.end method

.method public getmUseSmooth()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mUseSmooth:Z

    .line 3
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 13

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 4
    sget-object v0, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable2:[I

    .line 6
    invoke-static {p1, p4, p3, v0}, Lmiuix/smooth/SmoothContainerDrawable2;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object v0

    .line 10
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable2_android_radius:I

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    invoke-virtual {p0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    .line 21
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable2_android_topLeftRadius:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x1

    .line 28
    if-nez v3, :cond_35

    .line 30
    sget v3, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable2_android_topRightRadius:I

    .line 32
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_35

    .line 38
    sget v3, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable2_android_bottomRightRadius:I

    .line 40
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_35

    .line 46
    sget v3, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable2_android_bottomLeftRadius:I

    .line 48
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_6c

    .line 54
    :cond_35
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 57
    move-result v1

    .line 58
    int-to-float v1, v1

    .line 59
    sget v3, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable2_android_topRightRadius:I

    .line 61
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 64
    move-result v3

    .line 65
    int-to-float v3, v3

    .line 66
    sget v5, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable2_android_bottomRightRadius:I

    .line 68
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 71
    move-result v5

    .line 72
    int-to-float v5, v5

    .line 73
    sget v6, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable2_android_bottomLeftRadius:I

    .line 75
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 78
    move-result v6

    .line 79
    int-to-float v6, v6

    .line 80
    const/16 v7, 0x8

    .line 82
    new-array v7, v7, [F

    .line 84
    aput v1, v7, v2

    .line 86
    aput v1, v7, v4

    .line 88
    const/4 v1, 0x2

    .line 89
    aput v3, v7, v1

    .line 91
    const/4 v1, 0x3

    .line 92
    aput v3, v7, v1

    .line 94
    const/4 v1, 0x4

    .line 95
    aput v5, v7, v1

    .line 97
    const/4 v1, 0x5

    .line 98
    aput v5, v7, v1

    .line 100
    const/4 v1, 0x6

    .line 101
    aput v6, v7, v1

    .line 103
    const/4 v1, 0x7

    .line 104
    aput v6, v7, v1

    .line 106
    invoke-virtual {p0, v7}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadii([F)V

    .line 109
    :cond_6c
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable2_miuix_strokeWidth:I

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 114
    move-result v1

    .line 115
    invoke-virtual {p0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;->setStrokeWidth(I)V

    .line 118
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable2_miuix_strokeColor:I

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 123
    move-result v1

    .line 124
    invoke-virtual {p0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;->setStrokeColor(I)V

    .line 127
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable2_android_layerType:I

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 132
    move-result v1

    .line 133
    invoke-virtual {p0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    .line 136
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable2_miuix_useSmooth:I

    .line 138
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 141
    move-result v1

    .line 142
    iput-boolean v1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mUseSmooth:Z

    .line 144
    sget-object v1, Lmiuix/smooth/SmoothCornerHelper;->FORCE_USE_SMOOTH:Ljava/lang/Boolean;

    .line 146
    if-eqz v1, :cond_99

    .line 148
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 151
    move-result v1

    .line 152
    iput-boolean v1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mUseSmooth:Z

    .line 154
    :cond_99
    iget-boolean v1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mUseSmooth:Z

    .line 156
    if-eqz v1, :cond_a0

    .line 158
    invoke-direct {p0, v4}, Lmiuix/smooth/SmoothContainerDrawable2;->setSmoothCornerEnable(Z)V

    .line 161
    :cond_a0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/smooth/SmoothContainerDrawable2;->inflateInnerDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 167
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    return-void
.end method

.method public isStateful()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->isStateful()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public jumpToCurrentState()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->jumpToCurrentState()V

    .line 6
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 6
    return-void
.end method

.method public onStateChange([I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->onStateChange([I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5

    .line 1
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 4
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->setAlpha(I)V

    .line 6
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokePaint:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 14
    return-void
.end method

.method public setChangingConfigurations(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->setChangingConfigurations(I)V

    .line 6
    return-void
.end method

.method public setChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 7
    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;-><init>()V

    .line 10
    iput-object p1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 15
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 17
    iput-object v0, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 19
    :cond_12
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6
    return-void
.end method

.method public setCornerRadii([F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    iput-object p1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadii:[F

    .line 5
    iput-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadii:[F

    .line 7
    if-nez p1, :cond_d

    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadius:F

    .line 12
    iput p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadius:F

    .line 14
    :cond_d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 17
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    cmpg-float v1, p1, v0

    .line 11
    if-gez v1, :cond_d

    .line 13
    move p1, v0

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 16
    iput p1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadius:F

    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadii:[F

    .line 21
    iput p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadius:F

    .line 23
    iput-object v1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadii:[F

    .line 25
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 28
    return-void
.end method

.method public setDither(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->setDither(Z)V

    .line 6
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->setFilterBitmap(Z)V

    .line 6
    return-void
.end method

.method public setLayerType(I)V
    .registers 4

    .line 1
    if-ltz p1, :cond_11

    .line 3
    const/4 v0, 0x2

    .line 4
    if-gt p1, v0, :cond_11

    .line 6
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 8
    iget v1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mLayerType:I

    .line 10
    if-eq v1, p1, :cond_10

    .line 12
    iput p1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mLayerType:I

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 17
    :cond_10
    return-void

    .line 18
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string v0, "Layer type can only be one of: LAYER_TYPE_NONE, LAYER_TYPE_SOFTWARE or LAYER_TYPE_HARDWARE"

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
.end method

.method public setStrokeColor(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    iget v1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeColor:I

    .line 5
    if-eq v1, p1, :cond_12

    .line 7
    iput p1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeColor:I

    .line 9
    iput p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokeColor:I

    .line 11
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokePaint:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 19
    :cond_12
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 3
    iget v1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeWidth:I

    .line 5
    if-eq v1, p1, :cond_13

    .line 7
    iput p1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeWidth:I

    .line 9
    iput p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokeWidth:I

    .line 11
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokePaint:Landroid/graphics/Paint;

    .line 13
    int-to-float p1, p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 20
    :cond_13
    return-void
.end method

.method public setUseSmooth(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mUseSmooth:Z

    .line 3
    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setSmoothCornerEnable(Z)V

    .line 6
    return-void
.end method

.method public setmRadii([F)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadii:[F

    .line 3
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 4
    return-void
.end method
