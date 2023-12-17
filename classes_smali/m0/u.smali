.class public final Lm0/u;
.super Ljava/lang/Object;
.source "NestedScrollingParentHelper.java"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_6

    .line 4
    iput p1, p0, Lm0/u;->b:I

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    iput p1, p0, Lm0/u;->a:I

    .line 9
    :goto_8
    return-void
.end method
