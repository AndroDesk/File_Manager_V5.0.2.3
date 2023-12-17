.class public final Ll1/a;
.super Ljava/lang/Object;
.source "ServerMsgMap.java"


# static fields
.field public static a:Ls1/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/n<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    new-instance v0, Ls1/n;

    invoke-direct {v0}, Ls1/n;-><init>()V

    sput-object v0, Ll1/a;->a:Ls1/n;

    const/16 v0, 0xca

    const v1, 0x35c29

    const-string v2, "badEmailFormat"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c2a

    const-string v2, "sameEmailRegisteredBefore"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c2b

    const-string v2, "login fail"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c2c

    const-string v2, "bad openid"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c2d

    const-string v2, "wrong verification code"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c2e

    const-string v2, "cannot create app folder"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c37

    const-string v2, "pickupCodeNotSupport"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c38

    const-string v2, "pickupCodeTooLong"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c2f

    const-string v2, "file exist"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c30

    const-string v3, "file not exist"

    invoke-static {v0, v1, v3}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c31

    const-string v4, "tooManyFiles"

    invoke-static {v0, v1, v4}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c32

    const-string v4, "file too large"

    invoke-static {v0, v1, v4}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c33

    const-string v5, "over space"

    invoke-static {v0, v1, v5}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c3b

    const-string v6, "fnameTooLong"

    invoke-static {v0, v1, v6}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c34

    const-string v6, "commit fail"

    invoke-static {v0, v1, v6}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c35

    const-string v7, "forbidden"

    invoke-static {v0, v1, v7}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c36

    const-string v8, "account server error"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c39

    const-string v8, "shared"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35c3a

    const-string v8, "cannotBind"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const/16 v0, 0x190

    const v1, 0x3a981

    const-string v8, "bad parameters"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v8, 0x3a982

    const-string v9, "bad request"

    invoke-static {v0, v8, v9}, Ll1/a;->a(IILjava/lang/String;)V

    const v8, 0x3a983

    const-string v9, "no such api implemented"

    invoke-static {v0, v8, v9}, Ll1/a;->a(IILjava/lang/String;)V

    const-string v8, "clientBadParams"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a984

    const-string v8, "serverError"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a985

    const-string v8, "accountServerError"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a986

    const-string v8, "unknownError"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a987

    const-string v8, "requestFail"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a988

    const-string v8, "mobileExists"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a989

    const-string v8, "sendMsgError"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a98a

    const-string v8, "tooManyRequests"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a98b

    const-string v8, "tooOften"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a98c

    const-string v8, "invalidCode"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a98d

    const-string v8, "invalidMobile"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a98e

    const-string v8, "emptyPassword"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v8, 0x3a98f

    const-string v9, "passwordTooLong"

    invoke-static {v0, v8, v9}, Ll1/a;->a(IILjava/lang/String;)V

    const v8, 0x3a990

    const-string v9, "noSuchUser"

    invoke-static {v0, v8, v9}, Ll1/a;->a(IILjava/lang/String;)V

    const-string v8, "needPassword"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a991

    const-string v8, "canNotSetPassword"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a992

    const-string v8, "verifyNotRequest"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a994

    const-string v8, "expiredCode"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a993

    invoke-static {v0, v1, v3}, Ll1/a;->a(IILjava/lang/String;)V

    const/16 v0, 0x191

    const v1, 0x3a9e5

    const-string v8, "bad signature"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a9e6

    const-string v8, "reused nonce"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a9e7

    const-string v8, "bad consumer key"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a9e8

    const-string v8, "request expired"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a9e9

    const-string v8, "not supported auth mode"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a9ea

    const-string v8, "authorization expired"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a9eb

    const-string v8, "api daily limit"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a9ec

    const-string v8, "no right to call this api"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a9ed

    const-string v8, "bad verifier"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a9ee

    const-string v8, "authorization failed"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3a9ef

    const-string v8, "invalid token"

    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    const/16 v0, 0x193

    const v1, 0x3aaad

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x3aaae

    invoke-static {v0, v1, v7}, Ll1/a;->a(IILjava/lang/String;)V

    const/16 v0, 0x194

    const v1, 0x3ab11

    invoke-static {v0, v1, v3}, Ll1/a;->a(IILjava/lang/String;)V

    const/16 v0, 0x196

    const v1, 0x3abd9

    const-string v3, "too many files"

    invoke-static {v0, v1, v3}, Ll1/a;->a(IILjava/lang/String;)V

    const/16 v0, 0x19d

    const v1, 0x3ae95

    invoke-static {v0, v1, v4}, Ll1/a;->a(IILjava/lang/String;)V

    const/16 v0, 0x1f4

    const v1, 0x3d091

    const-string v3, "server error"

    invoke-static {v0, v1, v3}, Ll1/a;->a(IILjava/lang/String;)V

    const/16 v0, 0x1fb

    const v1, 0x3d34d

    invoke-static {v0, v1, v5}, Ll1/a;->a(IILjava/lang/String;)V

    const/16 v0, 0xc8

    const v1, 0x35b61

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b68

    invoke-static {v0, v1, v6}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b92

    const-string v2, "ERR_BAD_PARAMS"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b93

    const-string v2, "ERR_SERVER_EXCEPTION"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b94

    const-string v2, "ERR_INVALID_CUSTOMERID"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b95

    const-string v2, "ERR_INVALID_STOID"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b96

    const-string v2, "ERR_STORAGE_REQUEST_ERROR"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b97

    const-string v2, "ERR_STORAGE_REQUEST_FAILED"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b98

    const-string v2, "ERR_CHUNK_OUT_OF_RANGE"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b99

    const-string v2, "ERR_INVALID_UPLOAD_ID"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b9a

    const-string v2, "ERR_INVALID_CHUNK_POS"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b9b

    const-string v2, "ERR_INVALID_CHUNK_SIZE"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b9c

    const-string v2, "ERR_CHUNK_CORRUPTED"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b9d

    const-string v2, "ERR_BLOCK_CORRUPTED"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b9e

    const-string v2, "ERR_TOO_MANY_CURRENT_BLOCKS"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b9f

    const-string v2, "ERR_STORAGE_COMMIT_ERROR"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b69

    invoke-static {v0, v1, v7}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b6a

    invoke-static {v0, v1, v5}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b6b

    const-string v2, "targetNotExist"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b6c

    const-string v2, "get stub fail"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b6d

    const-string v2, "unsupportedCharRange"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b6e

    const-string v2, "dataOperationFailed"

    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    const v1, 0x35b6f

    invoke-static {v0, v1, v4}, Ll1/a;->a(IILjava/lang/String;)V

    return-void
.end method

.method public static a(IILjava/lang/String;)V
    .registers 4

    sget-object v0, Ll1/a;->a:Ls1/n;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p2, p1}, Ls1/n;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
