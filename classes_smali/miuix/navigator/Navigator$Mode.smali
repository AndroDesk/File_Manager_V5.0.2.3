.class public final enum Lmiuix/navigator/Navigator$Mode;
.super Ljava/lang/Enum;
.source "Navigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/Navigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiuix/navigator/Navigator$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiuix/navigator/Navigator$Mode;

.field public static final enum C:Lmiuix/navigator/Navigator$Mode;

.field public static final enum LC:Lmiuix/navigator/Navigator$Mode;

.field public static final enum NC:Lmiuix/navigator/Navigator$Mode;

.field public static final enum NLC:Lmiuix/navigator/Navigator$Mode;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lmiuix/navigator/Navigator$Mode;

    const-string v1, "C"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiuix/navigator/Navigator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    new-instance v1, Lmiuix/navigator/Navigator$Mode;

    const-string v3, "NC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmiuix/navigator/Navigator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    new-instance v3, Lmiuix/navigator/Navigator$Mode;

    const-string v5, "LC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmiuix/navigator/Navigator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmiuix/navigator/Navigator$Mode;->LC:Lmiuix/navigator/Navigator$Mode;

    new-instance v5, Lmiuix/navigator/Navigator$Mode;

    const-string v7, "NLC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lmiuix/navigator/Navigator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    const/4 v7, 0x4

    new-array v7, v7, [Lmiuix/navigator/Navigator$Mode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lmiuix/navigator/Navigator$Mode;->$VALUES:[Lmiuix/navigator/Navigator$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lmiuix/navigator/Navigator$Mode;
    .registers 2

    const-class v0, Lmiuix/navigator/Navigator$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiuix/navigator/Navigator$Mode;

    return-object p0
.end method

.method public static values()[Lmiuix/navigator/Navigator$Mode;
    .registers 1

    sget-object v0, Lmiuix/navigator/Navigator$Mode;->$VALUES:[Lmiuix/navigator/Navigator$Mode;

    invoke-virtual {v0}, [Lmiuix/navigator/Navigator$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiuix/navigator/Navigator$Mode;

    return-object v0
.end method
