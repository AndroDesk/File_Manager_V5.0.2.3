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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(IFFFF)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu/e$b;->a:I

    iput p5, p0, Lu/e$b;->b:F

    iput p3, p0, Lu/e$b;->c:F

    iput p2, p0, Lu/e$b;->d:F

    iput p4, p0, Lu/e$b;->e:F

    return-void
.end method
