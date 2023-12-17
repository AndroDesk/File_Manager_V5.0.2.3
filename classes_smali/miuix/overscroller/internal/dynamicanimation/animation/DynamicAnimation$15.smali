.class Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$15;
.super Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

.field public final synthetic val$floatValueHolder:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;


# direct methods
.method public constructor <init>(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;Ljava/lang/String;Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$15;->this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 3
    iput-object p3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;

    .line 5
    invoke-direct {p0, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .registers 2

    .line 1
    iget-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;

    .line 3
    invoke-virtual {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;->getValue()F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;

    .line 3
    invoke-virtual {p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 6
    return-void
.end method
