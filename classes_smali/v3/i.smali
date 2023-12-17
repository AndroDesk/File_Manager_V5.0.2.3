.class public final Lv3/i;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Lv3/h;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lv3/i;->a:I

    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final b()I
    .registers 2

    .line 1
    iget v0, p0, Lv3/i;->a:I

    .line 3
    return v0
.end method
