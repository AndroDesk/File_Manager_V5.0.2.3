.class public final synthetic Lj1/c$a;
.super Ljava/lang/Object;
.source "SpecificationComputer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Landroidx/window/core/SpecificationComputer$VerificationMode;->values()[Landroidx/window/core/SpecificationComputer$VerificationMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Landroidx/window/core/SpecificationComputer$VerificationMode;->STRICT:Landroidx/window/core/SpecificationComputer$VerificationMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Landroidx/window/core/SpecificationComputer$VerificationMode;->LOG:Landroidx/window/core/SpecificationComputer$VerificationMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Landroidx/window/core/SpecificationComputer$VerificationMode;->QUIET:Landroidx/window/core/SpecificationComputer$VerificationMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lj1/c$a;->a:[I

    return-void
.end method
