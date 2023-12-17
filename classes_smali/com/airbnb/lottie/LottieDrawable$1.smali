.class Lcom/airbnb/lottie/LottieDrawable$1;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$1;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$1;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    invoke-static {p1}, Lcom/airbnb/lottie/LottieDrawable;->access$000(Lcom/airbnb/lottie/LottieDrawable;)Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1b

    .line 9
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$1;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 11
    invoke-static {p1}, Lcom/airbnb/lottie/LottieDrawable;->access$000(Lcom/airbnb/lottie/LottieDrawable;)Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$1;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 17
    invoke-static {v0}, Lcom/airbnb/lottie/LottieDrawable;->access$100(Lcom/airbnb/lottie/LottieDrawable;)Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setProgress(F)V

    .line 28
    :cond_1b
    return-void
.end method
