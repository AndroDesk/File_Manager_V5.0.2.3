.class public Lcom/xiaomi/keychainsdk/request/RequestAPI;
.super Ljava/lang/Object;
.source "RequestAPI.java"


# static fields
.field public static CREATE:Lcom/xiaomi/keychainsdk/request/RequestAPI; = null

.field public static GET_VERSION:Lcom/xiaomi/keychainsdk/request/RequestAPI; = null

.field private static final REQUEST_CREATE:Ljava/lang/String; = "https://keybag.id.mi.com/api/createMasterKey"

.field private static final REQUEST_CREATE_RESULT:Ljava/lang/String; = "https://keybag.id.mi.com/api/createMasterKeyResult"

.field private static final REQUEST_GET_VERSION:Ljava/lang/String; = "https://keybag.id.mi.com/api/getVersion"

.field private static final REQUEST_HOST:Ljava/lang/String; = "https://keybag.id.mi.com/api/"

.field private static final REQUEST_RESET:Ljava/lang/String; = "https://keybag.id.mi.com/api/resetMasterKey"

.field private static final REQUEST_RESET_RESULT:Ljava/lang/String; = "https://keybag.id.mi.com/api/resetMasterKeyResult"

.field private static final REQUEST_RESTORE:Ljava/lang/String; = "https://keybag.id.mi.com/api/restoreMasterKey"

.field private static final REQUEST_RESTORE_RESULT:Ljava/lang/String; = "https://keybag.id.mi.com/api/restoreMasterKeyResult"

.field private static final REQUEST_UPDATE:Ljava/lang/String; = "https://keybag.id.mi.com/api/changePasscode"

.field private static final REQUEST_UPDATE_RESULT:Ljava/lang/String; = "https://keybag.id.mi.com/api/changePasscodeResult"

.field public static RESET:Lcom/xiaomi/keychainsdk/request/RequestAPI;

.field public static RESTORE:Lcom/xiaomi/keychainsdk/request/RequestAPI;

.field public static UPDATE:Lcom/xiaomi/keychainsdk/request/RequestAPI;


# instance fields
.field public final requestUrl:Ljava/lang/String;

.field public final resultUrl:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;

    .line 3
    const-string v1, "https://keybag.id.mi.com/api/getVersion"

    .line 5
    const-string v2, ""

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/xiaomi/keychainsdk/request/RequestAPI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sput-object v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;->GET_VERSION:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    .line 12
    new-instance v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;

    .line 14
    const-string v1, "https://keybag.id.mi.com/api/createMasterKey"

    .line 16
    const-string v2, "https://keybag.id.mi.com/api/createMasterKeyResult"

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/xiaomi/keychainsdk/request/RequestAPI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sput-object v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;->CREATE:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    .line 23
    new-instance v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;

    .line 25
    const-string v1, "https://keybag.id.mi.com/api/restoreMasterKey"

    .line 27
    const-string v2, "https://keybag.id.mi.com/api/restoreMasterKeyResult"

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/xiaomi/keychainsdk/request/RequestAPI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sput-object v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;->RESTORE:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    .line 34
    new-instance v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;

    .line 36
    const-string v1, "https://keybag.id.mi.com/api/resetMasterKey"

    .line 38
    const-string v2, "https://keybag.id.mi.com/api/resetMasterKeyResult"

    .line 40
    invoke-direct {v0, v1, v2}, Lcom/xiaomi/keychainsdk/request/RequestAPI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sput-object v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;->RESET:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    .line 45
    new-instance v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;

    .line 47
    const-string v1, "https://keybag.id.mi.com/api/changePasscode"

    .line 49
    const-string v2, "https://keybag.id.mi.com/api/changePasscodeResult"

    .line 51
    invoke-direct {v0, v1, v2}, Lcom/xiaomi/keychainsdk/request/RequestAPI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sput-object v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;->UPDATE:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/request/RequestAPI;->requestUrl:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/xiaomi/keychainsdk/request/RequestAPI;->resultUrl:Ljava/lang/String;

    .line 8
    return-void
.end method
