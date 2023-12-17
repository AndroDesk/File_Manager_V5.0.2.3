.class public final Lk4/e;
.super Lk4/b;
.source "NoCipherInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk4/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk4/b<",
        "Lk4/e$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lk4/j;Lm4/h;[CI)V
    .registers 11

    .line 1
    const/4 v5, 0x1

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lk4/b;-><init>(Lk4/j;Lm4/h;[CIZ)V

    .line 10
    return-void
.end method


# virtual methods
.method public final e(Lm4/h;[CZ)Lg4/c;
    .registers 4

    .line 1
    new-instance p1, Lk4/e$a;

    .line 3
    invoke-direct {p1}, Lk4/e$a;-><init>()V

    .line 6
    return-object p1
.end method
