.class final enum Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;
.super Ljava/lang/Enum;
.source "WebViewClientDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/webkit/WebViewClientDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

.field public static final enum LOGIN_FINISHED:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

.field public static final enum LOGIN_INPROGRESS:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

.field public static final enum LOGIN_START:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 3
    const-string v1, "LOGIN_START"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_START:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 11
    new-instance v1, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 13
    const-string v3, "LOGIN_INPROGRESS"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_INPROGRESS:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 21
    new-instance v3, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 23
    const-string v5, "LOGIN_FINISHED"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_FINISHED:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 34
    aput-object v0, v5, v2

    .line 36
    aput-object v1, v5, v4

    .line 38
    aput-object v3, v5, v6

    .line 40
    sput-object v5, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->$VALUES:[Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;
    .registers 2

    .line 1
    const-class v0, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 9
    return-object p0
.end method

.method public static values()[Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->$VALUES:[Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 3
    invoke-virtual {v0}, [Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 9
    return-object v0
.end method
