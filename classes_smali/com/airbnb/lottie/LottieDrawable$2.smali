.class Lcom/airbnb/lottie/LottieDrawable$2;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V
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
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$2;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$2;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 6
    return-void
.end method
