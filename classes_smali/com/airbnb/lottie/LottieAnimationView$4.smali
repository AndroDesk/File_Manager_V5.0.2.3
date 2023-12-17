.class Lcom/airbnb/lottie/LottieAnimationView$4;
.super Lcom/airbnb/lottie/value/LottieValueCallback;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/LottieValueCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic val$callback:Lcom/airbnb/lottie/value/SimpleLottieValueCallback;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$4;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    .line 3
    iput-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView$4;->val$callback:Lcom/airbnb/lottie/value/SimpleLottieValueCallback;

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$4;->val$callback:Lcom/airbnb/lottie/value/SimpleLottieValueCallback;

    .line 3
    invoke-interface {v0, p1}, Lcom/airbnb/lottie/value/SimpleLottieValueCallback;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
