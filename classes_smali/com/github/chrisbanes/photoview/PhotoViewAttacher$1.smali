.class Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoViewAttacher.java"


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
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$200(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnSingleFlingListener;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_38

    .line 10
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 12
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getScale()F

    .line 15
    move-result v0

    .line 16
    invoke-static {}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$300()F

    .line 19
    move-result v2

    .line 20
    cmpl-float v0, v0, v2

    .line 22
    if-lez v0, :cond_18

    .line 24
    return v1

    .line 25
    :cond_18
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    .line 28
    move-result v0

    .line 29
    invoke-static {}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$400()I

    .line 32
    move-result v2

    .line 33
    if-gt v0, v2, :cond_38

    .line 35
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    .line 38
    move-result v0

    .line 39
    invoke-static {}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$400()I

    .line 42
    move-result v2

    .line 43
    if-le v0, v2, :cond_2d

    .line 45
    goto :goto_38

    .line 46
    :cond_2d
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 48
    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$200(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnSingleFlingListener;

    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/github/chrisbanes/photoview/OnSingleFlingListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_38
    :goto_38
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-static {p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$000(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_17

    .line 9
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 11
    invoke-static {p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$000(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$1;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 17
    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$100(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 24
    :cond_17
    return-void
.end method
