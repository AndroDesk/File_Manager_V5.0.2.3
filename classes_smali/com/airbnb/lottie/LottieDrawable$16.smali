.class Lcom/airbnb/lottie/LottieDrawable$16;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic val$callback:Lcom/airbnb/lottie/value/LottieValueCallback;

.field public final synthetic val$keyPath:Lcom/airbnb/lottie/model/KeyPath;

.field public final synthetic val$property:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$16;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    iput-object p2, p0, Lcom/airbnb/lottie/LottieDrawable$16;->val$keyPath:Lcom/airbnb/lottie/model/KeyPath;

    .line 5
    iput-object p3, p0, Lcom/airbnb/lottie/LottieDrawable$16;->val$property:Ljava/lang/Object;

    .line 7
    iput-object p4, p0, Lcom/airbnb/lottie/LottieDrawable$16;->val$callback:Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$16;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$16;->val$keyPath:Lcom/airbnb/lottie/model/KeyPath;

    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable$16;->val$property:Ljava/lang/Object;

    .line 7
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable$16;->val$callback:Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 9
    invoke-virtual {p1, v0, v1, v2}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 12
    return-void
.end method
