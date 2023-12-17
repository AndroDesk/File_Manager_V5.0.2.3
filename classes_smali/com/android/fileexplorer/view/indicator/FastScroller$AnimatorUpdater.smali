.class Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/indicator/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatorUpdater"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/indicator/FastScroller;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/view/indicator/FastScroller;Lcom/android/fileexplorer/view/indicator/FastScroller$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;-><init>(Lcom/android/fileexplorer/view/indicator/FastScroller;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$600(Lcom/android/fileexplorer/view/indicator/FastScroller;)Z

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$700(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$700(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_29
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$800(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$800(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3a
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    sub-float v3, v2, p1

    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1000(Lcom/android/fileexplorer/view/indicator/FastScroller;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1, v3}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$902(Lcom/android/fileexplorer/view/indicator/FastScroller;I)I

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1100(Lcom/android/fileexplorer/view/indicator/FastScroller;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$900(Lcom/android/fileexplorer/view/indicator/FastScroller;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v1, v3}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$902(Lcom/android/fileexplorer/view/indicator/FastScroller;I)I

    :cond_5a
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1200(Lcom/android/fileexplorer/view/indicator/FastScroller;)Z

    move-result v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1300(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1300(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_73
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1400(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1400(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_84
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    sub-float/2addr v2, p1

    invoke-static {v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1600(Lcom/android/fileexplorer/view/indicator/FastScroller;)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v2, p1

    float-to-int p1, v2

    invoke-static {v0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1502(Lcom/android/fileexplorer/view/indicator/FastScroller;I)I

    :cond_91
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$500(Lcom/android/fileexplorer/view/indicator/FastScroller;)V

    return-void
.end method
