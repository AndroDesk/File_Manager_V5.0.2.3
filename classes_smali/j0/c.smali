.class public final Lj0/c;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"


# instance fields
.field public final a:La/b;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lf0/i$a;Landroid/os/Handler;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lj0/c;->a:La/b;

    .line 6
    iput-object p2, p0, Lj0/c;->b:Landroid/os/Handler;

    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lj0/k$a;)V
    .registers 5

    .line 1
    iget v0, p1, Lj0/k$a;->b:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-eqz v1, :cond_18

    .line 10
    iget-object p1, p1, Lj0/k$a;->a:Landroid/graphics/Typeface;

    .line 12
    iget-object v0, p0, Lj0/c;->a:La/b;

    .line 14
    iget-object v1, p0, Lj0/c;->b:Landroid/os/Handler;

    .line 16
    new-instance v2, Lj0/a;

    .line 18
    invoke-direct {v2, v0, p1}, Lj0/a;-><init>(La/b;Landroid/graphics/Typeface;)V

    .line 21
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    goto :goto_24

    .line 25
    :cond_18
    iget-object p1, p0, Lj0/c;->a:La/b;

    .line 27
    iget-object v1, p0, Lj0/c;->b:Landroid/os/Handler;

    .line 29
    new-instance v2, Lj0/b;

    .line 31
    invoke-direct {v2, p1, v0}, Lj0/b;-><init>(La/b;I)V

    .line 34
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    :goto_24
    return-void
.end method
