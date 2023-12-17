.class public final enum Landroidx/window/core/SpecificationComputer$VerificationMode;
.super Ljava/lang/Enum;
.source "SpecificationComputer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/core/SpecificationComputer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerificationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/window/core/SpecificationComputer$VerificationMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LOG:Landroidx/window/core/SpecificationComputer$VerificationMode;

.field public static final enum QUIET:Landroidx/window/core/SpecificationComputer$VerificationMode;

.field public static final enum STRICT:Landroidx/window/core/SpecificationComputer$VerificationMode;

.field public static final synthetic a:[Landroidx/window/core/SpecificationComputer$VerificationMode;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 3
    const-string v1, "STRICT"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroidx/window/core/SpecificationComputer$VerificationMode;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Landroidx/window/core/SpecificationComputer$VerificationMode;->STRICT:Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 11
    new-instance v1, Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 13
    const-string v3, "LOG"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Landroidx/window/core/SpecificationComputer$VerificationMode;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Landroidx/window/core/SpecificationComputer$VerificationMode;->LOG:Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 21
    new-instance v3, Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 23
    const-string v5, "QUIET"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Landroidx/window/core/SpecificationComputer$VerificationMode;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Landroidx/window/core/SpecificationComputer$VerificationMode;->QUIET:Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 34
    aput-object v0, v5, v2

    .line 36
    aput-object v1, v5, v4

    .line 38
    aput-object v3, v5, v6

    .line 40
    sput-object v5, Landroidx/window/core/SpecificationComputer$VerificationMode;->a:[Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/window/core/SpecificationComputer$VerificationMode;
    .registers 2

    const-class v0, Landroidx/window/core/SpecificationComputer$VerificationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/window/core/SpecificationComputer$VerificationMode;

    return-object p0
.end method

.method public static values()[Landroidx/window/core/SpecificationComputer$VerificationMode;
    .registers 1

    sget-object v0, Landroidx/window/core/SpecificationComputer$VerificationMode;->a:[Landroidx/window/core/SpecificationComputer$VerificationMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/window/core/SpecificationComputer$VerificationMode;

    return-object v0
.end method
