.class Lmiuix/animation/physics/DynamicAnimation$1;
.super Lmiuix/animation/property/FloatProperty;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/physics/DynamicAnimation;-><init>(Lmiuix/animation/property/FloatValueHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/animation/physics/DynamicAnimation;

.field public final synthetic val$floatValueHolder:Lmiuix/animation/property/FloatValueHolder;


# direct methods
.method public constructor <init>(Lmiuix/animation/physics/DynamicAnimation;Ljava/lang/String;Lmiuix/animation/property/FloatValueHolder;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/animation/physics/DynamicAnimation$1;->this$0:Lmiuix/animation/physics/DynamicAnimation;

    .line 3
    iput-object p3, p0, Lmiuix/animation/physics/DynamicAnimation$1;->val$floatValueHolder:Lmiuix/animation/property/FloatValueHolder;

    .line 5
    invoke-direct {p0, p2}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .registers 2

    .line 1
    iget-object p1, p0, Lmiuix/animation/physics/DynamicAnimation$1;->val$floatValueHolder:Lmiuix/animation/property/FloatValueHolder;

    .line 3
    invoke-virtual {p1}, Lmiuix/animation/property/FloatValueHolder;->getValue()F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/animation/physics/DynamicAnimation$1;->val$floatValueHolder:Lmiuix/animation/property/FloatValueHolder;

    .line 3
    invoke-virtual {p1, p2}, Lmiuix/animation/property/FloatValueHolder;->setValue(F)V

    .line 6
    return-void
.end method
