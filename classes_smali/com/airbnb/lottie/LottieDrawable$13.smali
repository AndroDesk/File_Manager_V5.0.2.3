.class Lcom/airbnb/lottie/LottieDrawable$13;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxProgress(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic val$maxProgress:F

.field public final synthetic val$minProgress:F


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;FF)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$13;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$13;->val$minProgress:F

    .line 5
    iput p3, p0, Lcom/airbnb/lottie/LottieDrawable$13;->val$maxProgress:F

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$13;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable$13;->val$minProgress:F

    .line 5
    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable$13;->val$maxProgress:F

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxProgress(FF)V

    .line 10
    return-void
.end method
