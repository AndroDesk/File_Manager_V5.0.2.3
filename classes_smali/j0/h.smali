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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lj0/c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lj0/h;->a:Lj0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lj0/k$a;

    if-nez p1, :cond_a

    new-instance p1, Lj0/k$a;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, Lj0/k$a;-><init>(I)V

    :cond_a
    iget-object v0, p0, Lj0/h;->a:Lj0/c;

    invoke-virtual {v0, p1}, Lj0/c;->a(Lj0/k$a;)V

    return-void
.end method
