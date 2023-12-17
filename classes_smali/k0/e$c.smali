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
.method public constructor <init>(Lk0/e$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lk0/e$c;->a:Lk0/e$b;

    .line 6
    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public final b(Ljava/lang/CharSequence;I)Z
    .registers 4

    .line 1
    if-eqz p1, :cond_24

    .line 3
    if-ltz p2, :cond_24

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 8
    move-result v0

    .line 9
    sub-int/2addr v0, p2

    .line 10
    if-ltz v0, :cond_24

    .line 12
    iget-object v0, p0, Lk0/e$c;->a:Lk0/e$b;

    .line 14
    if-nez v0, :cond_14

    .line 16
    invoke-virtual {p0}, Lk0/e$c;->a()Z

    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_14
    invoke-interface {v0, p1, p2}, Lk0/e$b;->a(Ljava/lang/CharSequence;I)I

    .line 24
    move-result p1

    .line 25
    const/4 p2, 0x1

    .line 26
    if-eqz p1, :cond_23

    .line 28
    if-eq p1, p2, :cond_22

    .line 30
    invoke-virtual {p0}, Lk0/e$c;->a()Z

    .line 33
    move-result p2

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 p2, 0x0

    .line 36
    :cond_23
    :goto_23
    return p2

    .line 37
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 42
    throw p1
.end method
