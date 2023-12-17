.class public Lcom/android/fileexplorer/view/viewlarge/ImageViewState;
.super Ljava/lang/Object;
.source "ImageViewState.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mOrientation:I

.field private mScale:F


# direct methods
.method public constructor <init>(FLandroid/graphics/PointF;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->mScale:F

    .line 6
    iget p1, p2, Landroid/graphics/PointF;->x:F

    .line 8
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->mCenterX:F

    .line 10
    iget p1, p2, Landroid/graphics/PointF;->y:F

    .line 12
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->mCenterY:F

    .line 14
    iput p3, p0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->mOrientation:I

    .line 16
    return-void
.end method


# virtual methods
.method public getCenter()Landroid/graphics/PointF;
    .registers 4

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->mCenterX:F

    .line 5
    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->mCenterY:F

    .line 7
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 10
    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->mOrientation:I

    .line 3
    return v0
.end method

.method public getScale()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->mScale:F

    .line 3
    return v0
.end method
