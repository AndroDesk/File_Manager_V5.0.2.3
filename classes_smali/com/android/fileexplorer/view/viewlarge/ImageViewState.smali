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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/PointF;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->mScale:F

    iget p1, p2, Landroid/graphics/PointF;->x:F

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->mCenterX:F

    iget p1, p2, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->mCenterY:F

    iput p3, p0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->mOrientation:I

    return-void
.end method


# virtual methods
.method public getCenter()Landroid/graphics/PointF;
    .registers 4

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->mCenterX:F

    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->mCenterY:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->mOrientation:I

    return v0
.end method

.method public getScale()F
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageViewState;->mScale:F

    return v0
.end method
