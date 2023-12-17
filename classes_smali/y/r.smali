.class public final Ly/r;
.super Ljava/lang/Object;
.source "ViewTransition.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:Lu/c;


# direct methods
.method public constructor <init>(Lu/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ly/r;->a:Lu/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 5

    .line 1
    iget-object v0, p0, Ly/r;->a:Lu/c;

    .line 3
    float-to-double v1, p1

    .line 4
    invoke-virtual {v0, v1, v2}, Lu/c;->a(D)D

    .line 7
    move-result-wide v0

    .line 8
    double-to-float p1, v0

    .line 9
    return p1
.end method
