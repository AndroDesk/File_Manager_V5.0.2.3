.class public Lmiuix/smooth/SmoothContainerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SmoothContainerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/smooth/SmoothContainerDrawable$ContainerState;,
        Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;
    }
.end annotation


# static fields
.field private static final XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

.field private mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 3
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 5
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    sput-object v0, Lmiuix/smooth/SmoothContainerDrawable;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3
    new-instance v0, Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-direct {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 4
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable$ContainerState;)V
    .registers 5

    .line 5
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 6
    new-instance v0, Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-direct {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 7
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-direct {v0, p3, p0, p1, p2}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;-><init>(Lmiuix/smooth/SmoothContainerDrawable$ContainerState;Lmiuix/smooth/SmoothContainerDrawable;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 8
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    iget p2, p3, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    invoke-virtual {p1, p2}, Lmiuix/smooth/internal/SmoothDrawHelper;->setStrokeWidth(I)V

    .line 9
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    iget p2, p3, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    invoke-virtual {p1, p2}, Lmiuix/smooth/internal/SmoothDrawHelper;->setStrokeColor(I)V

    .line 10
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    iget-object p2, p3, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    invoke-virtual {p1, p2}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    .line 11
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    iget p2, p3, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    invoke-virtual {p1, p2}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable$ContainerState;Lmiuix/smooth/SmoothContainerDrawable$1;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/smooth/SmoothContainerDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable$ContainerState;)V

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
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    .line 53
    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;-><init>()V

    .line 56
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 59
    move-result-object p1

    .line 60
    iput-object p1, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 65
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 67
    iput-object v0, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

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

.method private obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 5

    .line 1
    if-nez p2, :cond_7

    .line 3
    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p2, p3, p4, p1, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 4
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 6
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    .line 8
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 13
    return-void
.end method

.method public canApplyTheme()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->canApplyTheme()Z

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
    .registers 11

    .line 1
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->getLayerType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_2c

    .line 8
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 14
    int-to-float v3, v0

    .line 15
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    .line 18
    move-result-object v0

    .line 19
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 21
    int-to-float v4, v0

    .line 22
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    .line 25
    move-result-object v0

    .line 26
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 28
    int-to-float v5, v0

    .line 29
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    .line 32
    move-result-object v0

    .line 33
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 35
    int-to-float v6, v0

    .line 36
    const/4 v7, 0x0

    .line 37
    const/16 v8, 0x1f

    .line 39
    move-object v2, p1

    .line 40
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 43
    move-result v0

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    const/4 v0, -0x1

    .line 46
    :goto_2d
    iget-object v2, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 48
    iget-object v2, v2, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    .line 50
    iget-object v2, v2, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    iget-object v2, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 57
    sget-object v3, Lmiuix/smooth/SmoothContainerDrawable;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    .line 59
    invoke-virtual {v2, p1, v3}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    .line 62
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->getLayerType()I

    .line 65
    move-result v2

    .line 66
    if-eq v2, v1, :cond_46

    .line 68
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 71
    :cond_46
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 73
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;)V

    .line 76
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->getAlpha()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getBoundsInner()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getChildDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    .line 7
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

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
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    return-object v0
.end method

