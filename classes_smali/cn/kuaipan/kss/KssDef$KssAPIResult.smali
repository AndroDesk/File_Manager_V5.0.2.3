.class public final enum Lcn/kuaipan/kss/KssDef$KssAPIResult;
.super Ljava/lang/Enum;
.source "KssDef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/kuaipan/kss/KssDef$KssAPIResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Cancel:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field public static final enum DataCorrupted:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field public static final enum Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field public static final enum NeedRequest:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field public static final enum NetTimeout:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field public static final enum OK:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field public static final enum ServerDenyReadOnly:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field public static final enum SpaceOver:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field public static final synthetic a:[Lcn/kuaipan/kss/KssDef$KssAPIResult;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/kss/KssDef$KssAPIResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->OK:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    new-instance v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v3, "Error"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/kuaipan/kss/KssDef$KssAPIResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    new-instance v3, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v5, "Cancel"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/kuaipan/kss/KssDef$KssAPIResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Cancel:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    new-instance v5, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v7, "NetTimeout"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/kuaipan/kss/KssDef$KssAPIResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/kuaipan/kss/KssDef$KssAPIResult;->NetTimeout:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    new-instance v7, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v9, "NeedRequest"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/kuaipan/kss/KssDef$KssAPIResult;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/kuaipan/kss/KssDef$KssAPIResult;->NeedRequest:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    new-instance v9, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v11, "DataCorrupted"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/kuaipan/kss/KssDef$KssAPIResult;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/kuaipan/kss/KssDef$KssAPIResult;->DataCorrupted:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    new-instance v11, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v13, "SpaceOver"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcn/kuaipan/kss/KssDef$KssAPIResult;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcn/kuaipan/kss/KssDef$KssAPIResult;->SpaceOver:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    new-instance v13, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v15, "ServerDenyReadOnly"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcn/kuaipan/kss/KssDef$KssAPIResult;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcn/kuaipan/kss/KssDef$KssAPIResult;->ServerDenyReadOnly:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const/16 v15, 0x8

    new-array v15, v15, [Lcn/kuaipan/kss/KssDef$KssAPIResult;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:[Lcn/kuaipan/kss/KssDef$KssAPIResult;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 2

    const-class v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    return-object p0
.end method

.method public static values()[Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 1

    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:[Lcn/kuaipan/kss/KssDef$KssAPIResult;

    invoke-virtual {v0}, [Lcn/kuaipan/kss/KssDef$KssAPIResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuaipan/kss/KssDef$KssAPIResult;

    return-object v0
.end method
