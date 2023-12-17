.class public abstract La1/a;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/lifecycle/m;)La1/b;
    .registers 3

    new-instance v0, La1/b;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/f0;

    invoke-interface {v1}, Landroidx/lifecycle/f0;->getViewModelStore()Landroidx/lifecycle/e0;

    move-result-object v1

    invoke-direct {v0, p0, v1}, La1/b;-><init>(Landroidx/lifecycle/m;Landroidx/lifecycle/e0;)V

    return-object v0
.end method
