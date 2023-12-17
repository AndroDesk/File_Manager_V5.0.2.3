.class public Lcom/fileexplorer/advert/config/NativeAdConst;
.super Ljava/lang/Object;
.source "NativeAdConst.java"


# static fields
.field public static final AD_CATEGORY_PLACE_STANDARD:I = 0x3

.field public static final AD_RECENT_PLACE_STANDARD_BOTTOM:I = 0xb

.field public static final AD_RECENT_PLACE_STANDARD_TOP:I = 0x5

.field public static final APP_CONFIG_KEY:Ljava/lang/String; = "miglobaladsdk_fileexplorer"

.field public static final APP_ID:Ljava/lang/String; = "20002"

.field public static final CATEGORY_POS_ID_NATIVE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AD_RESULT_TIMEOUT:J = 0x1f40L

.field public static final DEFAULT_CATEGORY_BACK_INTER_AD_MAX_COUNT:I = 0x2

.field public static final FILE_LIST_TYPE_GRID:I = 0x1

.field public static final FILE_LIST_TYPE_LIST:I = 0x0

.field public static final Filter_Ad_Slot_Boundaries:I = 0xc

.field public static final NATIVE_RECENT_FIRST_SCREEN:Ljava/lang/String; = "1.301.1.12"

.field public static final NATIVE_RECENT_SEC_SCREEN:Ljava/lang/String; = "1.301.1.13"

.field public static final POS_ID_CATEGORY_APK:Ljava/lang/String; = "1.301.1.11"

.field public static final POS_ID_CATEGORY_MUSIC:Ljava/lang/String; = "1.301.1.9"

.field public static final POS_ID_INTER_CATEGORY_BACK:Ljava/lang/String; = "1.301.17.7"

.field public static final POS_ID_INTER_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final POS_ID_NATIVE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECENT_POS_ID_NATIVE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/fileexplorer/advert/config/NativeAdConst;->POS_ID_NATIVE_MAP:Ljava/util/HashMap;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v1, Lcom/fileexplorer/advert/config/NativeAdConst;->RECENT_POS_ID_NATIVE_MAP:Ljava/util/HashMap;

    .line 15
    new-instance v2, Ljava/util/HashMap;

    .line 17
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 20
    sput-object v2, Lcom/fileexplorer/advert/config/NativeAdConst;->CATEGORY_POS_ID_NATIVE_MAP:Ljava/util/HashMap;

    .line 22
    new-instance v3, Ljava/util/HashMap;

    .line 24
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 27
    sput-object v3, Lcom/fileexplorer/advert/config/NativeAdConst;->POS_ID_INTER_MAP:Ljava/util/HashMap;

    .line 29
    const-string v4, "1.301.1.9"

    .line 31
    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v5, "1.301.1.11"

    .line 36
    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v6, "1.301.1.12"

    .line 41
    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v7, "1.301.1.13"

    .line 46
    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {v1, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v1, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {v2, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v2, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "1.301.17.7"

    .line 63
    invoke-virtual {v3, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
