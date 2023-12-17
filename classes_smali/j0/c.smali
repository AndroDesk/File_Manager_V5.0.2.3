.class public final Lj0/c;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"


# instance fields
.field public final a:La/b;

.field public final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lf0/i$a;Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/c;->a:La/b;

    iput-object p2, p0, Lj0/c;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lj0/k$a;)V
    .registers 5

    iget v0, p1, Lj0/k$a;->b:I

    if-nez v0, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_18

    iget-object p1, p1, Lj0/k$a;->a:Landroid/graphics/Typeface;

    iget-object v0, p0, Lj0/c;->a:La/b;

    iget-object v1, p0, Lj0/c;->b:Landroid/os/Handler;

    new-instance v2, Lj0/a;

    invoke-direct {v2, v0, p1}, Lj0/a;-><init>(La/b;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    :cond_18
    iget-object p1, p0, Lj0/c;->a:La/b;

    iget-object v1, p0, Lj0/c;->b:Landroid/os/Handler;

    new-instance v2, Lj0/b;

    invoke-direct {v2, p1, v0}, Lj0/b;-><init>(La/b;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_24
    return-void
.end method
