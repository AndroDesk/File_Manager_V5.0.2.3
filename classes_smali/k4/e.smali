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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lk4/j;Lm4/h;[CI)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lk4/b;-><init>(Lk4/j;Lm4/h;[CIZ)V

    return-void
.end method


# virtual methods
.method public final e(Lm4/h;[CZ)Lg4/c;
    .registers 4

    new-instance p1, Lk4/e$a;

    invoke-direct {p1}, Lk4/e$a;-><init>()V

    return-object p1
.end method
