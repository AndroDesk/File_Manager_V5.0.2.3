.class public final Lu3/a;
.super Ljava/lang/Object;
.source "ArrayQueue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x10

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lu3/a;->a:[Ljava/lang/Object;

    .line 10
    return-void
.end method
