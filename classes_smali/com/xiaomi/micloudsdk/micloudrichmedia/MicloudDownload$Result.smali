.class public final enum Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
.super Ljava/lang/Enum;
.source "MicloudDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum Cancel:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum DataCorrupted:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum Error:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum NeedRequest:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum NetTimeout:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum OK:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum ServerDenyReadOnly:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum SpaceOver:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum Unsupported:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->OK:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    new-instance v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v3, "Error"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->Error:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    new-instance v3, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v5, "Cancel"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->Cancel:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    new-instance v5, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v7, "NetTimeout"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->NetTimeout:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    new-instance v7, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v9, "NeedRequest"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->NeedRequest:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    new-instance v9, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v11, "DataCorrupted"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->DataCorrupted:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    new-instance v11, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v13, "SpaceOver"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->SpaceOver:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    new-instance v13, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v15, "ServerDenyReadOnly"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->ServerDenyReadOnly:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    new-instance v15, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v14, "Unsupported"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->Unsupported:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

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

    sput-object v14, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->$VALUES:[Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    .registers 2

    const-class v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    .registers 1

    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->$VALUES:[Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    invoke-virtual {v0}, [Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object v0
.end method
