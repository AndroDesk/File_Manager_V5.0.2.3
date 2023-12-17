.class Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/chrisbanes/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 4
    invoke-virtual {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getScale()F

    .line 7
    move-result v1

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 11
    move-result v2

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 15
    move-result p1

    .line 16
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 18
    invoke-virtual {v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getMediumScale()F

    .line 21
    move-result v3

    .line 22
    cmpg-float v3, v1, v3

    .line 24
    if-gez v3, :cond_23

    .line 26
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 28
    invoke-virtual {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getMediumScale()F

    .line 31
    move-result v3

    .line 32
    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 35
    goto :goto_4a

    .line 36
    :cond_23
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 38
    invoke-virtual {v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getMediumScale()F

    .line 41
    move-result v3

    .line 42
    cmpl-float v3, v1, v3

    .line 44
    if-ltz v3, :cond_41

    .line 46
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 48
    invoke-virtual {v3}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getMaximumScale()F

    .line 51
    move-result v3

    .line 52
    cmpg-float v1, v1, v3

    .line 54
    if-gez v1, :cond_41

    .line 56
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 58
    invoke-virtual {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getMaximumScale()F

    .line 61
    move-result v3

    .line 62
    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 65
    goto :goto_4a

    .line 66
    :cond_41
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 68
    invoke-virtual {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getMinimumScale()F

    .line 71
    move-result v3

    .line 72
    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setScale(FFFZ)V
    :try_end_4a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_4a} :catch_4a

    .line 75
    :catch_4a
    :goto_4a
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$500(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/view/View$OnClickListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_17

    .line 9
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 11
    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$500(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/view/View$OnClickListener;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 17
    invoke-static {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$100(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 26
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_6d

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 39
    move-result p1

    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_56

    .line 46
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 48
    sub-float/2addr v1, v2

    .line 49
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 52
    move-result v2

    .line 53
    div-float/2addr v1, v2

    .line 54
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 56
    sub-float/2addr p1, v2

    .line 57
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 60
    move-result v0

    .line 61
    div-float/2addr p1, v0

    .line 62
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 64
    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$600(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnPhotoTapListener;

    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_54

    .line 70
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 72
    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$600(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnPhotoTapListener;

    .line 75
    move-result-object v0

    .line 76
    iget-object v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 78
    invoke-static {v2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$100(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v0, v2, v1, p1}, Lcom/github/chrisbanes/photoview/OnPhotoTapListener;->onPhotoTap(Landroid/widget/ImageView;FF)V

    .line 85
    :cond_54
    const/4 p1, 0x1

    .line 86
    return p1

    .line 87
    :cond_56
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 89
    invoke-static {p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$700(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;

    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_6d

    .line 95
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 97
    invoke-static {p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$700(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;

    .line 100
    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$2;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 103
    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$100(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    .line 106
    move-result-object v0

    .line 107
    invoke-interface {p1, v0}, Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;->onOutsidePhotoTap(Landroid/widget/ImageView;)V

    .line 110
    :cond_6d
    const/4 p1, 0x0

    .line 111
    return p1
.end method
