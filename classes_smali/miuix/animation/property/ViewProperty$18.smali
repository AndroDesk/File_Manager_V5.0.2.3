.class Lmiuix/animation/property/ViewProperty$18;
.super Lmiuix/animation/property/ViewProperty;
.source "ViewProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/property/ViewProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    .line 3
    invoke-virtual {p0, p1}, Lmiuix/animation/property/ViewProperty$18;->getValue(Landroid/view/View;)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    .line 3
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/property/ViewProperty$18;->setValue(Landroid/view/View;F)V

    .line 6
    return-void
.end method
