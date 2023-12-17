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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lk0/e$a;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lk0/e$c;-><init>(Lk0/e$a;)V

    iput-boolean p2, p0, Lk0/e$d;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lk0/e$d;->b:Z

    return v0
.end method
