.class public final synthetic Lc1/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/k;


# instance fields
.field public final synthetic a:Lc1/c;


# direct methods
.method public synthetic constructor <init>(Lc1/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/b;->a:Lc1/c;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lc1/b;->a:Lc1/c;

    .line 3
    const-string v0, "this$0"

    .line 5
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 10
    if-ne p2, v0, :cond_f

    .line 12
    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p1, Lc1/c;->f:Z

    .line 15
    goto :goto_16

    .line 16
    :cond_f
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 18
    if-ne p2, v0, :cond_16

    .line 20
    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p1, Lc1/c;->f:Z

    .line 23
    :cond_16
    :goto_16
    return-void
.end method
