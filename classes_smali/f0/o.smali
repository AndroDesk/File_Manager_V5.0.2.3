.class public final Lf0/o;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Lf0/p$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf0/p$a<",
        "Lj0/m;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lj0/m;

    .line 3
    iget p1, p1, Lj0/m;->c:I

    .line 5
    return p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Lj0/m;

    .line 3
    iget-boolean p1, p1, Lj0/m;->d:Z

    .line 5
    return p1
.end method
