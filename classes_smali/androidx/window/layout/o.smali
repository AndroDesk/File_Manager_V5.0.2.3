.class public final synthetic Landroidx/window/layout/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll0/a;


# instance fields
.field public final synthetic a:Lr3/f;


# direct methods
.method public synthetic constructor <init>(Lr3/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/o;->a:Lr3/f;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/window/layout/o;->a:Lr3/f;

    .line 3
    check-cast p1, Landroidx/window/layout/r;

    .line 5
    const-string v1, "info"

    .line 7
    invoke-static {p1, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {v0, p1}, Lr3/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    return-void
.end method