.method public getCornerRadii()[F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

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
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    iget v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    .line 5
    return v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->getDirtyBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->getIntrinsicHeight()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->getIntrinsicWidth()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLayerType()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    iget v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mLayerType:I

    .line 5
    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->getOpacity()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_14

    .line 7
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 9
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lmiuix/smooth/internal/SmoothDrawHelper;->getSmoothPath(Landroid/graphics/Rect;)Landroid/graphics/Path;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Landroidx/core/content/a;->n(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 20
    goto :goto_1f

    .line 21
    :cond_14
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->getCornerRadius()F

    .line 28
    move-result v1

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 32
    :goto_1f
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->getPadding(Landroid/graphics/Rect;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getStrokeColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    iget v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    .line 5
    return v0
.end method

.method public getStrokeWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    iget v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    .line 5
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 13

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 4
    sget-object v0, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable:[I

    .line 6
    invoke-direct {p0, p1, p4, p3, v0}, Lmiuix/smooth/SmoothContainerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object v0

    .line 10
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_radius:I

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    invoke-virtual {p0, v1}, Lmiuix/smooth/SmoothContainerDrawable;->setCornerRadius(F)V

    .line 21
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_topLeftRadius:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_34

    .line 29
    sget v3, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_topRightRadius:I

    .line 31
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_34

    .line 37
    sget v3, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_bottomRightRadius:I

    .line 39
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_34

    .line 45
    sget v3, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_bottomLeftRadius:I

    .line 47
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_6c

    .line 53
    :cond_34
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 56
    move-result v1

    .line 57
    int-to-float v1, v1

    .line 58
    sget v3, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_topRightRadius:I

    .line 60
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 63
    move-result v3

    .line 64
    int-to-float v3, v3

    .line 65
    sget v4, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_bottomRightRadius:I

    .line 67
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 70
    move-result v4

    .line 71
    int-to-float v4, v4

    .line 72
    sget v5, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_bottomLeftRadius:I

    .line 74
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 77
    move-result v5

    .line 78
    int-to-float v5, v5

    .line 79
    const/16 v6, 0x8

    .line 81
    new-array v6, v6, [F

    .line 83
    aput v1, v6, v2

    .line 85
    const/4 v7, 0x1

    .line 86
    aput v1, v6, v7

    .line 88
    const/4 v1, 0x2

    .line 89
    aput v3, v6, v1

    .line 91
    const/4 v1, 0x3

    .line 92
    aput v3, v6, v1

    .line 94
    const/4 v1, 0x4

    .line 95
    aput v4, v6, v1

    .line 97
    const/4 v1, 0x5

    .line 98
    aput v4, v6, v1

    .line 100
    const/4 v1, 0x6

    .line 101
    aput v5, v6, v1

    .line 103
    const/4 v1, 0x7

    .line 104
    aput v5, v6, v1

    .line 106
    invoke-virtual {p0, v6}, Lmiuix/smooth/SmoothContainerDrawable;->setCornerRadii([F)V

    .line 109
    :cond_6c
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_miuix_strokeWidth:I

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 114
    move-result v1

    .line 115
    invoke-virtual {p0, v1}, Lmiuix/smooth/SmoothContainerDrawable;->setStrokeWidth(I)V

    .line 118
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_miuix_strokeColor:I

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 123
    move-result v1

    .line 124
    invoke-virtual {p0, v1}, Lmiuix/smooth/SmoothContainerDrawable;->setStrokeColor(I)V

    .line 127
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_layerType:I

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 132
    move-result v1

    .line 133
    invoke-virtual {p0, v1}, Lmiuix/smooth/SmoothContainerDrawable;->setLayerType(I)V

    .line 136
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/smooth/SmoothContainerDrawable;->inflateInnerDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 142
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
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->isStateful()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public jumpToCurrentState()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->jumpToCurrentState()V

    .line 6
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 6
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 11
    return-void
.end method

.method public onStateChange([I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->onStateChange([I)Z

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
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->setAlpha(I)V

    .line 6
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setAlpha(I)V

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 14
    return-void
.end method

.method public setChangingConfigurations(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->setChangingConfigurations(I)V

    .line 6
    return-void
.end method

.method public setChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    .line 7
    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;-><init>()V

    .line 10
    iput-object p1, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 15
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 17
    iput-object v0, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    .line 19
    :cond_12
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6
    return-void
.end method

.method public setCornerRadii([F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    iput-object p1, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    .line 5
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    .line 10
    if-nez p1, :cond_15

    .line 12
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    .line 17
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 19
    invoke-virtual {p1, v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 25
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
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 16
    iput p1, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    .line 21
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 23
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    .line 26
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 28
    invoke-virtual {p1, v1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 34
    return-void
.end method

.method public setDither(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->setDither(Z)V

    .line 6
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->setFilterBitmap(Z)V

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
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 8
    iget v1, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mLayerType:I

    .line 10
    if-eq v1, p1, :cond_10

    .line 12
    iput p1, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mLayerType:I

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
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    iget v1, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    .line 5
    if-eq v1, p1, :cond_10

    .line 7
    iput p1, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    .line 9
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setStrokeColor(I)V

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 17
    :cond_10
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 3
    iget v1, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    .line 5
    if-eq v1, p1, :cond_10

    .line 7
    iput p1, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    .line 9
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setStrokeWidth(I)V

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 17
    :cond_10
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 4
    return-void
.end method
