.class public final Ly/r;
.super Ljava/lang/Object;
.source "ViewTransition.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:Lu/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lu/c;)V
    .registers 2

    iput-object p1, p0, Ly/r;->a:Lu/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 5

    iget-object v0, p0, Ly/r;->a:Lu/c;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lu/c;->a(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method
