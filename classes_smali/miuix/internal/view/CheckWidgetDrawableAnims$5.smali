.class Lmiuix/internal/view/CheckWidgetDrawableAnims$5;
.super Lmiuix/animation/property/FloatProperty;
.source "CheckWidgetDrawableAnims.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/view/CheckWidgetDrawableAnims;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/FloatProperty<",
        "Lmiuix/internal/view/CheckWidgetCircleDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;


# direct methods
.method public constructor <init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$5;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 3
    invoke-direct {p0, p2}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 1
    check-cast p1, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p0, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims$5;->getValue(Lmiuix/internal/view/CheckWidgetCircleDrawable;)F

    move-result p1

    return p1
.end method

.method public getValue(Lmiuix/internal/view/CheckWidgetCircleDrawable;)F
    .registers 2

    .line 2
    invoke-virtual {p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->getAlpha()I

    move-result p1

    div-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    return p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p0, p1, p2}, Lmiuix/internal/view/CheckWidgetDrawableAnims$5;->setValue(Lmiuix/internal/view/CheckWidgetCircleDrawable;F)V

    return-void
.end method

.method public setValue(Lmiuix/internal/view/CheckWidgetCircleDrawable;F)V
    .registers 5

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_7

    move p2, v0

    :cond_7
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_d

    move p2, v0

    :cond_d
    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 2
    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    return-void
.end method
