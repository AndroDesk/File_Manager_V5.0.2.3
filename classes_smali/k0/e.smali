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

    new-instance v0, Lk0/e$d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk0/e$d;-><init>(Lk0/e$a;Z)V

    sput-object v0, Lk0/e;->a:Lk0/e$d;

    new-instance v0, Lk0/e$d;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lk0/e$d;-><init>(Lk0/e$a;Z)V

    sput-object v0, Lk0/e;->b:Lk0/e$d;

    new-instance v0, Lk0/e$d;

    sget-object v1, Lk0/e$a;->a:Lk0/e$a;

    invoke-direct {v0, v1, v2}, Lk0/e$d;-><init>(Lk0/e$a;Z)V

    sput-object v0, Lk0/e;->c:Lk0/e$d;

    new-instance v0, Lk0/e$d;

    invoke-direct {v0, v1, v3}, Lk0/e$d;-><init>(Lk0/e$a;Z)V

    sput-object v0, Lk0/e;->d:Lk0/e$d;

    return-void
.end method
