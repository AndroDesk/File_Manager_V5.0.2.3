.class public final enum Lcom/android/cloud/session/SyncResult$ResultCode;
.super Ljava/lang/Enum;
.source "SyncResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/session/SyncResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/cloud/session/SyncResult$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/cloud/session/SyncResult$ResultCode;

.field public static final enum RESULT_CODE_CANCELED:Lcom/android/cloud/session/SyncResult$ResultCode;

.field public static final enum RESULT_CODE_FAILED:Lcom/android/cloud/session/SyncResult$ResultCode;

.field public static final enum RESULT_CODE_SUCCESSED:Lcom/android/cloud/session/SyncResult$ResultCode;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/android/cloud/session/SyncResult$ResultCode;

    const-string v1, "RESULT_CODE_SUCCESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/cloud/session/SyncResult$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cloud/session/SyncResult$ResultCode;->RESULT_CODE_SUCCESSED:Lcom/android/cloud/session/SyncResult$ResultCode;

    new-instance v1, Lcom/android/cloud/session/SyncResult$ResultCode;

    const-string v3, "RESULT_CODE_CANCELED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/cloud/session/SyncResult$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/cloud/session/SyncResult$ResultCode;->RESULT_CODE_CANCELED:Lcom/android/cloud/session/SyncResult$ResultCode;

    new-instance v3, Lcom/android/cloud/session/SyncResult$ResultCode;

    const-string v5, "RESULT_CODE_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/cloud/session/SyncResult$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/cloud/session/SyncResult$ResultCode;->RESULT_CODE_FAILED:Lcom/android/cloud/session/SyncResult$ResultCode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/cloud/session/SyncResult$ResultCode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/cloud/session/SyncResult$ResultCode;->$VALUES:[Lcom/android/cloud/session/SyncResult$ResultCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/cloud/session/SyncResult$ResultCode;
    .registers 2

    const-class v0, Lcom/android/cloud/session/SyncResult$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/cloud/session/SyncResult$ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/android/cloud/session/SyncResult$ResultCode;
    .registers 1

    sget-object v0, Lcom/android/cloud/session/SyncResult$ResultCode;->$VALUES:[Lcom/android/cloud/session/SyncResult$ResultCode;

    invoke-virtual {v0}, [Lcom/android/cloud/session/SyncResult$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/cloud/session/SyncResult$ResultCode;

    return-object v0
.end method
