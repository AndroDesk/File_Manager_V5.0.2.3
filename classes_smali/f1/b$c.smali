.class public final Lf1/b$c;
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
        "Lf1/b$i;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3

    const-string v0, "bottomRight"

    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lf1/b$i;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    check-cast p1, Lf1/b$i;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Lf1/b$i;->c:I

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lf1/b$i;->d:I

    iget v0, p1, Lf1/b$i;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lf1/b$i;->g:I

    iget v1, p1, Lf1/b$i;->f:I

    if-ne v1, v0, :cond_31

    iget-object v0, p1, Lf1/b$i;->e:Landroid/view/View;

    iget v1, p1, Lf1/b$i;->a:I

    iget v2, p1, Lf1/b$i;->b:I

    iget v3, p1, Lf1/b$i;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Lf1/w;->a(Landroid/view/View;IIII)V

    const/4 p2, 0x0

    iput p2, p1, Lf1/b$i;->f:I

    iput p2, p1, Lf1/b$i;->g:I

    :cond_31
    return-void
.end method
