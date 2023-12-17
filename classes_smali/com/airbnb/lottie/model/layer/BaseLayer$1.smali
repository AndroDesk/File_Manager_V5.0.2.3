.class Lcom/airbnb/lottie/model/layer/BaseLayer$1;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/model/layer/BaseLayer;->setupInOutAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/airbnb/lottie/model/layer/BaseLayer;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/layer/BaseLayer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer$1;->this$0:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onValueChanged()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer$1;->this$0:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 3
    invoke-static {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->access$000(Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    .line 10
    move-result v1

    .line 11
    const/high16 v2, 0x3f800000  # 1.0f

    .line 13
    cmpl-float v1, v1, v2

    .line 15
    if-nez v1, :cond_12

    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v1, 0x0

    .line 20
    :goto_13
    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->access$100(Lcom/airbnb/lottie/model/layer/BaseLayer;Z)V

    .line 23
    return-void
.end method
