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

    .line 1
    new-instance v0, Lcn/kuaipan/android/utils/JsonToken;

    .line 3
    const-string v1, "BEGIN_ARRAY"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    .line 11
    new-instance v1, Lcn/kuaipan/android/utils/JsonToken;

    .line 13
    const-string v3, "END_ARRAY"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcn/kuaipan/android/utils/JsonToken;->END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    .line 21
    new-instance v3, Lcn/kuaipan/android/utils/JsonToken;

    .line 23
    const-string v5, "BEGIN_OBJECT"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    .line 31
    new-instance v5, Lcn/kuaipan/android/utils/JsonToken;

    .line 33
    const-string v7, "END_OBJECT"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcn/kuaipan/android/utils/JsonToken;->END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    .line 41
    new-instance v7, Lcn/kuaipan/android/utils/JsonToken;

    .line 43
    const-string v9, "NAME"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcn/kuaipan/android/utils/JsonToken;->NAME:Lcn/kuaipan/android/utils/JsonToken;

    .line 51
    new-instance v9, Lcn/kuaipan/android/utils/JsonToken;

    .line 53
    const-string v11, "STRING"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    .line 61
    new-instance v11, Lcn/kuaipan/android/utils/JsonToken;

    .line 63
    const-string v13, "NUMBER"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    .line 71
    new-instance v13, Lcn/kuaipan/android/utils/JsonToken;

    .line 73
    const-string v15, "BOOLEAN"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Lcn/kuaipan/android/utils/JsonToken;->BOOLEAN:Lcn/kuaipan/android/utils/JsonToken;

    .line 81
    new-instance v15, Lcn/kuaipan/android/utils/JsonToken;

    .line 83
    const-string v14, "NULL"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v15, Lcn/kuaipan/android/utils/JsonToken;->NULL:Lcn/kuaipan/android/utils/JsonToken;

    .line 92
    new-instance v14, Lcn/kuaipan/android/utils/JsonToken;

    .line 94
    const-string v12, "END_DOCUMENT"

    .line 96
    const/16 v10, 0x9

    .line 98
    invoke-direct {v14, v12, v10}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v14, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    .line 103
    const/16 v12, 0xa

    .line 105
    new-array v12, v12, [Lcn/kuaipan/android/utils/JsonToken;

    .line 107
    aput-object v0, v12, v2

    .line 109
    aput-object v1, v12, v4

    .line 111
    aput-object v3, v12, v6

    .line 113
    aput-object v5, v12, v8

    .line 115
    const/4 v0, 0x4

    .line 116
    aput-object v7, v12, v0

    .line 118
    const/4 v0, 0x5

    .line 119
    aput-object v9, v12, v0

    .line 121
    const/4 v0, 0x6

    .line 122
    aput-object v11, v12, v0

    .line 124
    const/4 v0, 0x7

    .line 125
    aput-object v13, v12, v0

    .line 127
    const/16 v0, 0x8

    .line 129
    aput-object v15, v12, v0

    .line 131
    aput-object v14, v12, v10

    .line 133
    sput-object v12, Lcn/kuaipan/android/utils/JsonToken;->a:[Lcn/kuaipan/android/utils/JsonToken;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcn/kuaipan/android/utils/JsonToken;
    .registers 2

    .line 1
    const-class v0, Lcn/kuaipan/android/utils/JsonToken;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcn/kuaipan/android/utils/JsonToken;

    .line 9
    return-object p0
.end method

.method public static values()[Lcn/kuaipan/android/utils/JsonToken;
    .registers 1

    .line 1
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->a:[Lcn/kuaipan/android/utils/JsonToken;

    .line 3
    invoke-virtual {v0}, [Lcn/kuaipan/android/utils/JsonToken;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcn/kuaipan/android/utils/JsonToken;

    .line 9
    return-object v0
.end method
