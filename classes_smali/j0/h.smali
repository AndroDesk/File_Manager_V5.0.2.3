.class public final Lj0/h;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Ll0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll0/a<",
        "Lj0/k$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lj0/c;


# direct methods
.method public constructor <init>(Lj0/c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lj0/h;->a:Lj0/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lj0/k$a;

    .line 3
    if-nez p1, :cond_a

    .line 5
    new-instance p1, Lj0/k$a;

    .line 7
    const/4 v0, -0x3

    .line 8
    invoke-direct {p1, v0}, Lj0/k$a;-><init>(I)V

    .line 11
    :cond_a
    iget-object v0, p0, Lj0/h;->a:Lj0/c;

    .line 13
    invoke-virtual {v0, p1}, Lj0/c;->a(Lj0/k$a;)V

    .line 16
    return-void
.end method
