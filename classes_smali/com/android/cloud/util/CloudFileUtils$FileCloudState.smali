.class public final enum Lcom/android/cloud/util/CloudFileUtils$FileCloudState;
.super Ljava/lang/Enum;
.source "CloudFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/util/CloudFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileCloudState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/cloud/util/CloudFileUtils$FileCloudState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

.field public static final enum CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

.field public static final enum CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

.field public static final enum CLOUD_DOWNLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

.field public static final enum CLOUD_UPLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

.field public static final enum NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 3
    const-string v1, "NONE"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 11
    new-instance v1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 13
    const-string v3, "CLOUD"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 21
    new-instance v3, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 23
    const-string v5, "CLOUD_CACHED"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 31
    new-instance v5, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 33
    const-string v7, "CLOUD_DOWNLOADING"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_DOWNLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 41
    new-instance v7, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 43
    const-string v9, "CLOUD_UPLOADING"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_UPLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 51
    const/4 v9, 0x5

    .line 52
    new-array v9, v9, [Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 54
    aput-object v0, v9, v2

    .line 56
    aput-object v1, v9, v4

    .line 58
    aput-object v3, v9, v6

    .line 60
    aput-object v5, v9, v8

    .line 62
    aput-object v7, v9, v10

    .line 64
    sput-object v9, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->$VALUES:[Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 66
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/cloud/util/CloudFileUtils$FileCloudState;
    .registers 2

    .line 1
    const-class v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/cloud/util/CloudFileUtils$FileCloudState;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->$VALUES:[Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 3
    invoke-virtual {v0}, [Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 9
    return-object v0
.end method
