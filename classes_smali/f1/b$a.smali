.class public final Lf1/b$a;
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
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3

    .line 1
    const-string v0, "boundsOrigin"

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iput-object p1, p0, Lf1/b$a;->a:Landroid/graphics/Rect;

    .line 13
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v0, p0, Lf1/b$a;->a:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 8
    new-instance p1, Landroid/graphics/PointF;

    .line 10
    iget-object v0, p0, Lf1/b$a;->a:Landroid/graphics/Rect;

    .line 12
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 14
    int-to-float v1, v1

    .line 15
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 21
    return-object p1
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 3
    check-cast p2, Landroid/graphics/PointF;

    .line 5
    iget-object v0, p0, Lf1/b$a;->a:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 10
    iget-object v0, p0, Lf1/b$a;->a:Landroid/graphics/Rect;

    .line 12
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 14
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 17
    move-result v1

    .line 18
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 20
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 23
    move-result p2

    .line 24
    invoke-virtual {v0, v1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 27
    iget-object p2, p0, Lf1/b$a;->a:Landroid/graphics/Rect;

    .line 29
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 32
    return-void
.end method
