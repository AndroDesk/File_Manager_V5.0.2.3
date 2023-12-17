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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Landroidx/window/core/SpecificationComputer$VerificationMode;)Lj1/e;
    .registers 4

    sget-object v0, Lj1/a;->a:Lj1/a;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "verificationMode"

    invoke-static {p1, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lj1/e;

    invoke-direct {v1, p0, p1, v0}, Lj1/e;-><init>(Ljava/lang/Object;Landroidx/window/core/SpecificationComputer$VerificationMode;Lj1/d;)V

    return-object v1
.end method
