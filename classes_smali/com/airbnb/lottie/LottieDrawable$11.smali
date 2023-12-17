.class Lcom/airbnb/lottie/LottieDrawable$11;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic val$endMarkerName:Ljava/lang/String;

.field public final synthetic val$playEndMarkerStartFrame:Z

.field public final synthetic val$startMarkerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$11;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    iput-object p2, p0, Lcom/airbnb/lottie/LottieDrawable$11;->val$startMarkerName:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/airbnb/lottie/LottieDrawable$11;->val$endMarkerName:Ljava/lang/String;

    .line 7
    iput-boolean p4, p0, Lcom/airbnb/lottie/LottieDrawable$11;->val$playEndMarkerStartFrame:Z

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$11;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$11;->val$startMarkerName:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable$11;->val$endMarkerName:Ljava/lang/String;

    .line 7
    iget-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable$11;->val$playEndMarkerStartFrame:Z

    .line 9
    invoke-virtual {p1, v0, v1, v2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    return-void
.end method
