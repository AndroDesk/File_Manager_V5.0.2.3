.class public final Lu/e$b;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:F

.field public c:F

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>(IFFFF)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lu/e$b;->a:I

    .line 6
    iput p5, p0, Lu/e$b;->b:F

    .line 8
    iput p3, p0, Lu/e$b;->c:F

    .line 10
    iput p2, p0, Lu/e$b;->d:F

    .line 12
    iput p4, p0, Lu/e$b;->e:F

    .line 14
    return-void
.end method
