.class public final Lf1/w$b;
.super Landroid/util/Property;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3

    .line 1
    const-string v0, "clipBounds"

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    .line 3
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {p1}, Lm0/g0$f;->a(Landroid/view/View;)Landroid/graphics/Rect;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Landroid/view/View;

    .line 3
    check-cast p2, Landroid/graphics/Rect;

    .line 5
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {p1, p2}, Lm0/g0$f;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10
    return-void
.end method
