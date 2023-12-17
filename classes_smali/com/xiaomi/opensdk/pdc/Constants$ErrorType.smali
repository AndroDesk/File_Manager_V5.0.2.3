.class public final enum Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

.field public static final enum AUTH_FAILED:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

.field public static final enum NEED_RESYNC:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

.field public static final enum OK:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

.field public static final enum RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

.field public static final enum UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->OK:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    new-instance v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-string v3, "AUTH_FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->AUTH_FAILED:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    new-instance v3, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-string v5, "NEED_RESYNC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->NEED_RESYNC:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    new-instance v5, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-string v7, "RETRIABLE_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    new-instance v7, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-string v9, "UNRETRIABLE_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->$VALUES:[Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
    .registers 2

    const-class v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
    .registers 1

    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->$VALUES:[Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    invoke-virtual {v0}, [Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object v0
.end method
