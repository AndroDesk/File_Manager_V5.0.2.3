.class public final Lk0/e$d;
.super Lk0/e$c;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Lk0/e$a;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lk0/e$c;-><init>(Lk0/e$a;)V

    .line 4
    iput-boolean p2, p0, Lk0/e$d;->b:Z

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lk0/e$d;->b:Z

    .line 3
    return v0
.end method
