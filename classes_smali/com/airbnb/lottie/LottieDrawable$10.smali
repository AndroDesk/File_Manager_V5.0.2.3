.class Lcom/airbnb/lottie/LottieDrawable$10;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic val$markerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$10;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    iput-object p2, p0, Lcom/airbnb/lottie/LottieDrawable$10;->val$markerName:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$10;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$10;->val$markerName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V

    .line 8
    return-void
.end method
