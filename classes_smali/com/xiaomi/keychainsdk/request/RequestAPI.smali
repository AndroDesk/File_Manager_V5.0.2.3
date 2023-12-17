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

    new-instance v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;

    const-string v1, "https://keybag.id.mi.com/api/getVersion"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/keychainsdk/request/RequestAPI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;->GET_VERSION:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    new-instance v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;

    const-string v1, "https://keybag.id.mi.com/api/createMasterKey"

    const-string v2, "https://keybag.id.mi.com/api/createMasterKeyResult"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/keychainsdk/request/RequestAPI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;->CREATE:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    new-instance v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;

    const-string v1, "https://keybag.id.mi.com/api/restoreMasterKey"

    const-string v2, "https://keybag.id.mi.com/api/restoreMasterKeyResult"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/keychainsdk/request/RequestAPI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;->RESTORE:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    new-instance v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;

    const-string v1, "https://keybag.id.mi.com/api/resetMasterKey"

    const-string v2, "https://keybag.id.mi.com/api/resetMasterKeyResult"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/keychainsdk/request/RequestAPI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;->RESET:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    new-instance v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;

    const-string v1, "https://keybag.id.mi.com/api/changePasscode"

    const-string v2, "https://keybag.id.mi.com/api/changePasscodeResult"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/keychainsdk/request/RequestAPI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/keychainsdk/request/RequestAPI;->UPDATE:Lcom/xiaomi/keychainsdk/request/RequestAPI;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/request/RequestAPI;->requestUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/keychainsdk/request/RequestAPI;->resultUrl:Ljava/lang/String;

    return-void
.end method
