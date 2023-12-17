.class public final enum Lcn/kuaipan/kss/KssDef$NetState;
.super Ljava/lang/Enum;
.source "KssDef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/kuaipan/kss/KssDef$NetState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MOBILE:Lcn/kuaipan/kss/KssDef$NetState;

.field public static final enum UNKNOWN:Lcn/kuaipan/kss/KssDef$NetState;

.field public static final enum Wifi:Lcn/kuaipan/kss/KssDef$NetState;

.field public static final synthetic a:[Lcn/kuaipan/kss/KssDef$NetState;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcn/kuaipan/kss/KssDef$NetState;

    const-string v1, "Wifi"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/kss/KssDef$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDef$NetState;->Wifi:Lcn/kuaipan/kss/KssDef$NetState;

    new-instance v1, Lcn/kuaipan/kss/KssDef$NetState;

    const-string v3, "UNKNOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/kuaipan/kss/KssDef$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/kuaipan/kss/KssDef$NetState;->UNKNOWN:Lcn/kuaipan/kss/KssDef$NetState;

    new-instance v3, Lcn/kuaipan/kss/KssDef$NetState;

    const-string v5, "MOBILE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/kuaipan/kss/KssDef$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/kuaipan/kss/KssDef$NetState;->MOBILE:Lcn/kuaipan/kss/KssDef$NetState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/kuaipan/kss/KssDef$NetState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcn/kuaipan/kss/KssDef$NetState;->a:[Lcn/kuaipan/kss/KssDef$NetState;

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

.method public static valueOf(Ljava/lang/String;)Lcn/kuaipan/kss/KssDef$NetState;
    .registers 2

    const-class v0, Lcn/kuaipan/kss/KssDef$NetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/kuaipan/kss/KssDef$NetState;

    return-object p0
.end method

.method public static values()[Lcn/kuaipan/kss/KssDef$NetState;
    .registers 1

    sget-object v0, Lcn/kuaipan/kss/KssDef$NetState;->a:[Lcn/kuaipan/kss/KssDef$NetState;

    invoke-virtual {v0}, [Lcn/kuaipan/kss/KssDef$NetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuaipan/kss/KssDef$NetState;

    return-object v0
.end method
