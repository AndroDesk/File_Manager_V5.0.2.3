.class public final enum Lorg/swiftp/ProxyConnector$State;
.super Ljava/lang/Enum;
.source "ProxyConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftp/ProxyConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/swiftp/ProxyConnector$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/swiftp/ProxyConnector$State;

.field public static final enum CONNECTED:Lorg/swiftp/ProxyConnector$State;

.field public static final enum CONNECTING:Lorg/swiftp/ProxyConnector$State;

.field public static final enum DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

.field public static final enum FAILED:Lorg/swiftp/ProxyConnector$State;

.field public static final enum UNREACHABLE:Lorg/swiftp/ProxyConnector$State;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    new-instance v0, Lorg/swiftp/ProxyConnector$State;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/swiftp/ProxyConnector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/swiftp/ProxyConnector$State;->CONNECTING:Lorg/swiftp/ProxyConnector$State;

    new-instance v1, Lorg/swiftp/ProxyConnector$State;

    const-string v3, "CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/swiftp/ProxyConnector$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/swiftp/ProxyConnector$State;->CONNECTED:Lorg/swiftp/ProxyConnector$State;

    new-instance v3, Lorg/swiftp/ProxyConnector$State;

    const-string v5, "FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/swiftp/ProxyConnector$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    new-instance v5, Lorg/swiftp/ProxyConnector$State;

    const-string v7, "UNREACHABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/swiftp/ProxyConnector$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/swiftp/ProxyConnector$State;->UNREACHABLE:Lorg/swiftp/ProxyConnector$State;

    new-instance v7, Lorg/swiftp/ProxyConnector$State;

    const-string v9, "DISCONNECTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/swiftp/ProxyConnector$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/swiftp/ProxyConnector$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/swiftp/ProxyConnector$State;->$VALUES:[Lorg/swiftp/ProxyConnector$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/swiftp/ProxyConnector$State;
    .registers 2

    const-class v0, Lorg/swiftp/ProxyConnector$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/swiftp/ProxyConnector$State;

    return-object p0
.end method

.method public static values()[Lorg/swiftp/ProxyConnector$State;
    .registers 1

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->$VALUES:[Lorg/swiftp/ProxyConnector$State;

    invoke-virtual {v0}, [Lorg/swiftp/ProxyConnector$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/swiftp/ProxyConnector$State;

    return-object v0
.end method
