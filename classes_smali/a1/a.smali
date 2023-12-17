.class public abstract La1/a;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Landroidx/lifecycle/m;)La1/b;
    .registers 3

    .line 1
    new-instance v0, La1/b;

    .line 3
    move-object v1, p0

    .line 4
    check-cast v1, Landroidx/lifecycle/f0;

    .line 6
    invoke-interface {v1}, Landroidx/lifecycle/f0;->getViewModelStore()Landroidx/lifecycle/e0;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, La1/b;-><init>(Landroidx/lifecycle/m;Landroidx/lifecycle/e0;)V

    .line 13
    return-object v0
.end method
