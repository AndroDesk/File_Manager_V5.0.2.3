.class public final Lu/d;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lu/e$b;",
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
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lu/e$b;

    .line 3
    check-cast p2, Lu/e$b;

    .line 5
    iget p1, p1, Lu/e$b;->a:I

    .line 7
    iget p2, p2, Lu/e$b;->a:I

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method
