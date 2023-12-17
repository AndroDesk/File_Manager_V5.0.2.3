.class Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$1;
.super Ljava/lang/Object;
.source "LoadMoreView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->access$000(Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;)Landroid/widget/ImageView;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Float;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 16
    move-result p1

    .line 17
    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 20
    return-void
.end method
