.class public final enum Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;
.super Ljava/lang/Enum;
.source "SyncDataFetchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

.field public static final enum FILE_TYPE:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

.field public static final enum MODIFY_TIME:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

.field public static final enum NAME:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

.field public static final enum SIZE:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    const-string v1, "NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->NAME:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    new-instance v1, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    const-string v3, "SIZE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->SIZE:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    new-instance v3, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    const-string v5, "MODIFY_TIME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->MODIFY_TIME:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    new-instance v5, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    const-string v7, "FILE_TYPE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->FILE_TYPE:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->$VALUES:[Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;
    .registers 2

    const-class v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->$VALUES:[Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    invoke-virtual {v0}, [Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    return-object v0
.end method
