.class public final enum Lcn/kuaipan/android/utils/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/kuaipan/android/utils/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BEGIN_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum BEGIN_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum BOOLEAN:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum NAME:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum NULL:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum NUMBER:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum STRING:Lcn/kuaipan/android/utils/JsonToken;

.field public static final synthetic a:[Lcn/kuaipan/android/utils/JsonToken;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcn/kuaipan/android/utils/JsonToken;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    new-instance v1, Lcn/kuaipan/android/utils/JsonToken;

    const-string v3, "END_ARRAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/kuaipan/android/utils/JsonToken;->END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    new-instance v3, Lcn/kuaipan/android/utils/JsonToken;

    const-string v5, "BEGIN_OBJECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    new-instance v5, Lcn/kuaipan/android/utils/JsonToken;

    const-string v7, "END_OBJECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/kuaipan/android/utils/JsonToken;->END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    new-instance v7, Lcn/kuaipan/android/utils/JsonToken;

    const-string v9, "NAME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/kuaipan/android/utils/JsonToken;->NAME:Lcn/kuaipan/android/utils/JsonToken;

    new-instance v9, Lcn/kuaipan/android/utils/JsonToken;

    const-string v11, "STRING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    new-instance v11, Lcn/kuaipan/android/utils/JsonToken;

    const-string v13, "NUMBER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    new-instance v13, Lcn/kuaipan/android/utils/JsonToken;

    const-string v15, "BOOLEAN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcn/kuaipan/android/utils/JsonToken;->BOOLEAN:Lcn/kuaipan/android/utils/JsonToken;

    new-instance v15, Lcn/kuaipan/android/utils/JsonToken;

    const-string v14, "NULL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcn/kuaipan/android/utils/JsonToken;->NULL:Lcn/kuaipan/android/utils/JsonToken;

    new-instance v14, Lcn/kuaipan/android/utils/JsonToken;

    const-string v12, "END_DOCUMENT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    const/16 v12, 0xa

    new-array v12, v12, [Lcn/kuaipan/android/utils/JsonToken;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcn/kuaipan/android/utils/JsonToken;->a:[Lcn/kuaipan/android/utils/JsonToken;

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

.method public static valueOf(Ljava/lang/String;)Lcn/kuaipan/android/utils/JsonToken;
    .registers 2

    const-class v0, Lcn/kuaipan/android/utils/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/kuaipan/android/utils/JsonToken;

    return-object p0
.end method

.method public static values()[Lcn/kuaipan/android/utils/JsonToken;
    .registers 1

    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->a:[Lcn/kuaipan/android/utils/JsonToken;

    invoke-virtual {v0}, [Lcn/kuaipan/android/utils/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuaipan/android/utils/JsonToken;

    return-object v0
.end method