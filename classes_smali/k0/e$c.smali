.class public abstract Lk0/e$c;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"

# interfaces
.implements Lk0/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field public final a:Lk0/e$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lk0/e$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/e$c;->a:Lk0/e$b;

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public final b(Ljava/lang/CharSequence;I)Z
    .registers 4

    if-eqz p1, :cond_24

    if-ltz p2, :cond_24

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    if-ltz v0, :cond_24

    iget-object v0, p0, Lk0/e$c;->a:Lk0/e$b;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lk0/e$c;->a()Z

    move-result p1

    return p1

    :cond_14
    invoke-interface {v0, p1, p2}, Lk0/e$b;->a(Ljava/lang/CharSequence;I)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_23

    if-eq p1, p2, :cond_22

    invoke-virtual {p0}, Lk0/e$c;->a()Z

    move-result p2

    goto :goto_23

    :cond_22
    const/4 p2, 0x0

    :cond_23
    :goto_23
    return p2

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
