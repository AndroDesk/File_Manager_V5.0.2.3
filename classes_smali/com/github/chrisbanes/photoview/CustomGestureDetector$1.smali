.class Lcom/github/chrisbanes/photoview/CustomGestureDetector$1;
.super Ljava/lang/Object;
.source "CustomGestureDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/chrisbanes/photoview/CustomGestureDetector;-><init>(Landroid/content/Context;Lcom/github/chrisbanes/photoview/OnGestureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/github/chrisbanes/photoview/CustomGestureDetector;


# direct methods
.method public constructor <init>(Lcom/github/chrisbanes/photoview/CustomGestureDetector;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector$1;->this$0:Lcom/github/chrisbanes/photoview/CustomGestureDetector;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_24

    .line 11
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_11

    .line 17
    goto :goto_24

    .line 18
    :cond_11
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector$1;->this$0:Lcom/github/chrisbanes/photoview/CustomGestureDetector;

    .line 20
    invoke-static {v1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->access$000(Lcom/github/chrisbanes/photoview/CustomGestureDetector;)Lcom/github/chrisbanes/photoview/OnGestureListener;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 27
    move-result v2

    .line 28
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 31
    move-result p1

    .line 32
    invoke-interface {v1, v0, v2, p1}, Lcom/github/chrisbanes/photoview/OnGestureListener;->onScale(FFF)V

    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_24
    :goto_24
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    return-void
.end method
