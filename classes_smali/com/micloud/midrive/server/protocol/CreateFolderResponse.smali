.class public final enum Lcom/micloud/midrive/server/protocol/CreateFolderResponse;
.super Ljava/lang/Enum;
.source "CreateFolderResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/micloud/midrive/server/protocol/CreateFolderResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

.field public static final enum MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

.field public static final enum NAME_CONFLICT:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

.field public static final enum NAME_ILLEGAL_CHAR:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

.field public static final enum NAME_IS_PRIVATE_SPACE_NAME:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

.field public static final enum NETWORK_NOT_AVAILABLE:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

.field public static final enum NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

.field public static final enum OK:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

.field public static final enum OTHER:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

.field public static final enum PARAM_ERROR:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->OK:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    new-instance v1, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    const-string v3, "PARAM_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->PARAM_ERROR:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    new-instance v3, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    const-string v5, "NAME_ILLEGAL_CHAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NAME_ILLEGAL_CHAR:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    new-instance v5, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    const-string v7, "NAME_CONFLICT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NAME_CONFLICT:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    new-instance v7, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    const-string v9, "NAME_IS_PRIVATE_SPACE_NAME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NAME_IS_PRIVATE_SPACE_NAME:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    new-instance v9, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    const-string v11, "NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    new-instance v11, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    const-string v13, "NETWORK_NOT_AVAILABLE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NETWORK_NOT_AVAILABLE:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    new-instance v13, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    const-string v15, "MI_DRIVE_UNAVAILABLE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    new-instance v15, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    const-string v14, "OTHER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->OTHER:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->$VALUES:[Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

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

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/server/protocol/CreateFolderResponse;
    .registers 2

    const-class v0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/server/protocol/CreateFolderResponse;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->$VALUES:[Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    invoke-virtual {v0}, [Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    return-object v0
.end method
