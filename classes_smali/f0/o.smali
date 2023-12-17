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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lj0/m;

    iget p1, p1, Lj0/m;->c:I

    return p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lj0/m;

    iget-boolean p1, p1, Lj0/m;->d:Z

    return p1
.end method
