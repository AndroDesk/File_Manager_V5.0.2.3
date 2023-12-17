.class final enum Lcn/kuaipan/android/utils/JsonScope;
.super Ljava/lang/Enum;
.source "JsonScope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/kuaipan/android/utils/JsonScope;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSED:Lcn/kuaipan/android/utils/JsonScope;

.field public static final enum DANGLING_NAME:Lcn/kuaipan/android/utils/JsonScope;

.field public static final enum EMPTY_ARRAY:Lcn/kuaipan/android/utils/JsonScope;

.field public static final enum EMPTY_DOCUMENT:Lcn/kuaipan/android/utils/JsonScope;

.field public static final enum EMPTY_OBJECT:Lcn/kuaipan/android/utils/JsonScope;

.field public static final enum NONEMPTY_ARRAY:Lcn/kuaipan/android/utils/JsonScope;

.field public static final enum NONEMPTY_DOCUMENT:Lcn/kuaipan/android/utils/JsonScope;

.field public static final enum NONEMPTY_OBJECT:Lcn/kuaipan/android/utils/JsonScope;

.field public static final synthetic a:[Lcn/kuaipan/android/utils/JsonScope;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lcn/kuaipan/android/utils/JsonScope;

    .line 3
    const-string v1, "EMPTY_ARRAY"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/utils/JsonScope;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcn/kuaipan/android/utils/JsonScope;->EMPTY_ARRAY:Lcn/kuaipan/android/utils/JsonScope;

    .line 11
    new-instance v1, Lcn/kuaipan/android/utils/JsonScope;

    .line 13
    const-string v3, "NONEMPTY_ARRAY"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcn/kuaipan/android/utils/JsonScope;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcn/kuaipan/android/utils/JsonScope;->NONEMPTY_ARRAY:Lcn/kuaipan/android/utils/JsonScope;

    .line 21
    new-instance v3, Lcn/kuaipan/android/utils/JsonScope;

    .line 23
    const-string v5, "EMPTY_OBJECT"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcn/kuaipan/android/utils/JsonScope;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcn/kuaipan/android/utils/JsonScope;->EMPTY_OBJECT:Lcn/kuaipan/android/utils/JsonScope;

    .line 31
    new-instance v5, Lcn/kuaipan/android/utils/JsonScope;

    .line 33
    const-string v7, "DANGLING_NAME"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcn/kuaipan/android/utils/JsonScope;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcn/kuaipan/android/utils/JsonScope;->DANGLING_NAME:Lcn/kuaipan/android/utils/JsonScope;

    .line 41
    new-instance v7, Lcn/kuaipan/android/utils/JsonScope;

    .line 43
    const-string v9, "NONEMPTY_OBJECT"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcn/kuaipan/android/utils/JsonScope;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcn/kuaipan/android/utils/JsonScope;->NONEMPTY_OBJECT:Lcn/kuaipan/android/utils/JsonScope;

    .line 51
    new-instance v9, Lcn/kuaipan/android/utils/JsonScope;

    .line 53
    const-string v11, "EMPTY_DOCUMENT"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcn/kuaipan/android/utils/JsonScope;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lcn/kuaipan/android/utils/JsonScope;->EMPTY_DOCUMENT:Lcn/kuaipan/android/utils/JsonScope;

    .line 61
    new-instance v11, Lcn/kuaipan/android/utils/JsonScope;

    .line 63
    const-string v13, "NONEMPTY_DOCUMENT"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcn/kuaipan/android/utils/JsonScope;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lcn/kuaipan/android/utils/JsonScope;->NONEMPTY_DOCUMENT:Lcn/kuaipan/android/utils/JsonScope;

    .line 71
    new-instance v13, Lcn/kuaipan/android/utils/JsonScope;

    .line 73
    const-string v15, "CLOSED"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lcn/kuaipan/android/utils/JsonScope;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Lcn/kuaipan/android/utils/JsonScope;->CLOSED:Lcn/kuaipan/android/utils/JsonScope;

    .line 81
    const/16 v15, 0x8

    .line 83
    new-array v15, v15, [Lcn/kuaipan/android/utils/JsonScope;

    .line 85
    aput-object v0, v15, v2

    .line 87
    aput-object v1, v15, v4

    .line 89
    aput-object v3, v15, v6

    .line 91
    aput-object v5, v15, v8

    .line 93
    aput-object v7, v15, v10

    .line 95
    aput-object v9, v15, v12

    .line 97
    const/4 v0, 0x6

    .line 98
    aput-object v11, v15, v0

    .line 100
    aput-object v13, v15, v14

    .line 102
    sput-object v15, Lcn/kuaipan/android/utils/JsonScope;->a:[Lcn/kuaipan/android/utils/JsonScope;

    .line 104
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

.method public static valueOf(Ljava/lang/String;)Lcn/kuaipan/android/utils/JsonScope;
    .registers 2

    .line 1
    const-class v0, Lcn/kuaipan/android/utils/JsonScope;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcn/kuaipan/android/utils/JsonScope;

    .line 9
    return-object p0
.end method

.method public static values()[Lcn/kuaipan/android/utils/JsonScope;
    .registers 1

    .line 1
    sget-object v0, Lcn/kuaipan/android/utils/JsonScope;->a:[Lcn/kuaipan/android/utils/JsonScope;

    .line 3
    invoke-virtual {v0}, [Lcn/kuaipan/android/utils/JsonScope;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcn/kuaipan/android/utils/JsonScope;

    .line 9
    return-object v0
.end method
