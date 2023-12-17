.class Lmiuix/navigator/draganddrop/DragHelper$2;
.super Lmiuix/animation/property/FloatProperty;
.source "DragHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/draganddrop/DragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/FloatProperty<",
        "Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    invoke-virtual {p0, p1}, Lmiuix/navigator/draganddrop/DragHelper$2;->getValue(Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;)F

    move-result p1

    return p1
.end method

.method public getValue(Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;)F
    .registers 2

    invoke-virtual {p1}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->getAlpha()F

    move-result p1

    return p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;

    invoke-virtual {p0, p1, p2}, Lmiuix/navigator/draganddrop/DragHelper$2;->setValue(Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;F)V

    return-void
.end method

.method public setValue(Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;F)V
    .registers 3

    invoke-virtual {p1, p2}, Lmiuix/navigator/draganddrop/DragHelper$MaskHelper;->setAlpha(F)V

    return-void
.end method
