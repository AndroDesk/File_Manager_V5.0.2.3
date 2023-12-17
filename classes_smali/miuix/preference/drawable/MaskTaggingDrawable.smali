.class public Lmiuix/preference/drawable/MaskTaggingDrawable;
.super Lmiuix/internal/graphics/drawable/TaggingDrawable;
.source "MaskTaggingDrawable.java"


# instance fields
.field private mClipPaint:Landroid/graphics/Paint;

.field private mDrawCornerBottom:Z

.field private mDrawCornerTop:Z

.field private mLeft:I

.field private mMaskEnabled:Z

.field private mMaskPaddingBottom:I

.field private mMaskPaddingEnd:I

.field private mMaskPaddingStart:I

.field private mMaskPaddingTop:I

.field private mMaskRadius:I

.field private mRight:I

.field private mRtl:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/internal/graphics/drawable/TaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mDrawCornerTop:Z

    .line 3
    iput-boolean p1, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mDrawCornerBottom:Z

    .line 4
    iput-boolean p1, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;[I)V
    .registers 3

    .line 5
    invoke-direct {p0, p1, p2}, Lmiuix/internal/graphics/drawable/TaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;[I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mDrawCornerTop:Z

    .line 7
    iput-boolean p1, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mDrawCornerBottom:Z

    .line 8
    iput-boolean p1, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskEnabled:Z

    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;IIIIZZZZ)V
    .registers 13

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float p3, p3

    int-to-float v2, p4

    int-to-float p5, p5

    invoke-direct {v0, v1, p3, v2, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p9, :cond_e

    .line 2
    iget v1, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskPaddingEnd:I

    goto :goto_10

    :cond_e
    iget v1, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskPaddingStart:I

    :goto_10
    if-eqz p9, :cond_15

    .line 3
    iget p9, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskPaddingStart:I

    goto :goto_17

    :cond_15
    iget p9, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskPaddingEnd:I

    .line 4
    :goto_17
    new-instance v2, Landroid/graphics/RectF;

    add-int/2addr p2, v1

    int-to-float p2, p2

    sub-int/2addr p4, p9

    int-to-float p4, p4

    invoke-direct {v2, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 5
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    const/4 p3, 0x0

    if-eqz p6, :cond_2c

    .line 6
    iget p4, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskRadius:I

    int-to-float p4, p4

    goto :goto_2d

    :cond_2c
    move p4, p3

    :goto_2d
    if-eqz p7, :cond_32

    .line 7
    iget p3, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskRadius:I

    int-to-float p3, p3

    :cond_32
    const/16 p5, 0x8

    new-array p5, p5, [F

    const/4 p6, 0x0

    aput p4, p5, p6

    const/4 p6, 0x1

    aput p4, p5, p6

    const/4 p6, 0x2

    aput p4, p5, p6

    const/4 p6, 0x3

    aput p4, p5, p6

    const/4 p4, 0x4

    aput p3, p5, p4

    const/4 p4, 0x5

    aput p3, p5, p4

    const/4 p4, 0x6

    aput p3, p5, p4

    const/4 p4, 0x7

    aput p3, p5, p4

    .line 8
    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v2, p5, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 9
    iget-object p3, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mClipPaint:Landroid/graphics/Paint;

    const/16 p4, 0x1f

    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result p3

    .line 10
    iget-object p4, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz p8, :cond_6f

    .line 11
    iget-object p4, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mClipPaint:Landroid/graphics/Paint;

    new-instance p5, Landroid/graphics/PorterDuffXfermode;

    sget-object p6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p5, p6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_7b

    .line 12
    :cond_6f
    iget-object p4, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mClipPaint:Landroid/graphics/Paint;

    new-instance p5, Landroid/graphics/PorterDuffXfermode;

    sget-object p6, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p5, p6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 13
    :goto_7b
    iget-object p4, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 14
    iget-object p2, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mClipPaint:Landroid/graphics/Paint;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 15
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 1
    invoke-super {p0, p1}, Lmiuix/internal/graphics/drawable/DrawableWrapperCompat;->draw(Landroid/graphics/Canvas;)V

    .line 4
    iget-boolean v0, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskEnabled:Z

    .line 6
    if-eqz v0, :cond_4d

    .line 8
    iget-object v0, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mClipPaint:Landroid/graphics/Paint;

    .line 10
    if-eqz v0, :cond_4d

    .line 12
    iget v0, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mLeft:I

    .line 14
    if-nez v0, :cond_13

    .line 16
    iget v0, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mRight:I

    .line 18
    if-eqz v0, :cond_4d

    .line 20
    :cond_13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 23
    move-result-object v10

    .line 24
    iget v2, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mLeft:I

    .line 26
    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 28
    iget v0, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskPaddingTop:I

    .line 30
    sub-int v3, v5, v0

    .line 32
    iget v4, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mRight:I

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v8, 0x1

    .line 37
    iget-boolean v9, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mRtl:Z

    .line 39
    move-object v0, p0

    .line 40
    move-object v1, p1

    .line 41
    invoke-direct/range {v0 .. v9}, Lmiuix/preference/drawable/MaskTaggingDrawable;->drawMask(Landroid/graphics/Canvas;IIIIZZZZ)V

    .line 44
    iget v2, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mLeft:I

    .line 46
    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 48
    iget v4, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mRight:I

    .line 50
    iget v0, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskPaddingBottom:I

    .line 52
    add-int v5, v3, v0

    .line 54
    iget-boolean v9, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mRtl:Z

    .line 56
    move-object v0, p0

    .line 57
    invoke-direct/range {v0 .. v9}, Lmiuix/preference/drawable/MaskTaggingDrawable;->drawMask(Landroid/graphics/Canvas;IIIIZZZZ)V

    .line 60
    iget v2, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mLeft:I

    .line 62
    iget v3, v10, Landroid/graphics/Rect;->top:I

    .line 64
    iget v4, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mRight:I

    .line 66
    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    .line 68
    iget-boolean v6, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mDrawCornerTop:Z

    .line 70
    iget-boolean v7, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mDrawCornerBottom:Z

    .line 72
    const/4 v8, 0x0

    .line 73
    iget-boolean v9, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mRtl:Z

    .line 75
    invoke-direct/range {v0 .. v9}, Lmiuix/preference/drawable/MaskTaggingDrawable;->drawMask(Landroid/graphics/Canvas;IIIIZZZZ)V

    .line 78
    :cond_4d
    return-void
.end method

.method public getMaskEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskEnabled:Z

    .line 3
    return v0
.end method

.method public setClipPaint(Landroid/graphics/Paint;IIIII)V
    .registers 7

    .line 1
    iput-object p1, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mClipPaint:Landroid/graphics/Paint;

    .line 3
    iput p2, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskPaddingTop:I

    .line 5
    iput p3, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskPaddingBottom:I

    .line 7
    iput p4, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskPaddingStart:I

    .line 9
    iput p5, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskPaddingEnd:I

    .line 11
    iput p6, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskRadius:I

    .line 13
    return-void
.end method

.method public setLeftRight(IIZ)V
    .registers 4

    .line 1
    iput-boolean p3, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mRtl:Z

    .line 3
    iput p1, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mLeft:I

    .line 5
    iput p2, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mRight:I

    .line 7
    return-void
.end method

.method public setMaskEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mMaskEnabled:Z

    .line 3
    return-void
.end method

.method public updateDrawCorner(ZZ)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mDrawCornerTop:Z

    .line 3
    iput-boolean p2, p0, Lmiuix/preference/drawable/MaskTaggingDrawable;->mDrawCornerBottom:Z

    .line 5
    return-void
.end method
