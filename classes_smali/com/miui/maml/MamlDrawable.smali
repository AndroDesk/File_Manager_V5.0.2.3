.class public Lcom/miui/maml/MamlDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MamlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/MamlDrawable$MamlDrawableState;
    }
.end annotation


# static fields
.field private static sLayerBadgeDrawableBmpRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field public mBadgeLocation:Landroid/graphics/Rect;

.field public mColorFilter:Landroid/graphics/ColorFilter;

.field public mHeight:I

.field public mIntrinsicHeight:I

.field public mIntrinsicWidth:I

.field public mInvalidateSelf:Ljava/lang/Runnable;

.field public mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    new-instance v0, Lcom/miui/maml/MamlDrawable$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/miui/maml/MamlDrawable$1;-><init>(Lcom/miui/maml/MamlDrawable;)V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/MamlDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    .line 11
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 1

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/MamlDrawable;->drawIcon(Landroid/graphics/Canvas;)V

    .line 4
    :try_start_3
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_46

    .line 8
    iget-object v1, p0, Lcom/miui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_30

    .line 13
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 16
    move-result v1

    .line 17
    iget-object v3, p0, Lcom/miui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 22
    move-result v3

    .line 23
    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    .line 31
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 33
    int-to-float v1, v1

    .line 34
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 36
    int-to-float v0, v0

    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 48
    goto :goto_46

    .line 49
    :cond_30
    iget v1, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 51
    iget v3, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 53
    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 56
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3c} :catch_42
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3c} :catch_3d

    .line 61
    goto :goto_46

    .line 62
    :catch_3d
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    goto :goto_46

    .line 67
    :catch_42
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    :cond_46
    :goto_46
    return-void
.end method

.method public drawIcon(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public finalize()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/MamlDrawable;->cleanUp()V

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    .line 3
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 3
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 3
    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_44

    .line 4
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 6
    if-ltz v1, :cond_1c

    .line 8
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 10
    if-ltz v1, :cond_1c

    .line 12
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 15
    move-result v1

    .line 16
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 18
    if-gt v1, v2, :cond_1c

    .line 20
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 23
    move-result v1

    .line 24
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 26
    if-gt v1, v2, :cond_1c

    .line 28
    goto :goto_44

    .line 29
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v2, "Badge location "

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string p2, " not in badged drawable bounds "

    .line 46
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance p2, Landroid/graphics/Rect;

    .line 51
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 53
    iget v3, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 55
    invoke-direct {p2, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 58
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1

    .line 69
    :cond_44
    :goto_44
    instance-of v1, p1, Landroid/graphics/drawable/LayerDrawable;

    .line 71
    if-eqz v1, :cond_87

    .line 73
    const/4 v1, 0x0

    .line 74
    sget-object v2, Lcom/miui/maml/MamlDrawable;->sLayerBadgeDrawableBmpRef:Ljava/lang/ref/WeakReference;

    .line 76
    if-eqz v2, :cond_53

    .line 78
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 84
    :cond_53
    if-eqz v1, :cond_5a

    .line 86
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 89
    move-result-object p1

    .line 90
    goto :goto_87

    .line 91
    :cond_5a
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 94
    move-result v1

    .line 95
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 98
    move-result v2

    .line 99
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 101
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 104
    move-result-object v1

    .line 105
    new-instance v2, Landroid/graphics/Canvas;

    .line 107
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    .line 113
    move-result v3

    .line 114
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    .line 117
    move-result v4

    .line 118
    invoke-virtual {p1, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 126
    invoke-direct {p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 129
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 131
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 134
    sput-object v0, Lcom/miui/maml/MamlDrawable;->sLayerBadgeDrawableBmpRef:Ljava/lang/ref/WeakReference;

    .line 136
    :cond_87
    :goto_87
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 138
    if-eqz v0, :cond_90

    .line 140
    if-eqz p1, :cond_90

    .line 142
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 145
    :cond_90
    iput-object p1, p0, Lcom/miui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 147
    iput-object p2, p0, Lcom/miui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    .line 149
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    .line 151
    iput-object p1, v0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    iput-object p2, v0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    .line 155
    return-void
.end method

.method public setBounds(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    sub-int/2addr p3, p1

    .line 5
    iput p3, p0, Lcom/miui/maml/MamlDrawable;->mWidth:I

    .line 7
    sub-int/2addr p4, p2

    .line 8
    iput p4, p0, Lcom/miui/maml/MamlDrawable;->mHeight:I

    .line 10
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/MamlDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 3
    return-void
.end method

.method public setIntrinsicSize(II)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 3
    iput p2, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 5
    return-void
.end method
