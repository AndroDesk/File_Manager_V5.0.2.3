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

    .line 1
    new-instance v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 3
    const-string v1, "NAME"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->NAME:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 11
    new-instance v1, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 13
    const-string v3, "SIZE"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->SIZE:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 21
    new-instance v3, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 23
    const-string v5, "MODIFY_TIME"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->MODIFY_TIME:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 31
    new-instance v5, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 33
    const-string v7, "FILE_TYPE"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->FILE_TYPE:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 44
    aput-object v0, v7, v2

    .line 46
    aput-object v1, v7, v4

    .line 48
    aput-object v3, v7, v6

    .line 50
    aput-object v5, v7, v8

    .line 52
    sput-object v7, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->$VALUES:[Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;
    .registers 2

    .line 1
    const-class v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->$VALUES:[Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 3
    invoke-virtual {v0}, [Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 9
    return-object v0
.end method
