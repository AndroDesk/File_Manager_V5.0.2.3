.class public final Lk0/e;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/e$d;,
        Lk0/e$b;,
        Lk0/e$a;,
        Lk0/e$c;
    }
.end annotation


# static fields
.field public static final a:Lk0/e$d;

.field public static final b:Lk0/e$d;

.field public static final c:Lk0/e$d;

.field public static final d:Lk0/e$d;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lk0/e$d;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lk0/e$d;-><init>(Lk0/e$a;Z)V

    .line 8
    sput-object v0, Lk0/e;->a:Lk0/e$d;

    .line 10
    new-instance v0, Lk0/e$d;

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v0, v1, v3}, Lk0/e$d;-><init>(Lk0/e$a;Z)V

    .line 16
    sput-object v0, Lk0/e;->b:Lk0/e$d;

    .line 18
    new-instance v0, Lk0/e$d;

    .line 20
    sget-object v1, Lk0/e$a;->a:Lk0/e$a;

    .line 22
    invoke-direct {v0, v1, v2}, Lk0/e$d;-><init>(Lk0/e$a;Z)V

    .line 25
    sput-object v0, Lk0/e;->c:Lk0/e$d;

    .line 27
    new-instance v0, Lk0/e$d;

    .line 29
    invoke-direct {v0, v1, v3}, Lk0/e$d;-><init>(Lk0/e$a;Z)V

    .line 32
    sput-object v0, Lk0/e;->d:Lk0/e$d;

    .line 34
    return-void
.end method
