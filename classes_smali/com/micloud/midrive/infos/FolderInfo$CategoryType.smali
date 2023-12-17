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

    new-instance v0, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const-string v3, "All"

    invoke-direct {v0, v1, v2, v3}, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->ALL:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    new-instance v1, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    const-string v3, "IMAGE"

    const/4 v4, 0x1

    const-string v5, "Image"

    invoke-direct {v1, v3, v4, v5}, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->IMAGE:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    new-instance v3, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    const-string v5, "DOCUMENT"

    const/4 v6, 0x2

    const-string v7, "Document"

    invoke-direct {v3, v5, v6, v7}, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->DOCUMENT:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    new-instance v5, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    const-string v7, "MUSIC"

    const/4 v8, 0x3

    const-string v9, "Music"

    invoke-direct {v5, v7, v8, v9}, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->MUSIC:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    new-instance v7, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    const-string v9, "VIDEO"

    const/4 v10, 0x4

    const-string v11, "Video"

    invoke-direct {v7, v9, v10, v11}, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->VIDEO:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    new-instance v9, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    const-string v11, "NONE"

    const/4 v12, 0x5

    const-string v13, "None"

    invoke-direct {v9, v11, v12, v13}, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->NONE:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->$VALUES:[Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/infos/FolderInfo$CategoryType;
    .registers 2

    const-class v0, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/infos/FolderInfo$CategoryType;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->$VALUES:[Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    invoke-virtual {v0}, [Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    return-object v0
.end method
