.class public final enum Lorg/swiftp/SessionThread$Source;
.super Ljava/lang/Enum;
.source "SessionThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftp/SessionThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/swiftp/SessionThread$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/swiftp/SessionThread$Source;

.field public static final enum LOCAL:Lorg/swiftp/SessionThread$Source;

.field public static final enum PROXY:Lorg/swiftp/SessionThread$Source;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lorg/swiftp/SessionThread$Source;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/swiftp/SessionThread$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/swiftp/SessionThread$Source;->LOCAL:Lorg/swiftp/SessionThread$Source;

    new-instance v1, Lorg/swiftp/SessionThread$Source;

    const-string v3, "PROXY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/swiftp/SessionThread$Source;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/swiftp/SessionThread$Source;->PROXY:Lorg/swiftp/SessionThread$Source;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/swiftp/SessionThread$Source;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/swiftp/SessionThread$Source;->$VALUES:[Lorg/swiftp/SessionThread$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/swiftp/SessionThread$Source;
    .registers 2

    const-class v0, Lorg/swiftp/SessionThread$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/swiftp/SessionThread$Source;

    return-object p0
.end method

.method public static values()[Lorg/swiftp/SessionThread$Source;
    .registers 1

    sget-object v0, Lorg/swiftp/SessionThread$Source;->$VALUES:[Lorg/swiftp/SessionThread$Source;

    invoke-virtual {v0}, [Lorg/swiftp/SessionThread$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/swiftp/SessionThread$Source;

    return-object v0
.end method
