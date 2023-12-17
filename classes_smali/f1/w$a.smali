.class public final Lf1/w$a;
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    const-class v0, Ljava/lang/Float;

    .line 3
    const-string v1, "translationAlpha"

    .line 5
    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    .line 3
    sget-object v0, Lf1/w;->a:Lf1/b0;

    .line 5
    invoke-virtual {v0, p1}, Lf1/y;->g0(Landroid/view/View;)F

    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Landroid/view/View;

    .line 3
    check-cast p2, Ljava/lang/Float;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 8
    move-result p2

    .line 9
    sget-object v0, Lf1/w;->a:Lf1/b0;

    .line 11
    invoke-virtual {v0, p2, p1}, Lf1/y;->h0(FLandroid/view/View;)V

    .line 14
    return-void
.end method
