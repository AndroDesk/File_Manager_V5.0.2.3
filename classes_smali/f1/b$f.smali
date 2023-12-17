.class public final Lf1/b$f;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3

    .line 1
    const-string v0, "position"

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 1
    check-cast p1, Landroid/view/View;

    .line 3
    check-cast p2, Landroid/graphics/PointF;

    .line 5
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 7
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 10
    move-result v0

    .line 11
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 13
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 16
    move-result p2

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 20
    move-result v1

    .line 21
    add-int/2addr v1, v0

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 25
    move-result v2

    .line 26
    add-int/2addr v2, p2

    .line 27
    invoke-static {p1, v0, p2, v1, v2}, Lf1/w;->a(Landroid/view/View;IIII)V

    .line 30
    return-void
.end method
