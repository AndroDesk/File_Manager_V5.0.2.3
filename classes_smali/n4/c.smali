.class public final Ln4/c;
.super Ljava/lang/Object;
.source "AbstractModifyFileTask.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lm4/g;",
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
    .registers 5

    .line 1
    check-cast p1, Lm4/g;

    .line 3
    check-cast p2, Lm4/g;

    .line 5
    iget-object v0, p1, Lm4/b;->k:Ljava/lang/String;

    .line 7
    iget-object v1, p2, Lm4/b;->k:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_1b

    .line 17
    :cond_10
    iget-wide v0, p1, Lm4/g;->w:J

    .line 19
    iget-wide p1, p2, Lm4/g;->w:J

    .line 21
    cmp-long p1, v0, p1

    .line 23
    if-gez p1, :cond_1a

    .line 25
    const/4 p1, -0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x1

    .line 28
    :goto_1b
    return p1
.end method
