.class public final Lm0/u;
.super Ljava/lang/Object;
.source "NestedScrollingParentHelper.java"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    iput p1, p0, Lm0/u;->b:I

    goto :goto_8

    :cond_6
    iput p1, p0, Lm0/u;->a:I

    :goto_8
    return-void
.end method
