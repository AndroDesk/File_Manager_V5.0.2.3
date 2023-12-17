.class public final enum Lcom/micloud/midrive/infos/FolderInfo$CategoryType;
.super Ljava/lang/Enum;
.source "FolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/FolderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CategoryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/micloud/midrive/infos/FolderInfo$CategoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

.field public static final enum ALL:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

.field public static final enum DOCUMENT:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

.field public static final enum IMAGE:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

.field public static final enum MUSIC:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

.field public static final enum NONE:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

.field public static final enum VIDEO:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    .line 1
    new-instance v0, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 3
    const-string v1, "ALL"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "All"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->ALL:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 13
    new-instance v1, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 15
    const-string v3, "IMAGE"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "Image"

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->IMAGE:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 25
    new-instance v3, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 27
    const-string v5, "DOCUMENT"

    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "Document"

    .line 32
    invoke-direct {v3, v5, v6, v7}, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    sput-object v3, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->DOCUMENT:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 37
    new-instance v5, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 39
    const-string v7, "MUSIC"

    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "Music"

    .line 44
    invoke-direct {v5, v7, v8, v9}, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    sput-object v5, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->MUSIC:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 49
    new-instance v7, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 51
    const-string v9, "VIDEO"

    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "Video"

    .line 56
    invoke-direct {v7, v9, v10, v11}, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    sput-object v7, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->VIDEO:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 61
    new-instance v9, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 63
    const-string v11, "NONE"

    .line 65
    const/4 v12, 0x5

    .line 66
    const-string v13, "None"

    .line 68
    invoke-direct {v9, v11, v12, v13}, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    sput-object v9, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->NONE:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 73
    const/4 v11, 0x6

    .line 74
    new-array v11, v11, [Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 76
    aput-object v0, v11, v2

    .line 78
    aput-object v1, v11, v4

    .line 80
    aput-object v3, v11, v6

    .line 82
    aput-object v5, v11, v8

    .line 84
    aput-object v7, v11, v10

    .line 86
    aput-object v9, v11, v12

    .line 88
    sput-object v11, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->$VALUES:[Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->id:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/infos/FolderInfo$CategoryType;
    .registers 2

    .line 1
    const-class v0, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/infos/FolderInfo$CategoryType;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->$VALUES:[Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 3
    invoke-virtual {v0}, [Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 9
    return-object v0
.end method
