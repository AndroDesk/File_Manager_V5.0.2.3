.class public final enum Lmiuix/navigator/Navigator$Zone;
.super Ljava/lang/Enum;
.source "Navigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/Navigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Zone"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiuix/navigator/Navigator$Zone;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiuix/navigator/Navigator$Zone;

.field public static final enum CONTENT:Lmiuix/navigator/Navigator$Zone;

.field public static final enum NAVIGATION:Lmiuix/navigator/Navigator$Zone;

.field public static final enum NORMAL:Lmiuix/navigator/Navigator$Zone;

.field public static final enum SECONDARY_CONTENT:Lmiuix/navigator/Navigator$Zone;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lmiuix/navigator/Navigator$Zone;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiuix/navigator/Navigator$Zone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/navigator/Navigator$Zone;->NORMAL:Lmiuix/navigator/Navigator$Zone;

    new-instance v1, Lmiuix/navigator/Navigator$Zone;

    const-string v3, "NAVIGATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmiuix/navigator/Navigator$Zone;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmiuix/navigator/Navigator$Zone;->NAVIGATION:Lmiuix/navigator/Navigator$Zone;

    new-instance v3, Lmiuix/navigator/Navigator$Zone;

    const-string v5, "CONTENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmiuix/navigator/Navigator$Zone;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmiuix/navigator/Navigator$Zone;->CONTENT:Lmiuix/navigator/Navigator$Zone;

    new-instance v5, Lmiuix/navigator/Navigator$Zone;

    const-string v7, "SECONDARY_CONTENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lmiuix/navigator/Navigator$Zone;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lmiuix/navigator/Navigator$Zone;->SECONDARY_CONTENT:Lmiuix/navigator/Navigator$Zone;

    const/4 v7, 0x4

    new-array v7, v7, [Lmiuix/navigator/Navigator$Zone;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lmiuix/navigator/Navigator$Zone;->$VALUES:[Lmiuix/navigator/Navigator$Zone;

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

.method public static valueOf(Ljava/lang/String;)Lmiuix/navigator/Navigator$Zone;
    .registers 2

    const-class v0, Lmiuix/navigator/Navigator$Zone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiuix/navigator/Navigator$Zone;

    return-object p0
.end method

.method public static values()[Lmiuix/navigator/Navigator$Zone;
    .registers 1

    sget-object v0, Lmiuix/navigator/Navigator$Zone;->$VALUES:[Lmiuix/navigator/Navigator$Zone;

    invoke-virtual {v0}, [Lmiuix/navigator/Navigator$Zone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiuix/navigator/Navigator$Zone;

    return-object v0
.end method
