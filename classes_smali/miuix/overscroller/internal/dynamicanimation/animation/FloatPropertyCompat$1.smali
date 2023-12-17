.class Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat$1;
.super Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;
.source "FloatPropertyCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;->createFloatPropertyCompat(Landroid/util/FloatProperty;)Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic val$property:Landroid/util/FloatProperty;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/FloatProperty;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat$1;->val$property:Landroid/util/FloatProperty;

    .line 3
    invoke-direct {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat$1;->val$property:Landroid/util/FloatProperty;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Float;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat$1;->val$property:Landroid/util/FloatProperty;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 6
    return-void
.end method
