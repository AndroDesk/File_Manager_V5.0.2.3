.class Lcom/airbnb/lottie/LottieDrawable$5;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->setMinProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic val$minProgress:F


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;F)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$5;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$5;->val$minProgress:F

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$5;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable$5;->val$minProgress:F

    .line 5
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieDrawable;->setMinProgress(F)V

    .line 8
    return-void
.end method
