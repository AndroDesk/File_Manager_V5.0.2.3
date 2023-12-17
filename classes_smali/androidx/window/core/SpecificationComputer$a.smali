.class public final Landroidx/window/core/SpecificationComputer$a;
.super Ljava/lang/Object;
.source "SpecificationComputer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/core/SpecificationComputer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroidx/window/core/SpecificationComputer$VerificationMode;)Lj1/e;
    .registers 4

    .line 1
    sget-object v0, Lj1/a;->a:Lj1/a;

    .line 3
    const-string v1, "<this>"

    .line 5
    invoke-static {p0, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const-string v1, "verificationMode"

    .line 10
    invoke-static {p1, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v1, Lj1/e;

    .line 15
    invoke-direct {v1, p0, p1, v0}, Lj1/e;-><init>(Ljava/lang/Object;Landroidx/window/core/SpecificationComputer$VerificationMode;Lj1/d;)V

    .line 18
    return-object v1
.end method
